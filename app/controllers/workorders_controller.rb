class WorkordersController < ApplicationController
    def create
        @workorder = Workorder.create(workorders_param)
        puts 'succeeded'
        redirect_to :back


    end

    def new
        @workorder = Workorder.new
    end

    private
    def workorders_param
        params.permit(:fname, :lname, :phone, :email,:name,:postal_code,:place_id,:street_number,:locality,:sublocality,:latitude,:longtitude,:formatted_address,:state,:country,:streetview,:mapview,:property_type,:condounitnumber)

    end
end
