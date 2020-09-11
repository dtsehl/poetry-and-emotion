require 'rails_helper'

RSpec.describe Poem do
  it "exists" do
    info = {
      title: "A Name",
      author: "An Author",
      lines: ["Line 1", "Line 2", "Line 3"]
    }

    poem = Poem.new(info)

    expect(poem.title).to eq(info[:title])
    expect(poem.author).to eq(info[:author])
    expect(poem.lines).to eq(info[:lines])
  end
end
