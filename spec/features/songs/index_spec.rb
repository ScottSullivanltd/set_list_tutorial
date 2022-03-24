require 'rails_helper'

RSpec.describe 'the songs index page', type: :feature do

  it 'can see all songs titles and play count' do
    artist = Artist.create!(name: 'Carly Rae Jepsen')
    song1 = artist.songs.create!(title: "I Really Like You", length: 208, play_count: 2456357)
    song2 = artist.songs.create!(title: "Call Me Maybe", length: 199, play_count: 21456357)

    visit "/songs"

    expect(page).to have_content(song1.title)
    expect(page).to have_content("Play Count: #{song1.play_count}")
    expect(page).to have_content("Length: #{song1.length}")
    expect(page).to have_content(song2.title)
    expect(page).to have_content("Play Count: #{song2.play_count}")
    expect(page).to have_content("Length: #{song2.length}")
  end
end
