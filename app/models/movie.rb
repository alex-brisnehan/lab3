# Edited by: Alex Brisnehan
class Movie < ActiveRecord::Base

	# Added the ratings selections

    def self.all_ratings
        self.find(:all, :select => "rating", :group => "rating").map(&:rating)
    end
end
