class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
