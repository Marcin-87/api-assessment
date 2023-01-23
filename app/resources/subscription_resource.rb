class SubscriptionResource < JSONAPI::Resource
  attributes :email, :firstname, :surname, :registration_ip, :watched

  has_one :broadcast
end
