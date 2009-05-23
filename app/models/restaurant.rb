class Restaurant < ActiveRecord::Base
  has_many :visits
end
