class ToneService
  def self.get_tone_of_poem(poem)
    response = conn.get("v3/tone?version=2017-09-21&text=#{poem.lines}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: ENV['TONE_URL']) do |connection|
      connection.basic_auth("apikey", ENV['TONE_KEY'])
    end
  end
end
