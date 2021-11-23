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
# Code e viết gọn, dễ đọc
# A có vài góp ý nhỏ:
# 1. A mới thấy code mà có !! luôn ah e
# 2. Biến theo format bình thường của ruby là chữ thường hết nhé e. VD: numbers_Random -> numbers_random
# 3. Em có thể xem xét hàm input từ user, nếu kg đúng thì nhập lại -> có thể tách ra hàm để dễ quản lý
# 4. Em cần chú ý hơn cách tab thụt vào cho đễ đọc. VD: line 25, 32
# 5. Giữa các toán tử e có thể cách ra cho dễ đọc. VD: start = i + 1 hoặc if i == n
# 6. Biến e cần đặt có ý nghĩa hơn, tránh việc sử dụng a, b, n
