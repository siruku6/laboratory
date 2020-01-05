staffs = (1..10000).map do |i|
  Staff.new(
    name: "#{Faker::Name.name}_#{i}",
    language_id: Language.first.id
  )
end

Staff.import(staffs, validate: false)
