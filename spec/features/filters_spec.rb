require 'rails_helper'

describe "by_name" do

  let!(:artist1) {create :artist, name: "A"}
  let!(:artist2) {create :artist, name: "Z"}

  it "orders artist name from a to z" do
    visit by_name_artists_path

    expect(Artist.first).to eq(artist1)
    expect(Artist.last).to eq(artist2)
  end

end

describe "created_at" do

  let!(:artist1) {create :artist, created_at: 1.days.from_now}
  let!(:artist2) {create :artist, created_at: 2.days.from_now}

  it "orders artists by the last created" do
    visit created_at_artists_path

    expect(Artist.first).to eq(artist1)
    expect(Artist.last).to eq(artist2)
  end

end
