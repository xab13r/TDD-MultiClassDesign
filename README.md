# Design a Multi-Class Program

User Stories

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## Multi-Class Design

```
Diary
	Add an entry to the list
	Return the full list
	Pick best one to read based on time available
	Scan entry for phone numbers and create a separate list for them

	DiaryEntry
		Create an entry
		Return number of words
		Return the content
		Return the title

TodoList
	Add todos
	Check completed todos
	Check incomplete todos

	Todo
		Create todos
		Return status of todos
		Change the status

Phonebook
	List contacts
	Add contacts

	Contact
		Create contact
		Return information
```

```ruby
class Diary
	def initialize
		# holds list of entries as objects
		# holds list of numbers
	end

	def add(entry)
		# adds entries to the list
		# returns nothing
	end

	def all
		# returns list of all the entries as objects
	end

	def select_entry(wpm, minutes_available)
		# wpm is a number, minutes_available is number
		# returns the entry whose reading time is the closest but under the time available
	end

	def phone_list
		# returns list of phone numbers
	end

	private

	def find_number(contents)
		# finds number in contents and add to the phonebook class
	end
end
```

```ruby
class DiaryEntry
	def initialize(title, contents)
		# holds instance variables
	end

	def title
		# returns entry title
	end

	def contents
		# returns entry contents
	end

	def words_count
		# returns words count for the contents
	end
end
```
```ruby
class TodoList
	def initialize
		# holds instance variables
	end

	def add(todo)
		# add todo to the list
	end

	def complete
		# return completed todos
	end

	def incomplete
		# returns incomplete todos
	end
end
```
```ruby
class Todo
	def initialize(task) # task is a string
		# holds instance variables
	end

	def task
		# return task as a string
	end

	def is_done?
		# return false if incomplete, true if completed
	end

	def mark_done!
		# change status from false to true
	end
end
```