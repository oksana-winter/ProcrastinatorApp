class SendNotificationsJob < ApplicationJob
  queue_as :default

  def perform
    Notification.where(sent: false).where("scheduled_for <= ?", Time.current).find_each do |notification|
      # Тут можно добавить отправку email или push (пока просто логируем)
      puts "Уведомление для пользователя #{notification.user.email}: #{notification.content}"

      notification.update(sent: true)
    end
  end
end
# Этот класс отвечает за отправку уведомлений пользователям.
# Он ищет все уведомления, которые еще не были отправлены и время их отправки
# уже наступило. Затем для каждого такого уведомления выполняется логирование