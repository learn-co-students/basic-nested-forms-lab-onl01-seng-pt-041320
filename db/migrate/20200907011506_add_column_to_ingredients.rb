class AddColumnToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :ingredient_type, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
