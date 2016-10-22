require 'rails_helper'

describe "by_name" do

  let!(:artist1) {create :artist, name: "A"}
  let!(:artist2) {create :artist, name: "Z"}

  it "order name from a to z" do
    visit by_name_artists_path

    expect(Artist.first).to eq(artist1)
    expect(Artist.last).to eq(artist2)
  end
end
