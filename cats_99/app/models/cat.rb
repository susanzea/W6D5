require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = %w(white black gray brown)
    SEX = %w(M F)
    validates :birthdate, :color, :name, :sex, :description, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: SEX

    def age 
        time_ago_in_words(birthdate)
    end

end
