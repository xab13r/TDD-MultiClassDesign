RSpec.describe "todo_list" do
  it "Constructs a todo list" do
    todo_list = TodoList.new
    expect(todo_list.complete).to eq []
    expect(todo_list.incomplete).to eq []
  end
end
