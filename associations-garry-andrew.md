## 💳 Challenge: Banking Application
# As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

## Acceptance Criteria
# The banking application data should be managed by a PostgreSQL database in a Rails application.
# An account owner should have a name and an address.
# A credit card has a number and an expiration date.
rails new associations -d postgresql -T
rails db:create
rails g model account_owner name:string address:string credit_card number:string expiration_date:string account_owner:references

# There should be at least three owners in the database.
seeds.rb
account_owner1 = AccountOwner.create(name: 'John', address: '123 Pike Place')
account_owner2 = AccountOwner.create(name: Mike', address: '321 Pike Place')
account_owner3 = AccountOwner.create(name: 'Alex', address: '301 Main Street')
rails db:seeds

# Remember! Credit cards CANNOT exist without an account owner.
# Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)

# Each account owner should have at least one credit card.
# At least one account owner should have three credit cards.
seeds.rb 
credit_card1 = account_owner1.credit_cards.create(number: '1234-5678-9012-3456', expiration_date: '02/2023')
credit_card2 = account_owner1.credit_cards.create(number: '5678-9012-3456-7890', expiration_date: '05/2024')
credit_card3 = account_owner1.credit_cards.create(number: '9876-5432-1098-7654', expiration_date: '08/2025')

credit_card4 = account_owner2.credit_cards.create(number: '1111-2222-3333-4444', expiration_date: '01/2023')

credit_card5 = account_owner3.credit_cards.create(number: '4444-5555-6666-7777', expiration_date: '04/2024')
credit_card6 = account_owner3.credit_cards.create(number: '8888-9999-0000-1111', expiration_date: '07/2025')
rails db:seeds

## 🏔 Stretch Goals
# Add a credit limit to each card.
seeds.rb 
validates :credit_limit, presence: true, numericality: { greater_than_or_equal_to: 0 }
rails db:seeds 

rails generate migration AddCreditLimitToCreditCards credit_limit:decimal 

# Find the total credit extended to an owner who has multiple credit cards.






