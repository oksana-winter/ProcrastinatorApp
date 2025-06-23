class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :status, inclusion: { in: %w[pending completed postponed] }
  validates :priority, inclusion: { in: %w[low medium high], message: "%{value} is not a valid priority" }


  # Method to check if the task is completed
  def pending?
    status == "pending"
  end

  # ... another methods can be added here as needed
end
