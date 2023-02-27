class Professional < ApplicationRecord
  has_many :working_hours, dependent: :destroy
end
