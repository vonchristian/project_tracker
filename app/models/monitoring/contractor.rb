module Monitoring
  class Contractor < User
    has_many :contracts
    has_many :projects, through: :contracts
  end
end
