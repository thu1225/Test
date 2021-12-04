a = [2,5,1,22,26,6,-1,8,10]
b=[2,1,6,-1,10]
sub = a & b

while sub == b
    puts true
    break
end 
# A rất bất ngờ với cách giải quyết bài toán này của e, quá nhanh gọn.
# Mình không biết là khi sử dụng a & b để tìm phần tử chung của cả 2 mảng thì bên dưới ruby đang duyệt ntn, dùng mấy vòng for, và sau này 
# khó để optimize hơn nữa.
# và e có thể viết 1 dòng cũng được: puts b == a & b
# Tên biến e nên đặt có ý nghĩa hơn nhé
