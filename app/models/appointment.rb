class Appointment < ApplicationRecord
  belongs_to :master
  belongs_to :client
end
