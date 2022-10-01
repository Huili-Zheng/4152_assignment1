class Movie < ActiveRecord::Base
  def self.all_ratings
    ["G","PG","PG-13","R"]
  end

  def self.with_ratings(ratings)
    @movies = Movie.where("rating in (?)", ratings.keys)
  end

  def self.with_sort(sort)
    @movies = Movie.order(sort)
  end
end
