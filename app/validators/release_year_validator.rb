class ReleaseYearValidator < ActiveModel::Validator
  def validate(record)
    unless record.is_a? Integer && record <= Time.new.year
      record.errors[:name] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end
