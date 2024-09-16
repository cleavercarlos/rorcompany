class User < ApplicationRecord
    has_many :job_offers
    has_many :applications
    enum role: { admin: 0, employee: 1 }
    has_one_attached :avatar
  end