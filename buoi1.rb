numbers = Array.new
while numbers.length <100 do
    begin
        puts "Nhap so nguyen: "
        
        a = Integer(gets)
        rescue
        puts "Khong hop le. Thu lai voi gia tri khac....."
        retry
        end

        if a == -1 then break
        elsif a >= 0 then numbers.push(a)
        else puts " Nhap so tu nhien"
        end
end

puts "Gia tri mang la : #{numbers}"
min = numbers[0]
numbers.each do |b| min = b if b < min
    puts b
end

puts "Phan tu mang gia tri nho nhat la: #{min}"
