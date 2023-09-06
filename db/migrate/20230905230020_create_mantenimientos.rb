class CreateMantenimientos < ActiveRecord::Migration[7.0]
  def change
    create_table :mantenimientos do |t|
      t.string :tipo_motor
      t.string :tipo_mantenimiento
      t.references :motor, null: false, foreign_key: true
      t.string :ciudad
      t.string :materiales
      t.date :fecha_mantenimiento
      t.string :tecnico_email

      t.timestamps
    end
  end
end
