require_relative '../config'

class CreateStudents < ActiveRecord::Migration
  def change
    create_table(:students) do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :gender, :string
      t.column :birthday, :date
      t.column :email, :string
      t.column :phone, :string
      t.timestamps
    end
  end
end
