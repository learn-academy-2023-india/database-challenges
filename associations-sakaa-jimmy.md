Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.
- ✗ rails g model BankApplication account_owner:string address:string

An account owner should have a name and an address.
- > BankApplication.create(account_owner:'A' , address:'123 abc ln')

There should be at least three owners in the database.
- > BankApplication.create(account_owner:'B' , address:'456 def st')
- > BankApplication.create(account_owner:'C' , address:'789 ghi ave')

A credit card has a number and an expiration date.
- ✗ rails g model CreditCard number:integer exp_date:string bank_application_id:integer 

Remember! Credit cards CANNOT exist without an account owner.
- > ccA = BankApplication.where(account_owner: 'A')
- > ccA = BankApplication.where(account_owner: 'B')
- > ccA = BankApplication.where(account_owner: 'C')

Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
- > ccA[0].credit_cards.create(number: 1234 , exp_date: 'jan24', bank_application_id: 1)
- > ccA[0].credit_cards.create(number: 5678 , exp_date: 'jan24', bank_application_id: 1)
- > ccA[0].credit_cards.create(number: 9012 , exp_date: 'jan24', bank_application_id: 1)
- > ccA = BankApplication.where(account_owner: 'B')
- > ccA[0].credit_cards.create(number: 1357 , exp_date: 'feb24', bank_application_id: 2)
- > ccA[0].credit_cards.create(number: 2468 , exp_date: 'mar24', bank_application_id: 3)

At least one account owner should have three credit cards.
- > ccA[0].credit_cards
  CreditCard Load (0.2ms)  SELECT "credit_cards".* FROM "credit_cards" WHERE "credit_cards"."bank_application_id" = $1 /* loading for pp */ LIMIT $2  [["bank_application_id", 1], ["LIMIT", 11]]
 => 
[#<CreditCard:0x000000010e11cf88
  id: 1,
  number: 1234,
  exp_date: "jan24",
  bank_application_id: 1,
  created_at: Tue, 23 Jan 2024 21:45:28.145532000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 21:45:28.145532000 UTC +00:00>,
 #<CreditCard:0x000000010e11ce48
  id: 2,
  number: 5678,
  exp_date: "jan24",
  bank_application_id: 1,
  created_at: Tue, 23 Jan 2024 21:48:53.339784000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 21:48:53.339784000 UTC +00:00>,
 #<CreditCard:0x000000010e11cd08
  id: 3,
  number: 9012,
  exp_date: "jan24",
  bank_application_id: 1,
  created_at: Tue, 23 Jan 2024 21:49:13.703499000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 21:49:13.703499000 UTC +00:00>]

🏔 Stretch Goals
Add a credit limit to each card.
Find the total credit extended to an owner who has multiple credit cards.