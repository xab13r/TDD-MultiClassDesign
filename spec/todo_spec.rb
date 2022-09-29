RSpec.describe "todo" do
  it "constructs a todo" do
    todo = Todo.new("do this")
    expect(todo.task).to eq "do this"
    expect(todo.is_done?).to eq false
  end

  it "can mark a task as done" do
    todo = Todo.new("do this")
    todo.mark_done!
    expect(todo.is_done?).to eq true
  end
end
