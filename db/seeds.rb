# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


visa_list = [
  [ "USA",  "F1", "$160"],
  [ "USA",  "J1", "$160"],
  [ "USA",  "H1", "$190"],
  [ "USA",  "B1", "$160"],
]

visa_list.each do |country, categories, price|
  Visa.create(country: country, categories: categories, price:price)
end


document_list = [
  [ "passport",  true, "2015-05-17 03:33:31", false, "/var/tmp/passport.jpg"],
  [ "ds2019",  true, "2015-05-17 03:33:31", true, "/var/tmp/ds2019.jpg"],
]

document_list.each do |name, status, timestamp, scannedRequirement, scannedImagePath|
  Document.create(name: name, status: status, timestamp:timestamp, scannedRequirement:scannedRequirement, scannedImagePath:scannedImagePath)
end

