class Song < ApplicationRecord
    validates :title, presence: true, uniqueness: {scope: :release_year}
    validates :released, inclusion: {in: [true, false]}
    validates :release_year, presence: true, if: :released, inclusion: {in: (0..2020)}
    validates :artist_name, presence: true 
end
