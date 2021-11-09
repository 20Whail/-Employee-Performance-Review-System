require 'rufus-scheduler'

# Let's use the rufus-scheduler singleton
#
s = Rufus::Scheduler.singleton

# Awesome recurrent task...
#
# s.every '1m' do
#   puts 'Im in notification method)'
#   @employees = User.where(role: 'Employee')
#   # emails = @employees.collect(&:email).join(",")
#   @employees.each do |employee|
#     UserMailer.notify_to_employee(employee.email).deliver_now
#   end
#   Rails.logger.info "hello, it's #{Time.now}"
# end