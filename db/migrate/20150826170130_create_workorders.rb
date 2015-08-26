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
            t.string :street_name
            t.string :postal_code
            t.string :locality
            t.string :sublocality
            t.string :state
            t.string :country
            t.string :formatted_address
            t.decimal :latitude , :precision => 15, :scale => 10
            t.decimal :longitude , :precision => 15, :scale => 10
            t.string :place_id

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
