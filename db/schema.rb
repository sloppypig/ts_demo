# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130204234913) do

  create_table "auths", :force => true do |t|
    t.text     "auth"
    t.integer  "topic_id"
    t.decimal  "weight"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "documents", :force => true do |t|
    t.integer  "index"
    t.text     "file_path"
    t.text     "auth"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.integer  "index"
    t.string   "word_1"
    t.string   "word_2"
    t.string   "word_3"
    t.string   "word_4"
    t.string   "word_5"
    t.string   "word_6"
    t.string   "word_7"
    t.string   "word_8"
    t.string   "word_9"
    t.string   "word_10"
    t.string   "word_11"
    t.string   "word_12"
    t.string   "word_13"
    t.string   "word_14"
    t.string   "word_15"
    t.string   "word_16"
    t.string   "word_17"
    t.string   "word_18"
    t.string   "word_19"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics_doc_drops", :force => true do |t|
    t.integer  "document_id"
    t.integer  "topic_id"
    t.decimal  "weight"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "topics_doc_drops", ["document_id"], :name => "document_id_ix"
  add_index "topics_doc_drops", ["topic_id"], :name => "topic_id_ix"

  create_table "words", :force => true do |t|
    t.text     "word"
    t.integer  "topic_id"
    t.integer  "count"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
