class CreatArticle < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description

      t.timestamps # Automatically adds created_at and updated_at
    end
  end
end
