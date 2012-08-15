Given /^that a user is loggin correctly$/ do
  FactoryGirl.build(:user)
  @book = FactoryGirl.create(:book)
  @book2 = FactoryGirl.create(:book, status: 'unavailable')
end

Given /^visit books index view$/ do
  visit books_path
  click_link 'Show'
end

When /^take an available book$/ do
  @book.status.should == 'available'
end

Then /^the book change his status tu unavailable$/ do
  @book.status.should == 'unavailable'
end

Then /^appear a success message$/ do
  page.should have_content('You take a book!')
end

When /^take an unavailable book$/ do
  @book2.status.should == 'unavailable'
end

Then /^appear an error message$/ do
  page.should have_content('You can not take this book!!!')
end

When /^have borrow books$/ do
  @user_with_books = FactoryGirl.create(:user_with_books)
end

When /^visite the borrowed books$/ do
  visit user_books(@user_with_books.id)
end

Then /^show the list of borrowed books$/ do
  pending
  puts @user_with_books.book.title
end
