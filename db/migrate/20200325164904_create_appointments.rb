class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :issue
      t.text :notes
      t.integer :rating
      t.boolean :resolved
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :consultant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
