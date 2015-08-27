class WorkordersController < ApplicationController
    def create
        @workorder = Workorder.new(address_param)
        @workorder.update_attributes(workorder_param)
        @workorder.save!
        puts 'succeeded'
        redirect_to completed_path


    end

    def completed

    end

    def new
        @workorder = Workorder.new
    end

    private
    def address_param
        params.permit(:postal_code,:address,:street_number,:route,:locality,:sublocality,:lat,:lng,:formatted_address,:administrative_area_level_1,:country)
    end

    def workorder_param
        params.require(:workorder).permit(:fname,:lname, :phone, :email, :address,:category,:issue_object,:detail_lvl_one,:detail_lvl_two,:notes,:uuid)
    end
end
