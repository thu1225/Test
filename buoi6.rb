target_sum =20
arr_numbers = [10,2,18,-20]
two_numbers = Array.new

for i in 0..arr_numbers.length
  num = arr_numbers[i].to_i
  sub = target_sum - num
  
  if arr_numbers.include?(sub) && sub != num
    two_numbers.push(num,sub)
    break
  end

end

puts "Hai phan tu co tong bang #{target_sum} la: " + two_numbers.to_s
