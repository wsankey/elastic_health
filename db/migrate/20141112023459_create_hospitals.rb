class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :hosp_type
      t.string :city
      t.string :state
      t.string :def_desc
      t.string :complaint

      t.timestamps
    end
  end
end
