# MY JOIN, SINGLE-SOURCE-OF-TRUTH
# BELONG TO MAGAZINE
# BELONG TO AUTHOR
class Article
  attr_accessor :author, :title, :magazine
  ALL = []

  def initialize(author, title, magazine)
    @author = author
    @title = title
    @magazine = magazine
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
