require 'csv'
require 'pg'

#Tao file

CSV.open("at.csv","wb") do |csv|
csv << ["name","email","phone","address","day_of_birth","profile"]
profile= "Like TV 100\", Some special charactor: \\ / ' $ ~ & @ # ( ; \""

(1..500000).each do |n| 
email = "nguyenvana#{n}@gmail.com"
name = "Nguyen Van A #{n}"
 csv << [name,email,123456789,'Ho Chi Minh city','2000/01/01',profile]
end
end

# Bat đau doc file và import vào DB

start_time = Time.now
db = PG.connect(dbname: 'ruby', user: 'anhthu')
CSV.foreach('at.csv','r') do |row|
db.exec(INSERT INTO info (name,email,phone,address,day_of_birth,profile)
VALUES('#{rows[0]}','#{rows[1]}','#{rows[2]}','#{rows[3]}','#{rows[4]}','#{rows[5]}')
end
end_time = Time.now

totaltime = end_time - start_time

puts " Tong thoi gian doc file va import file: #{totaltime} "   

# Phần code e trình bày gọn, biết sử dụng foreach là 1 điểm cộng
# db.exec, phần này a thấy e đang insert từng dòng vào trong db, tức là với 500k lines thì mình insert 500k lần về performance có thể bị ảnh hưởng
# do e hit vào db nhiều quá
# A suggest e là
#   1. sử dụng transaction -> e có thể tìm hiểu nó là gì
#   2. build ra 1 câu sql, nhưng khi nào đủ khoảng 5k lines (do e quyết định), rồi hẵn insert vào db. Như vậy sẽ giảm số lần e tương tác db ah
#

# Em cần chú ý tab vào để dễ đọc
 
# Em trình bày trong 1 file vẫn ok, nhưng khi vào thực tế: e nên tách file ra để dễ quản lý. Vd: file về kết nối db, file để ghi ra file csv,
# file để import từ csv vào db -> mục đích là e sẽ dễ dàng quản lý và xử lý khi sau này có issues. Vd: không connect được db, thì e chỉ cần vào
# file quản lý cấu hình thôi, chứ kg cần scan hết trong 1 file tổng lớn. 
# User name và pass em nên để trong file cấu hình (connect) để bảo mật hơn
