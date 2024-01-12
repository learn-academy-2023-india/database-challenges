<!-- Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age.
As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.
All tasks should be performed in order as listed below.
✔️ Acceptance Criteria
The rolodex application data should be managed by a PostgreSQL database in a Rails application.
The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.

Add five friends and family members to the people table using the Rails console.
<!-- 3.2.0 :001 > Person.create(last_name: "Balink", first_name: "Andrew", phone: "55
5-555-5555") -->

<!-- 3.2.0 :002 > Person.create(last_name: "Balink", first_name: "Ariana", phone: "555-555-5556") -->

<!-- 3.2.0 :003 > Person.create(last_name: "Ramos", first_name: "Leo", phone: "555-555-5557") -->

<!-- 3.2.0 :004 > Person.create(last_name: "Scullark", first_name: "Mckenley", phone: "555-555-5558") -->

<!-- 3.2.0 :005 > Person.create(last_name: "Balink", first_name: " Juliette", phone: "555-555-5559") -->


<!-- Retrieve all the people in the database.
3.2.0 :006 > Person.all


Retrieve the third person in the database.
3.2.0 :007 > Person.find(3)


Retrieve only the first name of the first person in the database.
 Person.find(1).class.pluck(:first_name).first


Remove the last person from the database.
Person.last.destroy

Add yourself to the people table.
Person.create(last_name: "Balink", first_name: "Jack", phone: "555-555-5560")

Retrieve all the people that have the same last name as you.
Person.where(last_name: 'Balink')

Retrieve only the first person from the list of people that have the same last name as you.
Person.where(last_name: 'Balink').first

Update the phone number of the second person in the database.
3.2.0 :031 > second_person = Person.find(2)
3.2.0 :032 > second_person.update(phone: '666-666-6666')

<!-- Retrieve the last name of the third person in the database. -->
<!-- Person.find(3).last_name -->