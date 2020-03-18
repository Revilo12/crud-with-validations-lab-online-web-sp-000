class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless matching_songs(record)
      record.errors[:name] << "We're only allowed to have people who work for the company in the database!"
    end
  end

  def matching_songs(record)
    Song.all.select do |song|
      song.title == title
      song.artist == artist
      song.release_year == release_year
    end
  end
end
