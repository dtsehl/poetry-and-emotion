require 'rails_helper'

RSpec.describe SearchFacade do
  describe "class methods" do
    it "ten_poems_by_author" do
      results = SearchFacade.ten_poems_by_author(@author)
      expect(results.size).to eq(10)
      expect(results).to be_a(Array)
      expect(results[0]).to be_a(Poem)
      expect(results[0].title).to be_a(String)
      expect(results[0].author).to be_a(String)
      expect(results[0].lines).to be_a(Array)
    end
  end
end
