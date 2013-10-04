class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :rolnr
      t.string :programme
      t.references :event

      t.timestamps
    end
  end
end
