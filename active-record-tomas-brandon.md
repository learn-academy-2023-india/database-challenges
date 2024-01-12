<!-- <!-- <!-- 📇 Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.

As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria
The rolodex application data should be managed by a PostgreSQL database in a Rails application.
The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
rails generate model Person first_name:string last_name:string phone:string

Add five friends and family members to the people table using the Rails console.
Person.create(first_name:'Anthony', last_name:'Na', phone:'213-310-2331')
Person.create(first_name:'Bravo', last_name:'Kim', phone:'213-310-2332')
Person.create(first_name:'Charlie', last_name:'Lee', phone:'213-310-2333')
Person.create(first_name:'Eric', last_name:'Choi', phone:'213-310-2334')
Person.create(first_name:'Diane', last_name:'Lee', phone:'213-310-2335')

Retrieve all the people in the database.
Person.all

Retrieve the third person in the database.
Person.find(3)

Retrieve only the first name of the first person in the database.
Person.first

Remove the last person from the database.
remove = Person.find(6)
remove.destroy

Add yourself to the people table.
Person.create(first_name:'Brandon', last_name:'Kim', phone:'213-310-12221')

Retrieve all the people that have the same last name as you.
Person.where(last_name: "Kim")

Retrieve only the first person from the list of people that have the same last name as you.
kim = Person.where(last_name: "Kim")
kim.first

Update the phone number of the second person in the database.
second = Person.find(2)
second.update(phone: "233-122-1242")

Retrieve the last name of the third person in the database.
Person.find(3).last_name

