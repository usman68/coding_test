class CreateEmployments < ActiveRecord::Migration[7.0]
  def change
    create_table :employments do |t|
      t.integer :user_id
      t.string :employer
      t.date :date_started
      t.date :date_employment_ended

      t.timestamps
    end
  end
end
