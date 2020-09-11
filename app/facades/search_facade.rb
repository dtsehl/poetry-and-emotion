class SearchFacade
  def self.ten_poems_by_author(author)
    results = PoetryService.poems_by_author(author)
    poems = []
    # I do not know why this if statement is not being followed so I had to add the take at the bottom.
    if poems.size <= 10
      results.each do |poem_data|
        poems << Poem.new(poem_data)
      end
    end
    get_tone_of_poems(poems.take(10))
  end

  def self.get_tone_of_poems(poems)
    poems.each do |poem|
      tones = ToneService.get_tone_of_poem(poem)
      poem.add_tones(tones)
    end
  end
end
