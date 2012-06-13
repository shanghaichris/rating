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

ActiveRecord::Schema.define(:version => 20120613151616) do

  create_table "answers", :force => true do |t|
    t.integer  "paper_id"
    t.integer  "option_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "answers", ["option_id"], :name => "index_answers_on_option_id"
  add_index "answers", ["paper_id"], :name => "index_answers_on_paper_id"

  create_table "options", :force => true do |t|
    t.string   "topic"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "papers", :force => true do |t|
    t.string   "collection_from"
    t.integer  "survey_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "papers", ["survey_id"], :name => "index_papers_on_survey_id"

  create_table "questions", :force => true do |t|
    t.string   "subject"
    t.boolean  "multi_options"
    t.integer  "survey_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
