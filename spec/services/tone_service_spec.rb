require 'rails_helper'

RSpec.describe "Tone Service" do
  it "returns the tones of a poem" do
    info = {
      title: "A Name",
      author: "An Author",
      lines: ["The words the happy say", "Are paltry melody", "But those the silent feel", "Are beautiful"]
    }

    poem = Poem.new(info)
    tones = ToneService.get_tone_of_poem(poem)
    expect(tones[:document_tone][:tones][0][:tone_name]).to be_a(String)
  end
end
