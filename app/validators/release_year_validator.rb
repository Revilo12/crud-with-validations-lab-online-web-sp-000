class ReleaseYearValidator < ActiveModel::Validator
  def validate(record)
    binding.pry
    unless !!record.release_year && record.release_year < Time.new.year
      record.errors[:release_year] << "Year cannot be later than current year"
    end
  end
end
