class CreatePostModels < ActiveRecord::Migration[5.0]
  def change
    create_table :post_models do |t|
      t.integer :user_model_id
      t.text :body

      t.timestamps
    end
    add_index :post_models, :user_model_id
  end
end
