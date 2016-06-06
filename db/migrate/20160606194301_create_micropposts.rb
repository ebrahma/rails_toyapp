class CreateMicropposts < ActiveRecord::Migration
  def change
    create_table :micropposts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
