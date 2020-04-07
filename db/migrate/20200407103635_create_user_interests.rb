class CreateUserInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_interests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interestable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
