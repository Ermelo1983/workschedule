# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: ENV["EMAIL"], password: ENV["PASSWORD"], department: ENV["DEPARTMENT"], role: ENV["ROLE"], floor: ENV["FLOOR"], full_time: ENV["FULL_TIME"], first_name: ENV["FIRST_NAME"], last_name: ENV["LAST_NAME"])
Location.create!([{name: "Dillenburg", street: 'Dennenlaan', house_number: 2, zip_or_postal_code: '3851 PW', city: 'Ermelo'},
  {name: "Arcade", street: 'van Asseltlaan', house_number: 2, zip_or_postal_code: '3852 BX', city: 'Ermelo'},
  {name: "Amaniet", street: 'Varenlaan', house_number: 129, zip_or_postal_code: '3852 CP', city: 'Ermelo'},
  {name: "IJsvogel", street: 'IJsbaanweg', house_number: 37, zip_or_postal_code: '3851 CP', city: 'Ermelo'},
  {name: "Elim", street: 'Engweg', house_number: 46, zip_or_postal_code: '3882 AL', city: 'Putten'},
  {name: "Hospice Jasmijn", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Ittmannshof", street: 'Ittmannserf', house_number: 1, zip_or_postal_code: '8071 JK', city: 'Nunspeet'},
  {name: "Reactiveringscentrum Klimop", street: 'Wethouder Jansenlaan', house_number: 90, zip_or_postal_code: '3844 DG', city: 'Harderwijk'},
  {name: "Randmeer", street: 'Westeinde', house_number: 14, zip_or_postal_code: '3844 DE', city: 'Harderwijk'},
  {name: "Schauw", street: 'Schauwplein', house_number: 27, zip_or_postal_code: '3882 AV', city: 'Putten'},
  {name: "Sonnevanck: Crocus", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Sonnevanck: Brem", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Sonnevanck: Iris", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Sonnevanck: Hortensia", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Sonnevanck: Myrthe", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Sonnevanck: Rozemarijn", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Sonnevanck: Korenbloem", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'},
  {name: "Sonnevanck: Dahlia", street: 'Sonnevancklaan', house_number: 2, zip_or_postal_code: '3847 LC', city: 'Harderwijk'}
  ])

  Unit.create!([{name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 1},
    {name: 'floor 2', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 1},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 2},
    {name: 'floor 2', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 2},
    {name: 'floor 3', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 2},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 3},
    {name: 'floor 2', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 3},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 4},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 5},
    {name: 'floor 1', specialism: 'Care for terminal people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 6},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 7},
    {name: 'floor 2', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 7},
    {name: 'floor 3', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 7},
    {name: 'floor 4', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 7},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 8},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 9},
    {name: 'floor 2', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 9},
    {name: 'floor 3', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 9},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 10},
    {name: 'floor 2', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 10},
    {name: 'floor 3', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 10},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 11},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 12},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 13},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 14},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 15},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 16},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 17},
    {name: 'floor 1', specialism: 'Care for elderly people', description: 'tyou can put additional info here', care_burden: 'light', location_id: 18}
    ])

    ShiftType.create!([{name: 'N06', description: "night", start_time: "23.00", end_time: "07.00", quantity_per_day: 1, location_id: 1, per_location: 1},
      {name: 'O10', description: "morning", start_time: "07.00", end_time: "13.00", quantity_per_day: 1, location_id: 1, per_unit: 1},
      {name: 'O04', description: "morning(short)", start_time: "07.00", end_time: "11.00", quantity_per_day: 1, location_id: 1, per_unit: 1},
      {name: 'D08', description: "day(short)", start_time: "07.00", end_time: "15.00", quantity_per_day: 1, location_id: 1, per_location: 1},
      {name: 'D10', description: "day", start_time: "07.00", end_time: "15.30", quantity_per_day: 1, location_id: 1, per_unit: 1},
      {name: 'LC7', description: "evening", start_time: "15.30", end_time: "23.00", quantity_per_day: 1, location_id: 1, per_unit: 1},
      {name: 'L?', description: "evening(short)", start_time: "17.00", end_time: "22.00", quantity_per_day: 1, location_id: 1, per_location: 1}
      ])

      Employee.create!([{first_name: "Miriam", last_name: "Johnson", street: "Hamburgerweg", house_number: 34, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "04-06-1985", bank_account: "NL73RABO0354270192", payscale: "F-43", persons_number: "0123456789", contract_hours: 32, unit_id: 1 },
        {first_name: "Aryanna", last_name: "Giordana", street: "Hamburgerweg", house_number: 33, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "04-06-1985", bank_account: "NL73RABO0354270193", payscale: "F-43", persons_number: "0023456789", contract_hours: 32, unit_id: 1 },
        {first_name: "Charlotte", last_name: "Duncan", street: "Hamburgerweg", house_number: 35, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "05-06-1985", bank_account: "NL73RABO0354270194", payscale: "F-43", persons_number: "1123456789", contract_hours: 20, unit_id: 1 },
        {first_name: "Jennifer", last_name: "Fitzsimmons", street: "Hamburgerweg", house_number: 36, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "06-06-1985", bank_account: "NL73RABO0354270195", payscale: "F-43", persons_number: "2123456789", contract_hours: 40, unit_id: 1 },
        {first_name: "Danielle", last_name: "Fournier", street: "Hamburgerweg", house_number: 37, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "07-06-1985", bank_account: "NL73RABO0354270196", payscale: "F-43", persons_number: "3123456789", contract_hours: 24, unit_id: 1 },
        {first_name: "Ted", last_name: "Mosby", street: "Hamburgerweg", house_number: 38, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "08-06-1985", bank_account: "NL73RABO0354270197", payscale: "F-43", persons_number: "4123456789", contract_hours: 40, unit_id: 1 },
        {first_name: "Robin", last_name: "Scherbatsky", street: "Hamburgerweg", house_number: 39, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "09-06-1985", bank_account: "NL73RABO0354270198", payscale: "F-43", persons_number: "5123456789", contract_hours: 32, unit_id: 1 },
        {first_name: "Barney", last_name: "Stinson", street: "Hamburgerweg", house_number: 40, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "10-06-1985", bank_account: "NL73RABO0354270199", payscale: "F-43", persons_number: "6123456789", contract_hours: 36, unit_id: 1 },
        {first_name: "Lily", last_name: "Aldrin", street: "Hamburgerweg", house_number: 41, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "11-06-1985", bank_account: "NL73RABO0354270180", payscale: "F-43", persons_number: "7123456789", contract_hours: 28, unit_id: 1 },
        {first_name: "Marshall", last_name: "Eriksen", street: "Hamburgerweg", house_number: 42, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "12-06-1985", bank_account: "NL73RABO0354270181", payscale: "F-43", persons_number: "8123456789", contract_hours: 40, unit_id: 1 },
        {first_name: "Sarah", last_name: "Manning", street: "Hamburgerweg", house_number: 43, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "13-06-1985", bank_account: "NL73RABO0354270182", payscale: "F-43", persons_number: "9123456789", contract_hours: 32, unit_id: 2 },
        {first_name: "Helena", last_name: "Unknown", street: "Hamburgerweg", house_number: 44, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "14-06-1985", bank_account: "NL73RABO0354270183", payscale: "F-43", persons_number: "1023456789", contract_hours: 40, unit_id: 2 },
        {first_name: "Cosima", last_name: "Niehaus", street: "Hamburgerweg", house_number: 45, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "15-06-1985", bank_account: "NL73RABO0354270184", payscale: "F-43", persons_number: "1123456789", contract_hours: 40, unit_id: 2 },
        {first_name: "Kira", last_name: "Manning", street: "Hamburgerweg", house_number: 46, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "16-06-1985", bank_account: "NL73RABO0354270185", payscale: "F-43", persons_number: "1223456789", contract_hours: 28, unit_id: 2 },
        {first_name: "Rachel", last_name: "Duncan", street: "Hamburgerweg", house_number: 47, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "17-06-1985", bank_account: "NL73RABO0354270186", payscale: "F-43", persons_number: "1323456789", contract_hours: 24, unit_id: 2 },
        {first_name: "Beth", last_name: "Childs", street: "Hamburgerweg", house_number: 48, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "18-06-1985", bank_account: "NL73RABO0354270187", payscale: "F-43", persons_number: "1423456789", contract_hours: 20, unit_id: 2 },
        {first_name: "Alison", last_name: "Hendrix", street: "Hamburgerweg", house_number: 49, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "19-06-1985", bank_account: "NL73RABO0354270188", payscale: "F-43", persons_number: "1523456789", contract_hours: 20, unit_id: 2 },
        {first_name: "M.", last_name: "K.", street: "Hamburgerweg", house_number: 50, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "20-06-1985", bank_account: "NL73RABO0354270189", payscale: "F-43", persons_number: "1623456789", contract_hours: 32, unit_id: 2 },
        {first_name: "Krystal", last_name: "Goderitch", street: "Hamburgerweg", house_number: 51, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "21-06-1985", bank_account: "NL73RABO0354270179", payscale: "F-43", persons_number: "1723456789", contract_hours: 28, unit_id: 2 },
        {first_name: "Katja", last_name: "Obinger", street: "Hamburgerweg", house_number: 52, zip_or_postal_code: "3851 EM", city: "Ermelo", birth_date: "22-06-1985", bank_account: "NL73RABO0354270178", payscale: "F-43", persons_number: "1823456789", contract_hours: 12, unit_id: 2 }
        ])
