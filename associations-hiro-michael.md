As a developer, I have been tasked with creating a database to store information for a bank that issues credit cards. The account owner must fill out a bank application that includes their name and address. Then account owners can be issued one or more credit cards. Credit cards must belong to an account owner.

✔️ Acceptance Criteria
The banking application data should be managed by a PostgreSQL database in a Rails application.
    -rails new associations -d postgresql -T
    -rails db:create

An account owner should have a name and an address.
    -rails generate model BankApplication name:string address:string

There should be at least three owners in the database.
    -BankApplication.create(name: "Yoshihiro Yamada", address: "12345 Learn Academy Way")
    -BankApplication.create(name: "Micahel Egner", address: "12345 Learn Academy Drive")
    -BankApplication.create(name: "Banker Pal", address: "12345 Learn Academy Court")

A credit card has a number and an expiration date.
Remember! Credit cards CANNOT exist without an account owner.
Think about the purpose of each data type and what characters are necessary in each column. (Example: 02/2023 vs 02-02-2023)
    -application1= BankApplication.find(4)
    -application1.credit_cards.create(number: 12324354, expiration: '2024-05-25')
    -application1.credit_cards.create(number: 93948594, expiration: '2025-07-28')
    -application1.credit_cards.create(number: 757635373, expiration: '2027-07-07')

Each account owner should have at least one credit card.
    -application1= BankApplication.find(4)
    -application1.credit_cards.create(number: 12324354, expiration: '2024-05-25')
    -application2 = BankApplication.find(5)
    -application2.credit_cards.create(number: 1335433, expiration: '2024-05-06')
    -application3 = BankApplication.find(6)
    -application3.credit_cards.create(number: 8593853, expiration: '2024-06-20')

At least one account owner should have three credit cards.
   -application1= BankApplication.find(4)
    -application1.credit_cards.create(number: 12324354, expiration: '2024-05-25')
    -application1.credit_cards.create(number: 93948594, expiration: '2025-07-28')
    -application1.credit_cards.create(number: 757635373, expiration: '2027-07-07')

🏔 Stretch Goals
Add a credit limit to each card.
    -rails generate model CreditLimit amount:integer bank_application_id:integer
    -rails db:migrate
    -application1 = BankApplication.find(4)
    -application1.create_credit_limit(amount: 50000)
    -application2 = BankApplication.find(5)
    -application2.create_credit_limit(amount: 8000)
    application3 = BankApplication.find(6)
    -application3.create_credit_limit(amount: 20000)
Find the total credit extended to an owner who has multiple credit cards.