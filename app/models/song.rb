class Song < ApplicationRecord
  include ActiveModel::Validations
  validates :title, presence: true
  validates_with TitleValidator (cannot be repeated by same artist in same year)

  validates :released, presence: true

  validates :release_year, presence: true
  validates_with ReleaseYearValidator (less than or equal to current year)

  validates :artist_name, presence: true
end
