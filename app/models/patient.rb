class Patient < ApplicationRecord
    validates :name, presence: true
    validates :condition, presence: true
end
