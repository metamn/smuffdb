# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091218131753) do

  create_table "wp_banner", :primary_key => "banner_id", :force => true do |t|
    t.string  "banner_clientname",  :limit => 100, :default => "",    :null => false
    t.string  "banner_clickurl",    :limit => 150, :default => "",    :null => false
    t.integer "banner_impurchased",                :default => 0,     :null => false
    t.integer "banner_startdate",                  :default => 0,     :null => false
    t.integer "banner_enddate",                    :default => 0,     :null => false
    t.boolean "banner_active",                     :default => false, :null => false
    t.integer "banner_clicks",                     :default => 0,     :null => false
    t.integer "banner_impressions",                :default => 0,     :null => false
    t.text    "banner_url",                                           :null => false
    t.string  "banner_size",        :limit => 10,  :default => "",    :null => false
    t.string  "banner_type",        :limit => 10,  :default => "",    :null => false
  end

  create_table "wp_canvas", :primary_key => "block_id", :force => true do |t|
    t.text    "block_name",                 :null => false
    t.text    "type",        :limit => 255, :null => false
    t.text    "zone",        :limit => 255, :null => false
    t.integer "position",                   :null => false
    t.text    "author",      :limit => 255, :null => false
    t.text    "description",                :null => false
    t.text    "block_group", :limit => 255, :null => false
    t.text    "uri",                        :null => false
    t.text    "path",                       :null => false
    t.text    "theme",       :limit => 255, :null => false
    t.text    "ubi",                        :null => false
  end

  create_table "wp_canvas_var_options", :primary_key => "option_id", :force => true do |t|
    t.integer "var_id",       :null => false
    t.text    "option_text",  :null => false
    t.text    "option_value", :null => false
  end

  create_table "wp_canvas_variables", :primary_key => "variable_id", :force => true do |t|
    t.text    "variable_name", :null => false
    t.integer "parent",        :null => false
    t.text    "type",          :null => false
    t.text    "value",         :null => false
    t.text    "default_value", :null => false
    t.text    "description",   :null => false
  end

  create_table "wp_canvas_zone_options", :primary_key => "option_id", :force => true do |t|
    t.text "zone",        :null => false
    t.text "option_name", :null => false
    t.text "value",       :null => false
    t.text "theme",       :null => false
  end

  create_table "wp_ck_karma", :id => false, :force => true do |t|
    t.string "ck_comment_id", :limit => 10, :null => false
    t.binary "ck_ips",                      :null => false
    t.string "ck_rating",     :limit => 4,  :null => false
  end

  create_table "wp_commentmeta", :primary_key => "meta_id", :force => true do |t|
    t.integer "comment_id", :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "wp_commentmeta", ["comment_id"], :name => "comment_id"
  add_index "wp_commentmeta", ["meta_key"], :name => "meta_key"

  create_table "wp_comments", :primary_key => "comment_ID", :force => true do |t|
    t.integer  "comment_post_ID",      :limit => 8,   :default => 0,   :null => false
    t.text     "comment_author",       :limit => 255,                  :null => false
    t.string   "comment_author_email", :limit => 100, :default => "",  :null => false
    t.string   "comment_author_url",   :limit => 200, :default => "",  :null => false
    t.string   "comment_author_IP",    :limit => 100, :default => "",  :null => false
    t.datetime "comment_date",                                         :null => false
    t.datetime "comment_date_gmt",                                     :null => false
    t.text     "comment_content",                                      :null => false
    t.integer  "comment_karma",                       :default => 0,   :null => false
    t.string   "comment_approved",     :limit => 20,  :default => "1", :null => false
    t.string   "comment_agent",                       :default => "",  :null => false
    t.string   "comment_type",         :limit => 20,  :default => "",  :null => false
    t.integer  "comment_parent",       :limit => 8,   :default => 0,   :null => false
    t.integer  "user_id",              :limit => 8,   :default => 0,   :null => false
  end

  add_index "wp_comments", ["comment_approved", "comment_date_gmt"], :name => "comment_approved_date_gmt"
  add_index "wp_comments", ["comment_approved"], :name => "comment_approved"
  add_index "wp_comments", ["comment_content"], :name => "comment_content"
  add_index "wp_comments", ["comment_date_gmt"], :name => "comment_date_gmt"
  add_index "wp_comments", ["comment_post_ID"], :name => "comment_post_ID"

  create_table "wp_email", :primary_key => "email_id", :force => true do |t|
    t.string  "email_yourname",    :limit => 200, :default => "", :null => false
    t.string  "email_youremail",   :limit => 200, :default => "", :null => false
    t.text    "email_yourremarks",                                :null => false
    t.string  "email_friendname",  :limit => 200, :default => "", :null => false
    t.string  "email_friendemail", :limit => 200, :default => "", :null => false
    t.integer "email_postid",                     :default => 0,  :null => false
    t.text    "email_posttitle",                                  :null => false
    t.string  "email_timestamp",   :limit => 20,  :default => "", :null => false
    t.string  "email_ip",          :limit => 100, :default => "", :null => false
    t.string  "email_host",        :limit => 200, :default => "", :null => false
    t.string  "email_status",      :limit => 20,  :default => "", :null => false
  end

  create_table "wp_ig_caticons", :primary_key => "cat_id", :force => true do |t|
    t.text "icon",       :null => false
    t.text "small_icon", :null => false
  end

  create_table "wp_ink", :primary_key => "element_id", :force => true do |t|
    t.text "element",     :null => false
    t.text "theme",       :null => false
    t.text "color",       :null => false
    t.text "background",  :null => false
    t.text "border",      :null => false
    t.text "font_family", :null => false
    t.text "font_size",   :null => false
    t.text "font_style",  :null => false
    t.text "other",       :null => false
  end

  create_table "wp_kiwi", :id => false, :force => true do |t|
    t.text "name",        :null => false
    t.text "value",       :null => false
    t.text "description", :null => false
  end

  create_table "wp_links", :primary_key => "link_id", :force => true do |t|
    t.string   "link_url",                             :default => "",  :null => false
    t.string   "link_name",                            :default => "",  :null => false
    t.string   "link_image",                           :default => "",  :null => false
    t.string   "link_target",      :limit => 25,       :default => "",  :null => false
    t.integer  "link_category",    :limit => 8,        :default => 0,   :null => false
    t.string   "link_description",                     :default => "",  :null => false
    t.string   "link_visible",     :limit => 20,       :default => "Y", :null => false
    t.integer  "link_owner",       :limit => 8,        :default => 1,   :null => false
    t.integer  "link_rating",                          :default => 0,   :null => false
    t.datetime "link_updated",                                          :null => false
    t.string   "link_rel",                             :default => "",  :null => false
    t.text     "link_notes",       :limit => 16777215,                  :null => false
    t.string   "link_rss",                             :default => "",  :null => false
  end

  add_index "wp_links", ["link_category"], :name => "link_category"
  add_index "wp_links", ["link_visible"], :name => "link_visible"

  create_table "wp_liveshoutbox", :force => true do |t|
    t.integer "time", :limit => 8,   :default => 0, :null => false
    t.text    "name", :limit => 255,                :null => false
    t.text    "text",                               :null => false
    t.text    "url",                                :null => false
  end

  add_index "wp_liveshoutbox", ["id"], :name => "id", :unique => true

  create_table "wp_options", :primary_key => "option_id", :force => true do |t|
    t.integer "blog_id",                            :default => 0,     :null => false
    t.string  "option_name",  :limit => 64,         :default => "",    :null => false
    t.text    "option_value", :limit => 2147483647,                    :null => false
    t.string  "autoload",     :limit => 20,         :default => "yes", :null => false
  end

  add_index "wp_options", ["option_name"], :name => "option_name", :unique => true

  create_table "wp_photopress", :force => true do |t|
    t.string "imgfile", :limit => 100, :null => false
    t.string "imgname", :limit => 55
    t.text   "imgdesc"
    t.string "catslug", :limit => 55
    t.string "catsort", :limit => 55
    t.string "imgtags"
    t.string "imghide", :limit => 55
    t.string "imgtime", :limit => 55
  end

  add_index "wp_photopress", ["id"], :name => "id", :unique => true

  create_table "wp_pollsa", :primary_key => "polla_aid", :force => true do |t|
    t.integer "polla_qid",                    :default => 0,  :null => false
    t.string  "polla_answers", :limit => 200, :default => "", :null => false
    t.integer "polla_votes",                  :default => 0,  :null => false
  end

  create_table "wp_pollsip", :primary_key => "pollip_id", :force => true do |t|
    t.string  "pollip_qid",       :limit => 10,  :default => "",                    :null => false
    t.string  "pollip_aid",       :limit => 10,  :default => "",                    :null => false
    t.string  "pollip_ip",        :limit => 100, :default => "",                    :null => false
    t.string  "pollip_host",      :limit => 200, :default => "",                    :null => false
    t.string  "pollip_timestamp", :limit => 20,  :default => "0000-00-00 00:00:00", :null => false
    t.text    "pollip_user",      :limit => 255,                                    :null => false
    t.integer "pollip_userid",                   :default => 0,                     :null => false
  end

  create_table "wp_pollsq", :primary_key => "pollq_id", :force => true do |t|
    t.string  "pollq_question",   :limit => 200, :default => "",   :null => false
    t.string  "pollq_timestamp",  :limit => 20,  :default => "",   :null => false
    t.integer "pollq_totalvotes",                :default => 0,    :null => false
    t.boolean "pollq_active",                    :default => true, :null => false
  end

  create_table "wp_post2tag", :primary_key => "rel_id", :force => true do |t|
    t.integer "tag_id",                   :default => 0, :null => false
    t.integer "post_id",                  :default => 0, :null => false
    t.string  "ip_address", :limit => 15
  end

  create_table "wp_postmeta", :primary_key => "meta_id", :force => true do |t|
    t.integer "post_id",    :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "wp_postmeta", ["meta_key"], :name => "meta_key"
  add_index "wp_postmeta", ["post_id"], :name => "post_id"

  create_table "wp_posts", :primary_key => "ID", :force => true do |t|
    t.integer  "post_author",           :limit => 8,          :default => 0,         :null => false
    t.datetime "post_date",                                                          :null => false
    t.datetime "post_date_gmt",                                                      :null => false
    t.text     "post_content",          :limit => 2147483647,                        :null => false
    t.text     "post_title",                                                         :null => false
    t.integer  "post_category",                               :default => 0,         :null => false
    t.text     "post_excerpt",                                                       :null => false
    t.string   "post_status",           :limit => 20,         :default => "publish", :null => false
    t.string   "comment_status",        :limit => 20,         :default => "open",    :null => false
    t.string   "ping_status",           :limit => 20,         :default => "open",    :null => false
    t.string   "post_password",         :limit => 20,         :default => "",        :null => false
    t.string   "post_name",             :limit => 200,        :default => "",        :null => false
    t.text     "to_ping",                                                            :null => false
    t.text     "pinged",                                                             :null => false
    t.datetime "post_modified",                                                      :null => false
    t.datetime "post_modified_gmt",                                                  :null => false
    t.text     "post_content_filtered",                                              :null => false
    t.integer  "post_parent",           :limit => 8,          :default => 0,         :null => false
    t.string   "guid",                                        :default => "",        :null => false
    t.integer  "menu_order",                                  :default => 0,         :null => false
    t.string   "post_type",             :limit => 20,         :default => "post",    :null => false
    t.string   "post_mime_type",        :limit => 100,        :default => "",        :null => false
    t.integer  "comment_count",         :limit => 8,          :default => 0,         :null => false
  end

  add_index "wp_posts", ["post_name"], :name => "post_name"
  add_index "wp_posts", ["post_parent"], :name => "post_parent"
  add_index "wp_posts", ["post_status"], :name => "post_status"
  add_index "wp_posts", ["post_title", "post_content"], :name => "post_title"
  add_index "wp_posts", ["post_type", "post_status", "post_date", "ID"], :name => "type_status_date"

  create_table "wp_pp_cats", :force => true do |t|
    t.string "catslug",  :limit => 55, :null => false
    t.string "category", :limit => 55
    t.string "catrep"
    t.string "catsort",  :limit => 55
    t.string "hidden",   :limit => 55
  end

  add_index "wp_pp_cats", ["id"], :name => "id", :unique => true

  create_table "wp_psr_post", :primary_key => "ID", :force => true do |t|
    t.integer "votes",  :default => 0, :null => false
    t.integer "points", :default => 0, :null => false
  end

  create_table "wp_psr_user", :id => false, :force => true do |t|
    t.string   "user",      :limit => 32, :default => "", :null => false
    t.integer  "post",      :limit => 8,  :default => 0,  :null => false
    t.integer  "points",                  :default => 0,  :null => false
    t.string   "ip",        :limit => 15,                 :null => false
    t.datetime "vote_date",                               :null => false
  end

  add_index "wp_psr_user", ["vote_date"], :name => "vote_date"

  create_table "wp_ratings", :primary_key => "rating_id", :force => true do |t|
    t.integer "rating_postid",                                  :null => false
    t.text    "rating_posttitle",                               :null => false
    t.integer "rating_rating",                                  :null => false
    t.string  "rating_timestamp", :limit => 15,                 :null => false
    t.string  "rating_ip",        :limit => 40,                 :null => false
    t.string  "rating_host",      :limit => 200,                :null => false
    t.string  "rating_username",  :limit => 50,                 :null => false
    t.integer "rating_userid",                   :default => 0, :null => false
  end

  create_table "wp_rs_discuss_forums", :force => true do |t|
    t.text    "name",                                           :null => false
    t.text    "description",                                    :null => false
    t.string  "nicename",       :limit => 200,                  :null => false
    t.integer "recent_post_id", :limit => 8,   :default => 0,   :null => false
    t.integer "sort_order",     :limit => 8,   :default => 0,   :null => false
    t.integer "topic_count",    :limit => 8,   :default => 0,   :null => false
    t.integer "post_count",     :limit => 8,   :default => 0,   :null => false
    t.string  "is_locked",      :limit => 0,   :default => "0", :null => false
  end

  add_index "wp_rs_discuss_forums", ["nicename"], :name => "nicename"

  create_table "wp_rs_discuss_posts", :force => true do |t|
    t.integer  "topic_id",  :limit => 8,                         :null => false
    t.integer  "topic_seq", :limit => 8,          :default => 1, :null => false
    t.integer  "forum_id",  :limit => 8,                         :null => false
    t.integer  "author_id", :limit => 8,                         :null => false
    t.text     "content",   :limit => 2147483647,                :null => false
    t.datetime "date",                                           :null => false
    t.string   "author_ip", :limit => 15,                        :null => false
  end

  add_index "wp_rs_discuss_posts", ["author_id"], :name => "author_id"
  add_index "wp_rs_discuss_posts", ["content"], :name => "content"
  add_index "wp_rs_discuss_posts", ["forum_id"], :name => "forum_id"
  add_index "wp_rs_discuss_posts", ["topic_id"], :name => "topic_id"

  create_table "wp_rs_discuss_topics", :force => true do |t|
    t.integer "forum_id",         :limit => 8,                  :null => false
    t.text    "subject",                                        :null => false
    t.integer "creation_post_id", :limit => 8,                  :null => false
    t.integer "recent_post_id",   :limit => 8,                  :null => false
    t.integer "post_count",       :limit => 8, :default => 1,   :null => false
    t.string  "is_pinned",        :limit => 0, :default => "0", :null => false
    t.string  "is_locked",        :limit => 0, :default => "0", :null => false
  end

  add_index "wp_rs_discuss_topics", ["forum_id"], :name => "forum_id"
  add_index "wp_rs_discuss_topics", ["subject"], :name => "subject"

  create_table "wp_sayfa_sayac_21", :primary_key => "post", :force => true do |t|
    t.integer  "sayac_toplam",        :default => 0, :null => false
    t.integer  "sayac_bugun",         :default => 0, :null => false
    t.integer  "anlik_en_fazla_kisi", :default => 0, :null => false
    t.datetime "son_okuma",                          :null => false
  end

  create_table "wp_sayfa_sayac_now_21", :id => false, :force => true do |t|
    t.integer "post",  :limit => 8,  :default => 0,  :null => false
    t.integer "tarih",               :default => 0,  :null => false
    t.string  "ip",    :limit => 40, :default => "", :null => false
  end

  create_table "wp_sayfa_sayac_stat_21", :id => false, :force => true do |t|
    t.date    "tarih",                                           :null => false
    t.integer "post",                :limit => 8, :default => 0, :null => false
    t.integer "okunma",                           :default => 0, :null => false
    t.integer "anlik_en_fazla_kisi",              :default => 0, :null => false
  end

  create_table "wp_searchmeter", :id => false, :force => true do |t|
    t.string  "terms",     :limit => 50, :null => false
    t.date    "date",                    :null => false
    t.integer "count",                   :null => false
    t.integer "last_hits",               :null => false
  end

  create_table "wp_searchmeter_recent", :id => false, :force => true do |t|
    t.string   "terms",    :limit => 50, :null => false
    t.datetime "datetime",               :null => false
    t.integer  "hits",                   :null => false
    t.text     "details",                :null => false
  end

  add_index "wp_searchmeter_recent", ["datetime"], :name => "datetimeindex"

  create_table "wp_sfforums", :primary_key => "forum_id", :force => true do |t|
    t.string  "forum_name", :limit => 75
    t.integer "group_id",   :limit => 8,   :null => false
    t.integer "forum_seq"
    t.string  "forum_desc", :limit => 150
  end

  create_table "wp_sfgroups", :primary_key => "group_id", :force => true do |t|
    t.string  "group_name", :limit => 50
    t.integer "group_seq"
  end

  create_table "wp_sfposts", :primary_key => "post_id", :force => true do |t|
    t.text     "post_content"
    t.datetime "post_date",                                 :null => false
    t.integer  "topic_id",     :limit => 8,                 :null => false
    t.integer  "user_id",      :limit => 8
    t.integer  "forum_id",     :limit => 8,                 :null => false
    t.string   "guest_name",   :limit => 25
    t.string   "guest_email",  :limit => 50
    t.integer  "post_status",                :default => 0, :null => false
  end

  add_index "wp_sfposts", ["post_content"], :name => "post_content"

  create_table "wp_sftopics", :primary_key => "topic_id", :force => true do |t|
    t.string   "topic_name",   :limit => 100,                :null => false
    t.datetime "topic_date",                                 :null => false
    t.integer  "topic_status",                :default => 0, :null => false
    t.integer  "forum_id",     :limit => 8,                  :null => false
    t.integer  "user_id",      :limit => 8
    t.integer  "topic_pinned", :limit => 2,   :default => 0, :null => false
  end

  create_table "wp_sfwaiting", :primary_key => "topic_id", :force => true do |t|
    t.integer "forum_id",   :limit => 8,                :null => false
    t.integer "post_count",              :default => 0, :null => false
  end

  create_table "wp_tag_synonyms", :primary_key => "tagsynonymid", :force => true do |t|
    t.integer "tag_id",                 :default => 0,  :null => false
    t.string  "synonym", :limit => 150, :default => "", :null => false
  end

  create_table "wp_taggerati_tag_post", :id => false, :force => true do |t|
    t.integer "tag",  :null => false
    t.integer "post", :null => false
  end

  add_index "wp_taggerati_tag_post", ["tag", "post"], :name => "tag", :unique => true

  create_table "wp_taggerati_tag_rel", :id => false, :force => true do |t|
    t.integer "tag", :limit => 3, :null => false
    t.integer "rel", :limit => 3, :null => false
  end

  add_index "wp_taggerati_tag_rel", ["tag", "rel"], :name => "tag", :unique => true

  create_table "wp_taggerati_tags", :force => true do |t|
    t.string "tag", :limit => 100, :null => false
  end

  add_index "wp_taggerati_tags", ["id"], :name => "id", :unique => true

  create_table "wp_tags", :primary_key => "tag_ID", :force => true do |t|
    t.string "tag", :default => "", :null => false
  end

  create_table "wp_term_relationships", :id => false, :force => true do |t|
    t.integer "object_id",        :limit => 8, :default => 0, :null => false
    t.integer "term_taxonomy_id", :limit => 8, :default => 0, :null => false
    t.integer "term_order",                    :default => 0, :null => false
  end

  add_index "wp_term_relationships", ["term_taxonomy_id"], :name => "term_taxonomy_id"

  create_table "wp_term_taxonomy", :primary_key => "term_taxonomy_id", :force => true do |t|
    t.integer "term_id",     :limit => 8,          :default => 0,  :null => false
    t.string  "taxonomy",    :limit => 32,         :default => "", :null => false
    t.text    "description", :limit => 2147483647,                 :null => false
    t.integer "parent",      :limit => 8,          :default => 0,  :null => false
    t.integer "count",       :limit => 8,          :default => 0,  :null => false
  end

  add_index "wp_term_taxonomy", ["taxonomy"], :name => "taxonomy"
  add_index "wp_term_taxonomy", ["term_id", "taxonomy"], :name => "term_id_taxonomy", :unique => true

  create_table "wp_terms", :primary_key => "term_id", :force => true do |t|
    t.string  "name",       :limit => 200, :default => "", :null => false
    t.string  "slug",       :limit => 200, :default => "", :null => false
    t.integer "term_group", :limit => 8,   :default => 0,  :null => false
  end

  add_index "wp_terms", ["name"], :name => "name"
  add_index "wp_terms", ["slug"], :name => "slug", :unique => true

  create_table "wp_usermeta", :primary_key => "umeta_id", :force => true do |t|
    t.integer "user_id",    :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "wp_usermeta", ["meta_key"], :name => "meta_key"
  add_index "wp_usermeta", ["user_id"], :name => "user_id"

  create_table "wp_useronline", :id => false, :force => true do |t|
    t.integer "timestamp",                  :default => 0,       :null => false
    t.integer "userid",                     :default => 0,       :null => false
    t.string  "username",    :limit => 150, :default => "",      :null => false
    t.string  "displayname",                :default => "",      :null => false
    t.string  "useragent",                  :default => "",      :null => false
    t.string  "ip",          :limit => 40,  :default => "",      :null => false
    t.string  "location",                   :default => "",      :null => false
    t.string  "url",                        :default => "",      :null => false
    t.string  "type",        :limit => 0,   :default => "guest", :null => false
  end

  add_index "wp_useronline", ["timestamp", "username", "ip", "useragent"], :name => "useronline_id", :unique => true

  create_table "wp_users", :primary_key => "ID", :force => true do |t|
    t.string   "user_login",          :limit => 60,  :default => "", :null => false
    t.string   "user_pass",           :limit => 64,  :default => "", :null => false
    t.string   "user_nicename",       :limit => 50,  :default => "", :null => false
    t.string   "user_email",          :limit => 100, :default => "", :null => false
    t.string   "user_url",            :limit => 100, :default => "", :null => false
    t.datetime "user_registered",                                    :null => false
    t.string   "user_activation_key", :limit => 60,  :default => "", :null => false
    t.integer  "user_status",                        :default => 0,  :null => false
    t.string   "display_name",        :limit => 250, :default => "", :null => false
  end

  add_index "wp_users", ["user_login"], :name => "user_login_key"
  add_index "wp_users", ["user_nicename"], :name => "user_nicename"

  create_table "wp_vb_content", :id => false, :force => true do |t|
    t.string "source",       :limit => 2,   :default => "", :null => false
    t.string "videoid",      :limit => 45,  :default => "", :null => false
    t.string "title",        :limit => 100, :default => "", :null => false
    t.text   "description",                                 :null => false
    t.text   "miscinfo",                                    :null => false
    t.text   "videourl",                                    :null => false
    t.text   "thumbnailurl",                                :null => false
  end

end
