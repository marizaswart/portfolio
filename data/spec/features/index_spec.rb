it 'display name as title' do
  expect(page).to have_title 'Mariza'
end

it 'displays the body of the file' do
  expect(page).to have_content 'body'
end

it 'displays project list' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My First Website'
      expect(page).to have_content 'FizzBuzz'
    end
  end
  
  it 'renders header partial' do
    expect(page).to have_selector 'header'
    within 'header' do
      expect(page).to have_content 'Mariza Swart'
    end
  end

  it 'renders footer partial' do
  expect(page).to have_selector 'footer'
  within 'footer' do
    expect(page).to have_content 'My Portfolio'
    expect(page).to have_content 'Built using the awesome Middleman framework'
  end
end
