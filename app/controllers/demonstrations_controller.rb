class DemonstrationsController < ApplicationController
  def index
    binding.pry
    @staffs = Staff.includes(:language)
                   .all
                   .page(params[:page])
                   .per(10)
    @long_param = params[:long_parameter]
  end

  def export_staffs
    xlsx_file_name = 'samples.xlsx'
    response.headers['Content-Disposition'] = 'attachment;'
    render xlsx: 'staff_list', filaname: xlsx_file_name, locals: { staffs: Staff.includes(:language).all }
  end
end
