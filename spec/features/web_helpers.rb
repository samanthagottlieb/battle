def sign_in_and_play
  visit '/'
  fill_in('name_1', with: 'Constantine')
  fill_in('name_2', with: 'Samantha')
  click_button('Submit')
end
