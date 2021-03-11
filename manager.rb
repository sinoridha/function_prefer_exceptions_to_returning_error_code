require_relative './abstract/employee'

class Manager < Employee
  def calculate_tax
    if rand_bool
      @tax_amount = 200
      return "ok"
    else
      return "nok"
    end
  end

  def calculate_nett_payroll
    if rand_bool
      @payroll_net = 2000 - @tax_amount
      return "ok"
    else
      return "nok"
    end
  end
end