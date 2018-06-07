# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?


=begin
# Solution #1
sundays = 0
days_for_regular_years = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_for_leap_years = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days = 1901.upto(2000).map { |year|
  if year % 4 == 0 and year % 100 != 0
    days_for_leap_years
  elsif year % 4 == 0 and year % 100 == 0 and year % 400 == 0
    days_for_leap_years
  else
    days_for_regular_years
  end
}

days = days.reduce(:+)
days[0] += (365 % 7)

(0..1198).each do |month|
  mdays = (days[month] % 7)
  if mdays == 6
    sundays += 1
  end
  days[month+1] += mdays
end

puts sundays
=end

# Solution #2
require 'date'
start_date = Date.new(1901, 1, 1)
end_date = Date.new(2000, 12, 31)
sundays = 0
while start_date < end_date
  sundays += 1 if start_date.wday == 0
  start_date = start_date >> 1
end
puts sundays
