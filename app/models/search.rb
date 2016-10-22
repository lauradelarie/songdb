class Search < ApplicationRecord
# ====ONLY FOR ADVANCED SEARCH=====

  def search_artists
    artists = Artist.all

    artists = Artist.where(["name LIKE ?", "%#{keywords}%"]) if keywords.present?
    # artists = Artist.where(["origin LIKE ?", album]) if origin.present?
    artists = Artist.where(["year >= ?", min_year]) if min_year.present?
    artists = Artist.where(["year <= ?", max_year]) if max_year.present?

    return artists

  end

end
