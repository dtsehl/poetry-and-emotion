class Poem
  attr_reader :title, :author, :lines, :tones

  def initialize(info)
    @title = info[:title]
    @author = info[:author]
    @lines = info[:lines].join(" ")
    @tones = []
  end

  def add_tones(tones)
    tones[:document_tone][:tones].each do |tone|
      @tones << tone[:tone_name]
    end
  end
end
