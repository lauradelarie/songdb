require 'rails_helper'

feature "manage songs", js:true do

  let!(:artist1) {create :artist}

  scenario "go to path" do

    visit artist_path(artist1)


    sleep(2)

  end

end
