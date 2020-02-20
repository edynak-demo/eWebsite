class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :title
      t.integer :level_percentage

      t.timestamps
    end
  end
end
