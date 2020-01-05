class DemonstrationsController < ApplicationController
  def index; end

  def export_staffs
    xlsx_file_name = 'samples.xlsx'
    response.headers['Content-Disposition'] = 'attachment;'
    render xlsx: 'staff_list', filaname: xlsx_file_name, locals: { staffs: Staff.includes(:language).all }
  end
end
