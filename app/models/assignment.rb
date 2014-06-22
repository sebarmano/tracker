class Assignment < ActiveRecord::Base
  attr_accessible :title, :description, :date, :due

  validates :title, :description, :date, :due, presence: true
  # validates :date, numericality: {less_than_or_equal_to: :due}
  validate :assign_it_before_it_is_due

  def assign_it_before_it_is_due
    if date >= due
      errors.add(:assign_it_before_it_is_due, ", the assignment can't be due before it is assigned!")
    end
  end
end
