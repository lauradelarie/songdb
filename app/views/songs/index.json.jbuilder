json.array!(@songs) do |song|
  json.extract! song, :id, :title, :completed
  json.url song_url(song, format: :json)
end
