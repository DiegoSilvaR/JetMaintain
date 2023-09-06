class AddImageToMotors < ActiveRecord::Migration[7.0]
  def change
    add_column :motors, :image, :string
  end
end
