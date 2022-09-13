class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
