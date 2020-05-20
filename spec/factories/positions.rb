FactoryBot.define do
  factory :position do
    title       { Faker::Job.title }
    description { Faker::Lorem.paragraph }
    skills      { [Faker::Job.key_skills] }
  end
end
