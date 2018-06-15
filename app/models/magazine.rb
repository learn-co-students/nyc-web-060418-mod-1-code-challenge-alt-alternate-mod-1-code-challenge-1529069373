# HAS MANY ARTICLES
class Magazine
  attr_accessor :name, :category
  ALL = []

  def initialize(name, category)
    @name = name
    @category = category
    self.class.all << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    all.find do |magazine_instance|
      magazine_instance.name == name
    end
  end

  def article_titles
    my_articles = Article.all.select do |article_instance|
      article_instance.magazine == self
    end

    my_articles.map do |article_instance|
      article_instance.title
    end
  end

end

# + Magazine.all - done
#   + returns an array of all magazines

# + Magazine.find_by_name(name) - done
#   + given a string of magazine name, returns the first magazine that matches

# + Magazine#article_titles - done
#   + returns a list of the titles of all articles written for that magazine
