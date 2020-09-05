class Post < ApplicationRecord
    has_many :characters
    belongs_to :category
    belongs_to :user
end
