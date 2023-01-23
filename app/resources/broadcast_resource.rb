class BroadcastResource < JSONAPI::Resource
  attributes :title, :broadcast_date, :subscriptions_count

  has_many :subscriptions
end
