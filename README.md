# Clean Code: Function: Prefer Exceptions to returning error code

Example Code of "Functions" chapter #3, section "Prefer Exceptions to returning error code" from Clean Code book by Robert C. Martin.

## Benefits

Benefits for your function when you apply this tips:
1. your function will apply command query separation.
2. prevent nested struc-tures in function caller.

## Sniped code

Before
```
if andi.calculate_tax == "ok"
  if andi.calculate_nett_payroll == 'ok'
    logger.info("Payroll of Andi is #{andi.payroll_net}")
  else
    logger.info("Payroll calculation net payroll error")
  end
else
  logger.info("Payroll calculation tax error")
end
```

Better
```
begin
  ane.calculate_tax
  ane.calculate_nett_payroll 
  logger.info("Payroll of Ane is #{ane.payroll_net}")
rescue StandardError => e
  logger.info("Payroll calculation error: #{e.message}")
end
```

# Simulation
Simulation could be tried in https://repl.it/@sinoridha/Function-Prefer-Exceptions-to-returning-error-code

or run the 
```
bundle exec ruby main.rb
```



