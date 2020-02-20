class AddSlugToTutorials < ActiveRecord::Migration[6.0]
  def change
    add_column :tutorials, :slug, :string
    add_index :tutorials, :slug, unique: true
  end
end
