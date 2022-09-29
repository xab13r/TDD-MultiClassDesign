RSpec.describe "Diary" do
  it "It constructs a diary" do
    diary = Diary.new
    expect(diary.all).to eq []
    expect(diary.phone_list).to eq []
  end
end
