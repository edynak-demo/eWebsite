class AddPostStatusToTutorials < ActiveRecord::Migration[6.0]
  def change
    add_column :tutorials, :status, :integer, default: 0
  end
end
