def is_num?(str)
  !!Integer(str) 
rescue ArgumentError, TypeError
  false
end

puts "Nhap so luong phan tu cua mang : "
number_of_elements = gets.chomp

until is_num?(number_of_elements) 
    puts "Nhap so tu nhien..."
    number_of_elements = gets.chomp
end

n = number_of_elements.to_i
        numbers_Random= Array.new(n) { |i| i = rand(1..9)}
        print "Mang Random la: #{numbers_Random}\n"

        start = 0
        level = 1
        n = n - 1

        for i in 0..n
            if i==n
            print "mang con tang #{level} : #{numbers_Random[start..i]}\n"
            else    
            if numbers_Random[i] > numbers_Random[i+1]
                print "mang con tang #{level} : #{numbers_Random[start..i]}\n"
                start = i+1
                level = level + 1
            end
            end
        end
