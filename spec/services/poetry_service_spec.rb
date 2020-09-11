require 'rails_helper'

RSpec.describe "Poetry Service" do
  it "returns poems of a searched-for author" do
    author = "Emily"
    poems = PoetryService.poems_by_author(author)
    expect(poems[0][:title]).to be_a(String)
    expect(poems[0][:author]).to be_a(String)
    expect(poems[0][:lines]).to be_a(Array)
  end
end
