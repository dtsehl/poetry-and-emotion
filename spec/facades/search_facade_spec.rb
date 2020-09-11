require 'rails_helper'

RSpec.describe SearchFacade do
  describe "class methods" do
    it "ten_poems_by_author" do
      author = "Emily"
      results = SearchFacade.ten_poems_by_author(author)
      expect(results.size).to eq(10)
      expect(results).to be_a(Array)
      expect(results[0]).to be_a(Poem)
      expect(results[0].title).to be_a(String)
      expect(results[0].author).to be_a(String)
      expect(results[0].lines).to be_a(String)
    end
    it "get_tone_of_poems" do
      info = {
        title: "A Name",
        author: "An Author",
        lines: ["The words the happy say", "Are paltry melody", "But those the silent feel", "Are beautiful"]
      }

      info_2 = {
        title: "A Name",
        author: "An Author",
        lines: ["Death! that struck when I was most confiding", "In my certain faith of joy to be", "Strike again, Time's withered branch dividing"]
      }

      poem_1 = Poem.new(info)
      poem_2 = Poem.new(info_2)
      poems = [poem_1, poem_2]

      results = SearchFacade.get_tone_of_poems(poems)
      expect(results[0].tones[0]).to eq("Joy")
    end
  end
end
