require 'rails_helper'

RSpec.describe Subscription, type: :model do
  before do
    @broadcast = Broadcast.create!(title: 'Test', broadcast_date: DateTime.now + 7)
  end
  it 'should be able to sign in to broadcast' do
    @subscription = Subscription.create!(
      email: Faker::Internet.email,
      firstname: Faker::Name.first_name,
      surname: Faker::Name.last_name,
      broadcast_id: @broadcast.id
    )
    expect(@subscription.broadcast_id).to eq(@broadcast.id)
  end
end
