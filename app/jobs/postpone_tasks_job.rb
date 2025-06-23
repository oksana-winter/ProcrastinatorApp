class PostponeTasksJob < ApplicationJob
  queue_as :default

  def perform
    Task.where("due_date < ? AND status = ?", Time.current, 'pending').find_each do |task|
      task.update(
        due_date: task.due_date + 1.day,
        status: 'postponed'
      )
      Notification.create!(
        user: task.user,
        content: "Задача '#{task.title}' была автоматически перенесена на #{task.due_date.strftime("%d.%m.%Y")}",
        scheduled_for: Time.current,
        sent: false
      )
    end
  end
end
