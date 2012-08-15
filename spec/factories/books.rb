# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title 'UNIX Programacion avanzada'
    author 'Francisco M. Marquez'
    numero_libro '9701510496'
    status 'available'
  end
end
