class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions, force: :cascade do |t|
      t.references :broadcast, null: false, foreign_key: true
      t.boolean :watched, default: false
      t.string :email, limit: 191
      t.string :firstname
      t.string :surname
      t.string :registration_ip
      t.index ['broadcast_id'], name: "broadcast_id", using: :btree
      t.index ['email'], name: "index_subscriptions_on_email", unique: true, using: :btree

      t.timestamps
    end
  end
end
