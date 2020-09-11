class SearchFacade
  def self.ten_poems_by_author(author)
    results = PoetryService.poems_by_author(author)
    
  end
end
