class ProcrastinationLog < ApplicationRecord
  belongs_to :task

  validates :reason, presence: true
end