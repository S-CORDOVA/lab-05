class CreateAppointmentsTable < ActiveRecord::Migration[8.1]
  def change
    create_table :appointments do |t|
      t.belongs_to :pet
      t.belongs_to :vet
      t.datetime :date
      t.string :reason
      t.integer :status
      t.timestamps
    end
  end
end