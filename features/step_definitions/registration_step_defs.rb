Given("I have a data table") do |table|
  @table = table.raw
end

Then("I am able to print out the information") do
  @table.each do |row|
    expect(row).to be_a Array
  end

  @table.each do |row|
    puts "Users Email is #{row.first} and their password is #{row.last}"
    expect(row[0]).to be_a String
    expect(row[1]).to be_a String
  end

  Then("I have the correct email validation") do
    @table.each do |row|
    EmailAddress.valid? "#{row}"
    end
  end
end
