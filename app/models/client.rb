class Client < ApplicationRecord
  has_many :appointments
  belongs_to :user
end
