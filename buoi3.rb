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
