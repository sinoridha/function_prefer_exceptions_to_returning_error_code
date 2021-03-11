class Employee
  attr_accessor :payroll_net, :tax_amount

  def calculate_tax
    raise "undefine method calculate_tax"
  end

  def calculate_nett_payroll
    raise "calculate_nett_payroll"
  end
end