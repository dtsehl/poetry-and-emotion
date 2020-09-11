class Poem
  attr_reader :title, :author, :lines

  def initialize(info)
    @title = info[:title]
    @author = info[:author]
    @lines = info[:lines]
  end
end
