class AddVideoToTutorials < ActiveRecord::Migration[6.0]
  def change
    add_column :tutorials, :video, :string
  end
end
