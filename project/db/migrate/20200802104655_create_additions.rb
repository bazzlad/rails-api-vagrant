class CreateAdditions < ActiveRecord::Migration[6.0]
  def change
    create_table :additions do |t|
      t.text :name
      t.text :tags

      t.timestamps
    end
  end
end
