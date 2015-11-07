# from the rightmost digit, which is the check digit, moving left, double the value of every second digit
# if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
# take the sum of all the digits
# if and only if the total modulo 10 is equal to 0 then the number is valid
card_number = "5541808923795240"
array = card_number.split('')
valid = false

new_array= []

new_array << array[-1]

if array[-2].to_i * 2 > 9
  new_array << array[-2].to_i * 2 - 9
else
  new_array << array[-2].to_i * 2
end

new_array << array[-3]
if array[-4].to_i * 2 > 9
  new_array << array[-4].to_i * 2 - 9
else
  new_array << array[-4].to_i * 2
end

new_array << array[-5]
if array[-6].to_i * 2 > 9
  new_array << array[-6].to_i * 2 - 9
else
  new_array << array[-6].to_i * 2
end

new_array << array[-7]
if array[-8].to_i * 2 > 9
  new_array << array[-8].to_i * 2 - 9
else
  new_array << array[-8].to_i * 2
end

new_array << array[-9]
if array[-10].to_i * 2 > 9
  new_array << array[-10].to_i * 2 - 9
else
  new_array << array[-10].to_i * 2
end

new_array << array[-11]
if array[-12].to_i * 2 > 9
  new_array << array[-12].to_i * 2 - 9
else
  new_array << array[-12].to_i * 2
end

new_array << array[-13]
if array[-14].to_i * 2 > 9
  new_array << array[-14].to_i * 2 - 9
else
  new_array << array[-14].to_i * 2
end

new_array << array[-15]
if array[-16].to_i * 2 > 9
  array[-16].to_i * 2 - 9
end

new_array << array[-16]

p new_array

sum = 0
third_array = new_array.each do |i|
  sum += i.to_i
end


if sum % 10 == 0
  valid = true
  p "The Number is #{valid}"
else
  p "The Number is #{valid}"
end

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
