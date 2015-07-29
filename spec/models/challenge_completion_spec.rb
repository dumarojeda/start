# == Schema Information
#
# Table name: challenge_completions
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  challenge_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_challenge_completions_on_challenge_id  (challenge_id)
#  index_challenge_completions_on_user_id       (user_id)
#

require 'rails_helper'

RSpec.describe ChallengeCompletion, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
