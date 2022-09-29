class TodoList
	def initialize
		@list = []
	end

	def add(todo)
		@list.push(todo)
	end

	def complete
		@list.select{|todo| todo.is_done? == true}
	end

	def incomplete
		@list.select{|todo| todo.is_done? == false}
	end
end
