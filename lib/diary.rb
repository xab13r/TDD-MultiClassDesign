class Diary
	def initialize
		@entries = []
		@phone_numbers = []
	end

	def add(entry)
		@entries.push(entry)
	end

	def all
		return @entries
	end

	def select_entry(wpm, minutes_available)
		# wpm is a number, minutes_available is number
		# returns the entry whose reading time is the closest but under the time available
		readable_length = wpm * minutes_available
		readable_entries = @entries.select  { |entry| entry.words_count <= readable_length }
		readable_array = readable_entries.map { |entry| [entry.contents, entry.words_count]}
		readable_hash = readable_array.to_h
		return readable_hash.key(readable_hash.values.max)
		# select_entry = readable.select {|entry| entry.word_count.}
	end

	def phone_list
		return @phone_numbers
	end

	private

	def find_number(contents)
		# finds number in contents and add to the phonebook class
	end
end