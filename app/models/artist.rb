class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  scope :created_at, -> { order(created_at: :desc) }
  scope :by_name, -> { order(name: :asc) }


  def self.search(search)
    if search
      where(["name LIKE ?", "%#{search}%"])
    else
      all
    end
  end


end
