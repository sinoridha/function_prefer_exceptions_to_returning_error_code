require_relative './init'
require_relative './manager'
require_relative './staff'

logger = SimpleLogger.initiate_logger

puts '=> Result before ========'

andi = Manager.new

if andi.calculate_tax == "ok"
  if andi.calculate_nett_payroll == 'ok'
    logger.info("Payroll of Andi is #{andi.payroll_net}")
  else
    logger.info("Payroll calculation net payroll error")
  end
else
  logger.info("Payroll calculation tax error")
end


puts '=> Result good way ========'

ane = Staff.new

begin
  ane.calculate_tax
  ane.calculate_nett_payroll 
  logger.info("Payroll of Ane is #{ane.payroll_net}")
rescue StandardError => e
  logger.info("Payroll calculation error: #{e.message}")
end




