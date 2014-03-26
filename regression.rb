# http://www.stat.wmich.edu/s216/book/node126.html

# Independent Variable
x1_data = [9300, 10565, 15000, 15000, 17764, 57000, 65940, 73676, 77006, 93739, 146088, 153260]

# Dependent Variable
y1_data = [7100, 15500, 4400, 4400, 5900, 4600, 8800, 2000, 2750, 2550, 960, 1025]

x1_count = 0
x1_mean = 0

for number in x1_data
  x1_count += 1
  x1_mean += number  
end

x1_mean = x1_mean/x1_count

puts x1_mean 

x1_var = 0

for number in x1_data
  x1_var += ((number - x1_mean) * (number - x1_mean))
end
puts x1_count
x1_var = x1_var/x1_count

puts Math.sqrt(x1_var)
