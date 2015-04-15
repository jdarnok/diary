Subject.destroy_all
User.destroy_all
SchoolClass.destroy_all
UsersGrade.destroy_all
# Subject.create!([
#   { name: "English", description: "English course"},
#   { name: "Math", description: "Math course"},
#   { name: "Polish", description: "Polish course"}
# ])
#
# p "Created #{Subject.count} subjects."
#
 User.create!(email: 'user@example.com', password: 'changeme', password_confirmation: 'changeme', first_name: 'admin')
admin = User.first
 admin.add_role :admin
 p "Created test admin user"
#
 (1..3).each do |i|
  SchoolClass.find_or_create_by(name: "class#{i}")
  end
 p "Created #{SchoolClass.count} classes"
#
# SchoolClass.all.each do |schoolclass|
#   (1..3).each do |i|
#  user = User.create!(school_class: schoolclass, first_name:"Student #{i}", last_name: i,
#  password: "changeme", password_confirmation: "changeme", email:"#{schoolclass.id}#{i}Student@sd.pl")
#   user.add_role :student
#     end
#
# end
# p "added students"
# (1..3).each do |i|
#   teacher = User.create!(first_name:"Teacher #{i}", last_name: "Last Teacher #{i} name", password: "changeme",
#   password_confirmation: "changeme", email:"teacher#{i}@reach.pl")
#   teacher.add_role :teacher
#   Subject.create!(name: "Teacher #{i} subject", user_id: teacher.id,
#                   description: "This is subject which Teacher #{i} is teaching")
#   classes = SchoolClass.all.limit(3)
#   classes[i-1].update_attribute(:teacher_id, teacher.id)
# end
# p "added teachers and classes they own"



 SchoolClass.all.each do |schoolclass|
   subject = Subject.create!(name: "English nr #{schoolclass.id}", description: "English course")
   (1..3).each do |i|
     user = User.create!(school_class: schoolclass, first_name:"Student #{i}", last_name: i,
                         password: "changeme", password_confirmation: "changeme", email:"#{schoolclass.id}#{i}Student@sd.pl")
     user.add_role :student
     UsersSubject.create!(user: user, subject: subject, value: i)
   end
   teacher = User.create!(first_name:"Teacher #{j}", last_name: "Last Teacher #{schoolclass.id} name", password: "changeme",
                          password_confirmation: "changeme", email:"teacher#{schoolclass.id}@reach.pl")
   teacher.add_role :teacher
   schoolclass.update_attribute(:teacher_id, teacher.id)
 end
