require 'rails_helper'

RSpec.describe Broadcast, type: :model do
  before do
    @broadcast = Broadcast.create!(
      title: 'Test',
      broadcast_date: DateTime.now + 7
    )
    @subscriptions = []
    5.times do
      @subscriptions << Subscription.create!(
        email: Faker::Internet.email,
        firstname: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        broadcast_id: @broadcast.id
      )
    end
  end
  it 'should be able to get all subscriptions from specific broadcast' do
    expect(@broadcast.subscriptions.length).to eq(@subscriptions.length)
    expect(@broadcast.subscriptions).to include(@subscriptions.first)
    expect(@broadcast.subscriptions).to include(@subscriptions.last)
  end
end
