class SubscriptionResource < JSONAPI::Resource
  attributes :email, :firstname, :surname, :registration_ip, :watched, :token

  has_one :broadcast
end
