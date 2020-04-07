class StaffDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: { source: "Staff.id", cond: :eq },
      name: { source: "Staff.name", cond: :like }
    }
  end

  def data
    records.map do |record|
      {
        id: record.id,
        name: record.name
      }
    end
  end

  def get_raw_records
    # insert query here
    Staff.all
  end

end
