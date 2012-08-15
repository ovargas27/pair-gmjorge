# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider 'google_oauth2'
    uid "sdfgd341241234"
    name "Fulanito"
    books {[]}
  end

  factory :user_with_books, parent: :user do
    books {[ FactoryGirl.create(:book), FactoryGirl.create(:book)]}
  end
end
