# == Schema Information
#
# Table name: lessons
#
#  id           :integer          not null, primary key
#  section_id   :integer
#  name         :string
#  video_url    :string
#  description  :text
#  row          :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  free_preview :boolean          default("false")
#

FactoryGirl.define do

  factory :lesson do
    section { create(:section) }
    name "Just another lesson"
    video_url { Faker::Internet.url }
    description { Faker::Lorem.paragraph }
    row 1
    free_preview false
  end

end