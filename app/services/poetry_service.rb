class PoetryService
  def self.poems_by_author(author)
    response = Faraday.new(url: "https://poetrydb.org/author/#{author}").get
    JSON.parse(response.body, symbolize_names: true)
  end
end
