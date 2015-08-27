class CreateWorkorders < ActiveRecord::Migration
    def change
        create_table :workorders do |t|
            t.string :fname
            t.string :lname
            t.integer :phone, :limit => 8 
            t.string :email
            t.string :property_name
            t.string :address
            t.string :street_number
            t.string :route
            t.string :postal_code
            t.string :locality
            t.string :sublocality
            t.string :administrative_area_level_1
            t.string :country
            t.string :formatted_address
            t.decimal :lat , :precision => 15, :scale => 10
            t.decimal :lng , :precision => 15, :scale => 10
            t.string :category
            t.string :issue_object
            t.string :detail_lvl_one
            t.string :detail_lvl_two
            t.text :notes
            t.string :state
            t.string :uuid
            t.string :slug
            t.index :uuid
            t.index :slug
            t.index :state
            t.timestamps
        end
    end
end
