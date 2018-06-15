class Article

  attr_reader :title, :author, :magazine

  @@all = []

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
    @@all << self

  end

  def self.all
    @@all
  end

end
