<!-- 💳 Challenge: Banking Application
As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.

An account owner should have a name and an address.
There should be at least three owners in the database.

A credit card has a number and an expiration date.

Remember! Credit cards CANNOT exist without an account owner.

Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
At least one account owner should have three credit cards.
🏔 Stretch Goals
Add a credit limit to each card.
Find the total credit extended to an owner who has multiple credit cards. -->



rails generate model AccountOwner name:string address:string
class AccountOwner < ApplicationRecord
    has_many :credit_cards
end
owner1 = AccountOwner.create(name: "John Doe", address: "123 Main St")
owner2 = AccountOwner.create(name: "Jane Smith", address: "456 Oak St")
owner3 = AccountOwner.create(name: "Bob Johnson", address: "789 Pine St")

rails generate model CreditCard number:integer exp:integer account_owner:preference
class CreditCard < ApplicationRecord
    belongs_to :account_owner
end

CreditCard.create(number: 123456, exp: 202405, account_owner: owner1)
CreditCard.create(number: 1234567, exp: 202406, account_owner: owner2)
CreditCard.create(number: 393959, exp: 202405, account_owner: owner2)
CreditCard.create(number: 39431155, exp: 202410, account_owner: owner3)
CreditCard.create(number: 303004, exp: 202610, account_owner: owner3)
CreditCard.create(number: 099888, exp: 202805, account_owner: owner3)

rails g migrate add_owner_name_to_credit_card owner_name:references
rails g migration add_owner_name_to_credit_card owner_name:references
rails generate migration foriegn_key
