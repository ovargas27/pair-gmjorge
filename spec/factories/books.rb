# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title 'UNIX Programacion avanzada'
    author 'Deitel & Deitel'
    numero_libro '9701510496'
  end
end
