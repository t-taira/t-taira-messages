class Message < ApplicationRecord
  scope :now, -> { where(invoked_at: Time.now.strftime('%Y-%m-%d %H:%M'))  }
  #scope :now, -> { where(invoked_at: (Time.now - 3.minutes)..Time.now)  }
end
