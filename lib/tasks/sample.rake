namespace :sample do
  desc "TODO"

  task notification: :environment do
    puts 'Im in notification method)'
    @employees = User.where(role: 'Employee')
    # emails = @employees.collect(&:email).join(",")
    @employees.each do |employee|
      UserMailer.notify_to_employee(employee.email).deliver_now
    end
  end

end
