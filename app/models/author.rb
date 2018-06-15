class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |article|
      article.magazine
    end
  end

  def add_article(title, magazine)
    arr = []
    #not enough time to finish but I just wanted to say
    #that I wanted to use the insert method and shovel
    #the new instance into my new array and then
    # and then place that array in the Articles array with flatten
  end

  def find_specialties
    magazines.map do |magazine|
      magazine.category
    end
  end
end
