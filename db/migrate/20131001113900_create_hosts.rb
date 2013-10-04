class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :extrainfo
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
