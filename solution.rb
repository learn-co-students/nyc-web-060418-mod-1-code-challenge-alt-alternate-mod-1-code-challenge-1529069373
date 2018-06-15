# Please copy/paste all three classes into this file to submit your solution!

# MY JOIN, SINGLE-SOURCE-OF-TRUTH
class Article
  attr_accessor :author, :title, :magazine
  ALL = []

  def initialize(author, title, magazine)
    @author = author
    @magazine = magazine
    @title = title
    self.class.all << self
  end

  def self.all
    ALL
  end

end


# + Article.all - done
#   + returns an array of all articles
# + Article#author -  done
#   + returns the author for that given article
# + Article#magazine - done
#   + returns the magazine for that given article


# ---

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

# ---

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
