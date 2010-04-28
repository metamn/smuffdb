require 'hpricot'

class Post < ActiveRecord::Base

  set_table_name 'wp_posts'
  set_primary_key 'ID'
  
  alias_attribute 'body', 'post_content'
  alias_attribute 'title', 'post_title'

  def hackit    
    @save = self.body
    begin
      # remove \n and \t from body
      self.body.gsub!(/\n/, '')
      self.body.gsub!(/\t/, '')
      
      @doc = Hpricot(self.body)
      
      # Swap first image to Descriere
      @doc.at('img').swap('<h3>Descriere</h3>')    
      
      # Getting the product name to save for faq title
      t = @doc.search('h3').entries[1].inner_html
      
      # Remove images
      @doc.search('h3').entries[1].swap('&nbsp;')
      @doc.search('img').remove
      @doc.search('table').remove
      @doc.search('a').remove
      @doc.search('strong').remove
      
      # Remove Shopping & Info
      @doc.search('ul').entries[2].search('li').remove #li
      @doc.search('ul').entries[2].swap('&nbsp;') #ul
      @doc.search('h3').entries[3].next.next.swap('&nbsp;') #div with links to shopping
      
      # Remove Voteaza
      @doc.search('h3').entries[4].next.swap('&nbsp;')
      
      # Replace Shopping & Info with faq
      @doc.search('h3').entries[3].swap("<h3>Intrebari frecvente</h3><div class='pane'>[faq summary #{t}][faq list #{t}][faq ask #{t}]</div>")
      
      # Replace Voteaza with Opinii
      @doc.search('h3').entries[4].swap('<h3>Opiniile cumparatorilor</h3><div class="pane">[starratingmulti id="1" ]<em>Numai utilizatorii inregistrati pot exprima opiniile.</em></div>')

      # Adding div.pane to Descriere
      t = @doc.search('h3').entries[0].next
      @doc.search('h3').entries[0].next.swap("<div class='pane'> #{t} </div>")
      
      # Adding div.pane to Proprietati, Folosire
      t = @doc.search('h3').entries[1].next_sibling.to_html
      @doc.search('h3').entries[1].next.swap("<div class='pane'> #{t} </div>")
      t = @doc.search('h3').entries[2].next_sibling.to_html
      @doc.search('h3').entries[2].next.swap("<div class='pane'> #{t} </div>")
      
      @doc.to_html
      
      # NOKOGIRI
      
      # remove all images
      #@html.css('img').remove
      
      # remove <!-- more -->
      
      # remove first h3
      #@html.css('h3').first.remove
      
      # remove <p images>
      #@html.css('p.images').remove
      
      # remove <table> with all lightbox image links
      #@html.css('table').remove
      
      # remove Iti place voteaza ...
      #@html.css('h3').last.next.remove
      #@html.css('h3').last.remove
      
      # remove Shopping & Info
    rescue
      @save
    end
  end
end
