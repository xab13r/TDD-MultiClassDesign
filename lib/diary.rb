class Diary
	def initialize
		@entries = []
		@phone_numbers = []
	end

	def add(entry)
		@entries.push(entry)
		find_number(entry.contents)
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
		words = contents.split(" ")
		words = words.select{|string| string.length == 11}
		words = words.select{|string| string.start_with?("07")}
		words = words.select{|string| string.match(/[^0-9]/) == nil}
    if words[0] != nil
 		 @phone_numbers.push(words[0])
	 end
	end
end
