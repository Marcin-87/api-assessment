class CreateBroadcasts < ActiveRecord::Migration[6.1]
  def change
    create_table :broadcasts, force: :cascade do |t|
      t.string :title
      t.datetime :broadcast_date
      t.integer :subscriptions_count, default: 0

      t.timestamps
    end
  end
end
