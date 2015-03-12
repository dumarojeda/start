# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  name          :string(50)
#  row           :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  time_estimate :string(50)
#  excerpt       :string
#  description   :string
#

FactoryGirl.define do
  factory :course do
    name { Faker::Name.title}
    excerpt {Faker::Lorem.sentence}
    description { Faker::Lorem.paragraph}
  end
end