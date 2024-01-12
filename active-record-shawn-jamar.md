Getting ready

- `cd` to your Desktop
- $ `rails new active-record -d postgresql -T`
- `cd` into the project
- $ `rails db:create`
- Open the project in a text editor
- Begin the rails server: `$ rails server`
- In a browser navigate to: `http://localhost:3000`

Now we have a running Ruby on Rails instance

# Challenges

## 1. Create a model
```ruby
rails generate model Person first_name:string last_name:string phone:string
```
## 2. Run Migrations
```ruby
rails db:migrate

```
## 3. Open Rails Console
```ruby
rails console
```
## 4. Add Some People
<i>DO this within the Ruby Console!!</i>
```ruby
Person.create(first_name: "Jack", last_name: "Sparrow", phone: "555-1234")
Person.create(first_name: "Elizabeth", last_name: "Swann", phone: "555-5678")
Person.create(first_name: "Will", last_name: "Turner", phone: "555-9876")
Person.create(first_name: "Hector", last_name: "Barbossa", phone: "555-4321")
Person.create(first_name: "Davy", last_name: "Jones", phone: "555-8765")

```
## 5. Retrieve the People
*Ruby Console*
```ruby
Person.all
```
## 6. Retrieve Only the Third Person
```ruby
Person.third
```
## 7. Retrieve Only the First Name of the First Person
```ruby
Person.first.first_name
```
## 8. Remove the Last Person
```ruby
Person.last.destroy
```
## 9. Add Yourself
```ruby
Person.create(first_name: "Captain", last_name: "Jamar", phone: "555-0000")
```
## 10. Retrieve People w/ Same Last Name as You
```ruby
Person.where(last_name: "Jamar")

## No one has our last name, we can modify other entries so they do!

## Lets modify the second person
person = Person.second
person.update(last_name: "Jamar")
```
## 11. Retrieve ONLY First Person w/ Same Last Name as You
```ruby
Person.find_by(last_name: "Hook")
```
## 12. Update the Phone Number of the Second Person
```ruby
person = Person.second
person.update(phone: "555-1111")
```
## 13. Retrieve the Last Name of the Third Person
```ruby
Person.third.last_name
```
***
***
***
# Stretch Goals

## 1. Update Family Members with the Same Last Name to Have the Same Phone Number as You
```ruby
your_last_name = "Jamar"
your_phone_number = "555-0000"

Person.where(last_name: your_last_name).update_all(phone: your_phone_number)
```
## 2. Remove All Family Members That Do Not Have Your Last Name
```ruby
Person.where.not(last_name: your_last_name).destroy_all
```
