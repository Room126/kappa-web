class CreateEmoticons < ActiveRecord::Migration[5.1]
  def change
    create_table :emoticons do |t|
      t.string :name

      t.timestamps
    end
  end
end
