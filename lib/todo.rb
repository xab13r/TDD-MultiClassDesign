class Todo
	def initialize(task) # task is a string
		@task = {"task" => task, "status" => false}
	end

	def task
		return @task["task"]
	end

	def is_done?
		return @task["status"]
	end

	def mark_done!
		@task["status"] = true
		# change status from false to true
	end
end
