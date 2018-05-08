class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :university
      t.string :generation
      t.string :degree
      t.string :representative
      t.timestamps
    end
  end
end
