class FavoriteMaster < ApplicationRecord
  belongs_to :client
  belongs_to :master
end
