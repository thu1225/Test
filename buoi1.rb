numbers = Array.new
while numbers.length <100 do
    begin
        puts "Nhap so nguyen: "
        
        a = Integer(gets) # biến a cần đặt có ý nghĩa hơn
        rescue
        puts "Khong hop le. Thu lai voi gia tri khac....."
        retry
        end

        if a == -1 then break # không cần dùng then nhé, nên xuống dòng cho dễ nhìn hơn
        elsif a >= 0 then numbers.push(a)
        else puts " Nhap so tu nhien"
        end
end

puts "Gia tri mang la : #{numbers}"
min = numbers[0]
numbers.each do |b| min = b if b < min # nên xuống dòng
    puts b
end

puts "Phan tu mang gia tri nho nhat la: #{min}"
    
# Chương trình e viết tốt, biến numbers biết đặt là số nhiều
# Một vài biến e nên đặt cho có ý nghĩa hơn nhé, cũng nên chú ý xuống dòng để dễ đọc
