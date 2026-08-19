class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :descreption

      t.timestamps
    end
  end
end
