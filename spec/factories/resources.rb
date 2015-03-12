# == Schema Information
#
# Table name: resources
#
#  id            :integer          not null, primary key
#  course_id     :integer
#  title         :string(100)
#  description   :string
#  row           :integer
#  type          :integer
#  url           :string
#  time_estimate :string(50)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :resource do
    title { Faker::Name.title}
    description { Faker::Lorem.paragraph}
    url { Faker::Internet.url}
    time_estimate {"#{Faker::Number.digit} days"}
    association  :course, factory: :course
  end

end