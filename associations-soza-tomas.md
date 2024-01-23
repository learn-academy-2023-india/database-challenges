<!-- As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.
An account owner should have a name and an address.

rails g model Banking name:string address:string

There should be at least three owners in the database.
 Banking.create(name: "Jack", address: "123 Main street, Las Vegas, NV")

A credit card has a number and an expiration date.
rails generate model CreditCard account:integer expiration_date:integer banking_id:integer ****CREATES second table****
    has_many :credit_cards FROM BANKING TO LINK TO CREDIT_CARD***
    belongs_to :banking FROM CREDIT_CARD TO LINK TO BANKING***
add_account1 = Banking.where(name:"Jack") CREATE VARIABLE WHERE TO FIND
add_account1[0].credit_cards.create(account:00000, expiration_date:11032023, banking_id:1) ADD NEW INFO

Remember! Credit cards CANNOT exist without an account owner.
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
Each account owner should have at least one credit card.
At least one account owner should have three credit cards.
🏔 Stretch Goals
Add a credit limit to each card.
Find the total credit extended to an owner who has multiple credit cards. -->

<!-- [#<Banking:0x0000000108ea96e8
  id: 1,
  name: "Jack",
  address: "123 Main street, Las Vegas, NV",
  created_at: Tue, 23 Jan 2024 19:54:06.327878000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 19:54:06.327878000 UTC +00:00>,
 #<Banking:0x0000000109cab908
  id: 2,
  name: "May",
  address: "69 Nice street, Phoenix, AZ",
  created_at: Tue, 23 Jan 2024 19:54:58.824222000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 19:54:58.824222000 UTC +00:00>,
 #<Banking:0x0000000109cab7c8
  id: 3,
  name: "Hoffer",
  address: "your moms house, Los Angeles, CA",
  created_at: Tue, 23 Jan 2024 19:55:46.315782000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 19:55:46.315782000 UTC +00:00>]  -->

  <!-- [#<CreditCard:0x00000001096ca688
  id: 1,
  account: 0,
  expiration_date: 11032023,
  banking_id: 1,
  created_at: Tue, 23 Jan 2024 21:49:34.792851000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 21:49:34.792851000 UTC +00:00>,
 #<CreditCard:0x0000000109cac088
  id: 2,
  account: 1,
  expiration_date: 11032023,
  banking_id: 2,
  created_at: Tue, 23 Jan 2024 21:57:58.307821000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 21:57:58.307821000 UTC +00:00>,
 #<CreditCard:0x0000000109cabe08
  id: 3,
  account: 2,
  expiration_date: 11032023,
  banking_id: 3,
  created_at: Tue, 23 Jan 2024 22:00:20.615382000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 22:00:20.615382000 UTC +00:00>,
 #<CreditCard:0x0000000109cabb88
  id: 4,
  account: 3,
  expiration_date: 11032023,
  banking_id: 3,
  created_at: Tue, 23 Jan 2024 22:05:46.544079000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 22:05:46.544079000 UTC +00:00>]  -->