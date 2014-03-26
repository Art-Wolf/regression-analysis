# http://www.stat.wmich.edu/s216/book/node126.html

# Independent Variable
x1_data = [9300, 10565, 15000, 15000, 17764, 57000, 65940, 73676, 77006, 93739, 146088, 153260]

# Dependent Variable
y1_data = [7100, 15500, 4400, 4400, 5900, 4600, 8800, 2000, 2750, 2550, 960, 1025]

x1_count = 0
x1_mean = 0
x1_var = 0
x1_ss = 0

for number in x1_data
  x1_count += 1
  x1_ss += number  
end

x1_mean = x1_ss/x1_count

for number in x1_data
  x1_var_sum += ((number - x1_mean) * (number - x1_mean))
end

x1_var = x1_var_sum/(x1_count - 1)
x1_std = Math.sqrt(x1_var)

y1_count = 0
y1_mean = 0
y1_var = 0
y1_ss = 0

for number in y1_data
  y1_count += 1
  y1_ss += number
end

y1_mean = y1_ss/y1_count

for number in y1_data
  y1_var_sum += (number - y1_mean) * (number - y1_mean)
end

y1_var = y1_var_sum/(y1_count - 1)
y1_std = Math.sqrt(y1_var)

x1y1_ss = 0
x1_data.each_with_index do |number, index|
  puts y1_data[index]
  x1y1_ss += (number - x1_mean) * (y1_data[index] - y1_mean)
end

r_correlation_coefficient = x1y1_ss / Math.sqrt(x1_var_sum * y1_var_sum)

puts Math.sqrt(r_correlation_coefficient)

