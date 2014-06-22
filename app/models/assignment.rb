class Assignment < ActiveRecord::Base
  validates :title, :description, :date, :due, presence: true
  validate :assign_it_before_it_is_due
  attr_reader :id

  def assign_it_before_it_is_due
    if date >= due
      errors.add(:assign_it_before_it_is_due, ", the assignment can't be due before it is assigned!")
    end
  end



end
