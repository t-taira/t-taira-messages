class Message < ApplicationRecord
  scope :now, -> { where(invoked_at: Time.now.strftime('%Y-%m-%d %H:%M'))  }

  class << self
    def generate
      Message.where(repeat: true).each do |m|
        Message.create(content: m.content, invoked_at: m.invoked_at + 1.day, repeat: true)
        m.destroy
      end
    end
  end
end
