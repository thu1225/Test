class NhanVien
	def initialize(person)
		@number = person[:number].to_i
		@id = person[:id].to_i
		@name = person[:name]
		@date = person[:date].to_i
		@roll = person[:roll]
		@salary = person[:salary].to_i
		@day = person[:day].to_i
	end

	def sumSalary
		@salary*@day
	end

	def age
		Time.now.year - @date
	end
	
	def getInfoStaff
		puts "+"
		puts "|\tID: #{@id}"
		puts "|\tTen: #{@name}"
		puts "|\tTuoi: #{age}"
		puts "|\tLuong: #{sumSalary} VND"
		puts "+"
	end
end

def checkInt(int)
	return int.match(/^\d+$/)
end

def checkString(str)
	return str.match(/^[a-zA-Z\s]+$/)
end

def checkDate(int)
	return int.match(/^(19|20)+([0-9]{2})$/)
end

count = 0
listStaff = []
while true do
	puts "Nhap \"1\" de them nhan vien"
	puts "Nhap \"2\" de hien thi thong tin nhan vien"
	puts "Nhap \"3\" de thoat"
	puts "Nhap lua chon"
	choise = gets.chomp
	case choise
		when "1"
			employee = Hash.new
			temp = ""
			while true do
				print "Nhap vao so thu tu cua nhan vien: "
				temp = gets.chomp
				employee[:number] = temp
				break if checkInt(temp)
				puts "Vui long nhap so!"
			end
			while true do
				print "Nhap vao id: "
				temp = gets.chomp
				employee[:id] = temp
				break if checkInt(temp)
				puts "Vui long nhap so!"
			end
			while true do
				print "Nhap ten nhan vien: "
				temp = gets.chomp
				employee[:name] = temp
				break if checkString(temp)
				puts "Ten khong hop le!"
			end
			while true do
				print "Nhap nam sinh: "
				temp = gets.chomp
				employee[:date] = temp
				break if checkDate(temp) && temp.to_i < Time.now.year
				puts "Nam sinh khong hop le!"
			end
			while true do
				print "Nhap chuc vu cua nhan vien: "
				temp = gets.chomp
				employee[:roll] = temp
				break if checkString(temp)
				puts "Vui long nhap chu!"
			end
			while true do
				print "Nhap luong 1 ngay: "
				temp = gets.chomp
				employee[:salary] = temp
				break if checkInt(temp)
				puts "Luong khong hop le!"
			end
			while true do
				print "Nhap ngay lam: "
				temp = gets.chomp
				employee[:day] = temp
				break if checkInt(temp) && temp.to_i < 32
				puts "So ngay khong hop le!"
			end
			person = NhanVien.new(employee)
			person.getInfoStaff
			listStaff << person
		when "2"
			puts "THONG TIN NHAN VIEN"
			listStaff.each{|staff| staff.getInfoStaff}
		when "3"
			puts "Exit"
			break
	else
		puts "Sai lan #{count+=1}"
	end
	puts "\n"
	if count == 3
		puts "Sai 3 lan - Tu dung chuong trinh"
		break
	end
end
