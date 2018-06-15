require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Authors
david = Author.new("David")
tashawn = Author.new("Tashawn")
graham = Author.new("Graham")

#Magazines
time = Magazine.new("Time", "News")
si = Magazine.new("SI", "Sports")
forbes = Magazine.new("Forbes", "Business")

#Articles
my_code_challenge = Article.new("My Code Challenge", david, time)
my_trippin_reverse_jam = Article.new("My Trippin Reverse Jam", tashawn, si)
im_a_tech_mogul = Article.new("I'm a Tech Mogul", graham, forbes) 



Pry.start
