require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# AUTHOR
auth_1 = Author.new("Jake")
auth_2 = Author.new("Meg")
auth_3 = Author.new("Steve")


# MAGAZINE
mag_1 = Magazine.new("jux", "art")
mag_2 = Magazine.new("flux", "movies")

# ARTICLE
art_1 = Article.new(auth_1, "cool art", mag_1,)
art_2 = Article.new(auth_1, "cool beans", mag_1)



Pry.start
