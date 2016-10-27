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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161025232701) do

  create_table "league_profiles", force: :cascade do |t|
    t.string   "profileName"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "team_id"
    t.integer  "league_id"
    t.index ["league_id"], name: "index_league_profiles_on_league_id"
    t.index ["team_id"], name: "index_league_profiles_on_team_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "leagueName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.boolean  "injured"
    t.boolean  "sick"
    t.boolean  "suspended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "roster_systems", force: :cascade do |t|
    t.string   "name"
    t.integer  "numQuarterBacks"
    t.integer  "numRunningBacks"
    t.integer  "numWideReceivers"
    t.integer  "numTightEnds"
    t.integer  "numPlaceKickers"
    t.integer  "numSpecialTeams"
    t.integer  "numBench"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "scoring_systems", force: :cascade do |t|
    t.string   "name"
    t.float    "ptsPassing"
    t.float    "ptsRushing"
    t.float    "ptsReceiving"
    t.float    "ptsTD"
    t.float    "ptsTDPass"
    t.float    "ptslnterceptFumble"
    t.float    "ptsExtraPoint"
    t.float    "ptsTurnover"
    t.float    "ptsSack"
    t.float    "ptsSafety"
    t.float    "ptsBlockedKick"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "passingYards"
    t.integer  "rushingYards"
    t.integer  "receptions"
    t.integer  "touchdowns"
    t.integer  "touchdownPasses"
    t.integer  "intercepts_fumbles"
    t.integer  "extraPoints"
    t.integer  "turnovers"
    t.integer  "sacks"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "player_id"
    t.index ["player_id"], name: "index_stats_on_player_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "teamName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "league_id"
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

end
