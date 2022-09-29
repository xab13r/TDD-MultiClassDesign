require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration" do
	it "can createde a new Diary" do
		diary = Diary.new
		entry = DiaryEntry.new("my title", "my content")
		diary.add(entry)
		expect(diary.all).to eq [entry]
		expect(diary.phone_list).to eq []
	end

	context "when multitple entries have created" do
		it "can return past entries" do
			diary = Diary.new
			entry1 = DiaryEntry.new("my title 1", "my content 1")
			entry2 = DiaryEntry.new("my title 2", "my content 2")
			diary.add(entry1)
			diary.add(entry2)
			expect(diary.all.map { |entry| entry.contents}).to eq ["my content 1", "my content 2"]
		end
	end

	describe "when given wpm reading speed and availabe time" do
		it "will select the entry out of 2 that could be read in that time" do
			diary = Diary.new
			entry1 = DiaryEntry.new("my title 1", "my " * 10)
			entry2 = DiaryEntry.new("my title 2", "my " * 20)
			diary.add(entry1)
			diary.add(entry2)
			expect(diary.select_entry(10, 1)).to eq entry1.contents
		end

		it "will select the entry out of 3 that could be read in that time" do
			diary = Diary.new
			entry1 = DiaryEntry.new("my title 1", "my " * 10)
			entry2 = DiaryEntry.new("my title 2", "my " * 20)
			entry3 = DiaryEntry.new("my title 3", "my " * 5)
			diary.add(entry1)
			diary.add(entry2)
			diary.add(entry3)
			expect(diary.select_entry(10, 1)).to eq entry1.contents
		end
	end
end