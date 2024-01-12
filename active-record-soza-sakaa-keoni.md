<!-- The rolodex application data should be managed by a PostgreSQL database in a Rails application.
The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
 IDK what to write here to push so enjoy my terrible pseudocode
Add five friends and family members to the people table using the Rails console.
    Easy enough to plug in new info into the line of data, pronunciation of names should be fun for you.

Retrieve all the people in the database.
    Person.all

Retrieve the third person in the database.
Person.(3)

Retrieve only the first name of the first person in the database.
first_person = Person.first
first_name = first_person.first_name
thank you chatgpt

Remove the last person from the database.
this one i was able to guess by myself and somehow it turned out ok. I just typed in Person.last cause i saw that somewhere and i know .destroy works so i wondered if i could add it to the end as Person.last.destroy and from what I can tell using Person.all as my next command it shows the person at id 5 has now been deleted.

Add yourself to the people table.
person.create but this time with my info...

Retrieve all the people that have the same last name as you.
Retrieve only the first person from the list of people that have the same last name as you.
Update the phone number of the second person in the database.

Retrieve the last name of the third person in the database. -->


## To copy an dpaste later
3.2.0 :001 > Person.create(last_name: "Kamakawiwo'ole", first_name: "Ka'wika",
phone:"808-867-5309")

3.2.0 :002 > Person.create(last_name: "Ohelo", first_name: "Kailani",
phone:"808-786-4566")

3.2.0 :003 > Person.create(last_name: "Kalaeloa", first_name: "Tasha",
phone:"808-578-3594")

3.2.0 :004 > Person.create(last_name: "Kamaka", first_name: "Tyson",
phone:"808-867-3475")

3.2.0 :005 > Person.create(last_name: "Ho'okele ", first_name: "Leilani",
phone:"808-837-7385")

