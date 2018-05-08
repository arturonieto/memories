class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :cellphone
      t.string :base_agradecimiento
      t.string :base_agradecimiento_color
      t.string :base_agradecimiento_3d
      t.string :base_agradecimiento_tamaño
      t.string :base_agradecimiento_fondo
      t.string :base_agradecimiento_final
      t.string :placa_agradecimiento
      t.string :placa_agradecimiento_color
      t.string :placa_agradecimiento_final
      t.string :base_diploma
      t.string :base_diploma_color
      t.string :base_diploma_3d
      t.string :base_diploma_tamaño
      t.string :base_diploma_fondo
      t.string :base_diploma_final
      t.string :placa_diploma
      t.string :placa_diploma_color
      t.string :placa_diploma_final
      t.string :base_foto
      t.string :base_foto_color
      t.string :base_foto_3d
      t.string :base_foto_tamaño
      t.string :base_foto_fondo
      t.string :base_foto_final
      t.string :placa_foto
      t.string :placa_foto_color
      t.string :placa_foto_final
      t.string :anillo
      t.string :anillo_tamaño
      t.string :anillo_final
      t.string :regalo1
      t.string :regalo2
      t.string :regalo3
      t.string :regalo4
      t.references :group
      t.timestamps
    end
  end
end



