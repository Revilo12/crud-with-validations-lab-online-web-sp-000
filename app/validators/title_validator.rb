class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.email.match?(/flatironschool.com/)
      record.errors[:name] << "We're only allowed to have people who work for the company in the database!"
    end
  end

  def matching_songs(title)
    Song.all.select do |song|
      song.title == title
    end
  end
end
