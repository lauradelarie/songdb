require 'rails_helper'

feature 'Manage songs', js: true do

  let!(:artist1) {create :artist}

  scenario 'add a new song' do

    # Point your browser towards the todo path
    visit artist_path
    # visit artist_path(artist1)

    # Enter description in the text field
    fill_in 'song_title', with: 'Be Batman'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Be Batman')
  end

  scenario 'remove a song' do
    visit artist_path
    # visit artist_path(artist1)


    fill_in 'song_title', with: 'go to candy mountain'
    page.execute_script("$('form').submit()")

    check('song-1')

    sleep(1)

    expect(page).not_to have_text('go to candy mountain')
  end

  scenario 'clean up all songs in one click' do
    let!(:artist1) {create :artist}
    visit artist_path
    # visit artist_path(artist1)

    fill_in 'song_title', with: 'go to candy mountain'
    page.execute_script("$('form').submit()")

    fill_in 'song_title', with: 'Be Batman'
    page.execute_script("$('form').submit()")

    click('Clear all')

# all song titles will have an html tag with p#song_title
    expect(page.not_to.find(:html, 'p#song_title'))

    end

end
