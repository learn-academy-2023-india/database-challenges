# Task 1: Set up the Rails application and database

1.1 Change directory to Desktop
    > cd Desktop

1.2 Create a new Rails application with PostgreSQL as the database
    > rails new active-record -d postgresql -T

1.3 Move into the project directory
    > cd active-record

1.4 Create the database
    > rails db:create

# Task 2: Add a Person model

2.1 Create a Person model with required attributes
    > rails generate model Person first_name:string last_name:string phone:string
    > rails db:migrate
       
# Task 3: Add friends and family to the database

3.1 Open Rails console
    > rails console

3.2 Add five friends and family members
    > Person.create(first_name: "Friend1", last_name: "Last1", phone: "123-456-7891")
    > Person.create(first_name: "Friend2", last_name: "Last2", phone: "123-456-7892")
    > Person.create(first_name: "Friend3", last_name: "Last3", phone: "123-456-7893")
    > Person.create(first_name: "Family1", last_name: "Lastf1", phone: "123-456-7811")
    > Person.create(first_name: "Family2", last_name: "Lastf2", phone: "123-456-7812")
    > # Repeat the above command to add more people
    > exit

# Task 4: Retrieve people from the database

4.1 Open Rails console
    > rails console

4.2 Retrieve all people
    > Person.all

4.3 Retrieve the third person
    > Person.find(3)

4.4 Retrieve the first name of the first person
    > Person.first.first_name

4.5 Exit Rails console
    > exit

# Task 5: Remove the last person from the database

5.1 Open Rails console
    > rails console

5.2 Remove the last person
    > Person.last.destroy

5.3 Exit Rails console
    > exit

# Task 6: Add yourself to the database

6.1 Open Rails console
    > rails console

6.2 Add yourself to the database
    > Person.create(first_name: "YourFirstName", last_name: "YourLastName", phone: "YourPhoneNumber")

6.3 Exit Rails console
    > exit

# Task 7: Retrieve people with the same last name

7.1 Open Rails console
    rails console

7.2 Retrieve people with the same last name
    > Person.where(last_name: "YourLastName")

7.3 Retrieve only the first person with the same last name
    > Person.where(last_name: "YourLastName").first

7.4 Exit Rails console
    > exit

# Task 8: Update the phone number of the second person

8.1 Open Rails console
    > rails console

8.2 Find the second person and update the phone number
    > person = Person.find(2)
    > person.update(phone: "NewPhoneNumber")

8.3 Exit Rails console
    > exit

# Task 9: Retrieve the last name of the third person

9.1 Open Rails console
    > rails console

9.2 Retrieve the last name of the third person
    > Person.find(3).last_name

9.3 Exit Rails console
    > exit

# Task 10: Start the Rails server

10.1 Start the Rails server
    > rails server

10.2 In a browser, navigate to http://localhost:3000
