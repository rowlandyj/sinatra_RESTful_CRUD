class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end

    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user

      t.timestamps
    end
  end
end
