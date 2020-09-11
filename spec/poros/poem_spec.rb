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
    expect(poem.lines).to eq("Line 1 Line 2 Line 3")
  end
  it "can have a tone added to it" do
    info = {
      title: "A Name",
      author: "An Author",
      lines: ["Line 1", "Line 2", "Line 3"]
    }

    poem = Poem.new(info)

    tones = {
                "document_tone": {
                    "tones": [
                        {
                            "score": 0.836118,
                            "tone_id": "sadness",
                            "tone_name": "Sadness"
                        },
                        {
                            "score": 0.716301,
                            "tone_id": "tentative",
                            "tone_name": "Tentative"
                        }
                    ]
                }
            }
    poem.add_tones(tones)

    expect(poem.tones[0]).to eq(tones[:document_tone][:tones][0][:tone_name])
  end
end
