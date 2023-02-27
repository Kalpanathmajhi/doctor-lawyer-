
class WorkingHour < ApplicationRecord
  belongs_to :professional
end
rails generate migration AddOffDayToWorkingHours off_day:boolean