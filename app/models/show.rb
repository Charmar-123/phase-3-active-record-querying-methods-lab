class Show < ActiveRecord::Base

    def self.highest_rating
        ratings = Show.pluck(:rating)
        ratings.max
    end

    def self.most_popular_show
        ordered_shows = Show.order(rating: :desc)
        ordered_shows.first
    end

    def self.lowest_rating
        ratings = Show.pluck(:rating)
        ratings.min
    end

    def self.least_popular_show
        ordered_shows = Show.order(:rating)
        ordered_shows.first
    end

    def self.ratings_sum
        ratings = Show.pluck(:rating)
        ratings.sum
    end

    def self.popular_shows
        popular_shows = Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end