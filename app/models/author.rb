# HAS MANY ARTICLES
class Author
  attr_accessor :name
  ALL = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    ALL
  end

  def articles
    Article.all.select do |article_instance|
      article_instance.author == self
    end
  end

  def magazines
    articles.map do |my_article_instance|
      my_article_instance.magazine
    end
  end

  def add_article(title, magazine)
    Article.new(self, title, magazine)
  end

  def find_specialties
    magazines.map do |my_magazine_instances|
      my_magazine_instances.category
    end
  end
end


# + Author.all - done
#   + returns an array of all authors

# + Author#articles - done
#   + returns a list of articles the author has written

# + Author#magazines - done
#   + should return a list of magazines for which the author has written

# + Author#add_article(title, magazine)- done
#   + given a title and a magazine, creates a new article
#   and associates it with that author and that magazine.

# +  Author#find_specialties - done
#    + returns the categories of the magazines for which the author has written
