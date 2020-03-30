FactoryBot.define do
  factory :link do
    name { "Link Name" }
    url { "https://www.google.com" }
    user
  end
end
