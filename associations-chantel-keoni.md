As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

rails g model IndicaHoldings name:string address:string

rails db:migrate

IndicaHolding.create(name: 'John Dough' , address: '123 Ezy
E Street')

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.
An account owner should have a name and an address.
IndicaHolding.create(name: 'Pamela Springs' , address: '27 E
lm')

There should be at least three owners in the database.

IndicaHolding.create(name: 'John Dough' , address: '123 Ezy
E Street')

IndicaHolding.create(name: 'Pamela Springs' , address: '27 E
lm')

IndicaHolding.create(name: 'Fredrick Mercury' , address: 'Fr
ansisco District, CA')

class IndicaHolding < ApplicationRecord
    has_many :credit_cards
end

class CreditCard < ApplicationRecord
    belongs_to :indica_holding
end

A credit card has a number and an expiration date.
john[0].credit_cards.create(card_number: 77776666 ,
3.2.0 :004 > exp_date: 'March 31st, 2031')

Remember! Credit cards CANNOT exist without an account owner.
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.

pamela[0].credit_cards.create(card_number: 11112222 , exp_da
te: 'December 24th, 2023')

[#<CreditCard:0x000000010c6da508
  id: 2,
  card_number: 11112222,
  exp_date: "December 24th, 2023",
  indica_holding_id: 2,
  created_at: Tue, 23 Jan 2024 23:47:45.467274000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 23:47:45.467274000 UTC +00:00>]

At least one account owner should have three credit cards.

freddie[0].credit_cards.create(card_number: 66667777 , exp_date: 'February, 29th, 2032')

[#<CreditCard:0x0000000113351ce0
  id: 3,
  card_number: 66667777,
  exp_date: "February, 29th, 2032",
  indica_holding_id: 3,
  created_at: Tue, 23 Jan 2024 23:54:28.510145000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 23:54:28.510145000 UTC +00:00>,
 #<CreditCard:0x0000000113351ba0
  id: 4,
  card_number: 11113333,
  exp_date: "October 19th, 2033",
  indica_holding_id: 3,
  created_at: Wed, 24 Jan 2024 00:07:20.901492000 UTC +00:00,
  updated_at: Wed, 24 Jan 2024 00:07:20.901492000 UTC +00:00>,
 #<CreditCard:0x0000000113351a60
  id: 5,
  card_number: 44448888,
  exp_date: "September 21st, 1974",
  indica_holding_id: 3,
  created_at: Wed, 24 Jan 2024 00:09:49.309793000 UTC +00:00,
  updated_at: Wed, 24 Jan 2024 00:09:49.309793000 UTC +00:00>]

fred = IndicaHolding.where(name: 'Fredrick Mercury')
fred[0].credit_cards.create(card_number: 11113333 , exp_date: 'October 19th, 2033')

queen = IndicaHolding.where(name: 'Fredrick Mercury')
queen[0].credit_cards.create(card_number: 44448888 , exp_date: 'September 21st, 1974')

🏔 Stretch Goals
Add a credit limit to each card.
Find the total credit extended to an owner who has multiple credit cards.