class CreateGuas < ActiveRecord::Migration[5.0]
  def change
    create_table :guas do |t|
      t.string :name
      t.string :email
      t.integer :number

      t.timestamps
    end
  end
end
