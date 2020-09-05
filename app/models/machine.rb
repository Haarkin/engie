class Machine < ApplicationRecord
    has_many : machine_characters
    belongs_to :category
    belongs_to :user
end
