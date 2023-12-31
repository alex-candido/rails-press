require 'faker'

FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    after( :build ) do |post|
      post.body = Faker::Lorem.paragraph(sentence_count: 25)
    end
  end
end
