class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless matching_songs(record).length < 1
      record.errors[:title] << "Artist already has song of that title for this year"
    end
  end

  def matching_songs(record)
    Song.all.select do |song|
      song.title == record.title && song.artist == record.artist && song.release_year == record.release_year
    end
  end
end
