class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.integer :guest_id, index: true
      t.integer :reservation_id, index: true

      t.timestamps null: false
    end
  end
end
