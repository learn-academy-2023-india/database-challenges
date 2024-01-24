class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

class Credit < ApplicationRecord
    belongs_to :person
end

class Person < ApplicationRecord
    has_one :credit
end





ActiveRecord::Schema[7.1].define(version: 2024_01_24_000711) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credits", force: :cascade do |t|
    t.string "Card"
    t.string "card_number"
    t.integer "expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end