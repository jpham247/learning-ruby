def branching()
  isBoolean = true
  caseIndicator = "case1"
  if (isBoolean)
    puts "Is Boolean"
  elsif (!isBoolean)
    puts "Not Boolean"
  else
    puts "Catch All."
  end

  case caseIndicator
  when "case1"
    puts "It is Case 1"
  when "case2"
    puts "It is Case 2"
  else
    puts "Switch Catch All"
  end

end
