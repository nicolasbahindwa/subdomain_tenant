class Account < ApplicationRecord

    has_many :posts, dependent: :destroy

    validates_uniqueness_of :subdomain
end
