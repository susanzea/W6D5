require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = %w(white black gray brown)
    validates :birthdate, :color, :name, :sex, :description, presence: true
    validates :color, inclusion: COLORS
    # validates :color, :inclusion => { in: COLORS }

    def age 
        time_ago_in_words(birthdate)
    end

end
