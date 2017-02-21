class Message < ApplicationRecord
  scope :active, -> { where(invoked_at: (Time.now - 3.minutes)..Time.now)  }
end
