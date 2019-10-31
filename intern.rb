require "./employee.rb"
require "./manager.rb"
require "./email_reportable.rb"

class Intern < Employee
  include EmailReportable
end