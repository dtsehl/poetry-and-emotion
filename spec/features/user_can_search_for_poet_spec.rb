require 'rails_helper'

describe 'User can search for poet' do
  it 'redirects to the proper path after searching' do
    visit '/'

    fill_in 'author', with: 'Emily'
    click_on 'Get Poems'
    expect(current_path).to eq(search_path)

    #I was just wrapping up this feature test, having made all other tests pass.

      info = {
          title: "Not at Home to Callers",
          author: "An Author",
          lines: ["Line 1", "Line 2", "Line 3"]
        }

    poem = Poem.new(info)
    within ".poem-#{poem.id}" do
      expect(page).to have_content("Poem Title: #{poem.title}")
      expect(page).to have_content("Poem Author: #{poem.author}")
      expect(page).to have_content("The Poem: #{poem.lines}")
      expect(page).to have_content("Tone: #{poem.tone}")
    end
  end
end
