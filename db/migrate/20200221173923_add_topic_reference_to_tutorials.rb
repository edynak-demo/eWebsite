class AddTopicReferenceToTutorials < ActiveRecord::Migration[6.0]
  def change
    add_reference :tutorials, :topic, foreign_key: true
  end
end
