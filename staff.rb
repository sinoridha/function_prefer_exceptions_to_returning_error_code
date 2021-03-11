require_relative './employee'

class Staff < Employee
  def calculate_tax
    if rand_bool 
      @tax_amount = 50
    else 
      raise "failed to calculate_tax"
    end
  end

  def calculate_nett_payroll
    if rand_bool
      raise "failed to calculate_nett_payroll"
    else
      @payroll_net = 1000 - @tax_amount
    end
  end
end