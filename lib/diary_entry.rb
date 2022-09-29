class DiaryEntry
	def initialize(title, contents)
		@title = title
		@contents = contents.split(" ")
	end

	def title
		return @title
	end

	def contents
		return @contents.join(" ")
	end

	def words_count
		return @contents.length
	end
end