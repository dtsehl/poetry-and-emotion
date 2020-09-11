class SearchFacade
  def self.ten_poems_by_author(author)
    results = PoetryService.poems_by_author(author)
    10.times do
      results.each do |poem_data|
        Poem.new(poem_data)
      end
    end
  end
end
