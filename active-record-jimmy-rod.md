📇 Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.

As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria
The rolodex application data should be managed by a PostgreSQL database in a Rails application.
$ active-record git:(main) ✗ rails s

The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
$ rails generate model Person first_name:string last_name:string phone:string
$ active-record git:(main) ✗ rails db:migrate

Add five friends and family members to the people table using the Rails console.
>  Person.create(first_name: 'Jimmy', last_name: 'F', phone: '6503663905')
> Person.create(first_name: 'Billy', last_name: 'Bob', phone: '1234567890')
> Person.create(first_name: 'John', last_name: 'Sierra', phone: '1171171170')
> Person.create(first_name: 'Oscar', last_name: 'Meyer', phone: '0987654321')
> Person.create(first_name: 'Hugh', last_name: 'Mungus', phone: '4205318008')


Retrieve all the people in the database.
> Person.all

Retrieve the third person in the database.
> Person.find 3

Retrieve only the first name of the first person in the database.
> Person.where(last_name:"Jimmy")

Remove the last person from the database.
> Jimmy = Person.find 6
> Jimmy.destroy

Add yourself to the people table.
> Person.create(first_name: 'Rod', last_name: 'V', phone: '9166199169')

Retrieve all the people that have the same last name as you.
> Person.where(last_name:"V")

Retrieve only the first person from the list of people that have the same last name as you.
> Person.where(last_name:"F")

Update the phone number of the second person in the database.
> scully = Person.find(2)
> scully
> scully.update(phone: 3216540987)

Retrieve the last name of the third person in the database.
> Person.where(last_name:"Sierra")

🏔 Stretch Goals
Update all the family members with the same last name as you to have the same phone number as you.
> scully = Person.find(1)
> scully
> scully.update(phone: 9166199169)

Remove all family members that do not have your last name.
> Billy = Person.find(2)
> Billy.destroy
> John = Person.find(3)
> John.destroy
> Oscar = Person.find(4)
> Oscar.destroy
> Hugh = Person.find(5)
> Hugh.destroy

