class Subscription < ApplicationRecord
  before_create :generate_registration_ip
  belongs_to :broadcast

  protected

  def generate_registration_ip
    self.registration_ip = loop do
      random_registration_ip = SecureRandom.urlsafe_base64(nil, false)
      break random_registration_ip unless Subscription.exists?(registration_ip: random_registration_ip)
    end
  end
end
