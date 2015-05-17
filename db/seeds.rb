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

data = {
  "id": 0,
  "Which country do you want to go?": [
    {
      "USA": [
        {
          "id": 1,
          "Which visa are you looking for": [
            {
              "Tourist\/Business": [
                {
                  "id": 2,
                  "Are you visiting for tourism?": [
                    {
                      "Yes": "B2"
                    },
                    {
                      "No": "B1"
                    }
                  ]
                }
              ]
            },
            {
              "Student": [
                {
                  "id": 3,
                  "Are you going for a Vocational Program?": [
                    {
                      "Yes": "M"
                    },
                    {
                      "No": [
                        {
                          "id": 4,
                          "Are you going to pursue a full degree course?, say No if you are going for a short term Internship or Exchange Program": [
                            {
                              "Yes": "F"
                            },
                            {
                              "No": "J"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "Transit via USA": "Null"
            },
            {
              "Employment": "Null"
            },
            {
              "Immigrate": "Null"
            }
          ]
        }
      ]
    },
    {
      "Spain": [
        {
          "id": 0,
          "Which visa are you looking for": [
            {
              "Tourist\/Business": [
                {
                  "id": 1,
                  "Are you visiting for tourism?": [
                    {
                      "Yes": "B2"
                    },
                    {
                      "No": "B1"
                    }
                  ]
                }
              ]
            },
            {
              "Student": [
                {
                  "id": 2,
                  "Are you going for a Vocational Program?": [
                    {
                      "Yes": "M"
                    },
                    {
                      "No": [
                        {
                          "id": 3,
                          "Are you going to pursue a full degree course?, say No if you are going for a short term Internship or Exchange Program": [
                            {
                              "Yes": "F"
                            },
                            {
                              "No": "J"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "Employment": "Null"
            },
            {
              "Immigrate": "Null"
            }
          ]
        }
      ]
    }
  ]
}

Question.create(data: data)
