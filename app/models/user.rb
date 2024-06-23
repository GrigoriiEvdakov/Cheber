class User < ApplicationRecord
  has_one :master
  has_one :client
# validates :login, presense: true, usniqueness: true
# validates :role, inclusion: { in: %w(client master) }
  enum role: {client: 0, master: 1}
  
  def master?
    role == "master"
  end
  
  def client?
    role == "client"
  end
end
