class Subscription < ApplicationRecord
  before_create :generate_token
  after_save :update_broadcast
  after_destroy :update_broadcast
  belongs_to :broadcast

  protected

  def generate_token
    self.token = loop do
      generated_token = SecureRandom.urlsafe_base64(nil, false)
      break generated_token unless Subscription.exists?(token: generated_token)
    end
  end

  def update_broadcast
    br = Broadcast.find(self.broadcast_id)
    br.subscriptions_count = br.subscriptions.count
    br.save!
  end
end
