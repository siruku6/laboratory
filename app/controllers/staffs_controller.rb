class StaffsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: StaffDatatable.new(params) }
    end
  end
end
