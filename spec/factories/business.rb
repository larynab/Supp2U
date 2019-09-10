FactoryBot.define do
  # factory :business do
  #   user_id { 1 }
  #   name { "Angelo's Taverna" }
  #   city { "Denver" }
  #   state { "CO" }
  #   street { "620 E 6th Ave" }
  #   zipcode { 80_203 }
  #   # add image url
  #   image {}
  # end
  factory :random_business, class: Business do
    # user_id { 1 }
    association :user, factory: :random_user
    name { Faker::Name.name }
    street { Faker::Address.street_address }
    zipcode {Faker::Company.sic_code}
    city { Faker::Address.city  }
    state { Faker::Address.state }
    image { { io: File.open('/Users/sibhattemelso/Desktop/test.png'), filename: "test.png", content_type: "image/png" }}
  end
end
