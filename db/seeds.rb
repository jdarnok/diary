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
 User.create!(email: 'user@example.com', password: 'changeme',first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name, password_confirmation: 'changeme')
admin = User.first
 admin.add_role :admin
 p "Created test admin user"
#
 (1..3).each do |i|
  SchoolClass.find_or_create_by(name: "class#{i}")
  end
 p "Created #{SchoolClass.count} classes"


 SchoolClass.all.each do |schoolclass|
   subject = Subject.create!(name: "English nr #{schoolclass.id}", description: "English course")
   (1..3).each do |i|
     user = User.create!(school_class: schoolclass, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
                         password: "changeme", password_confirmation: "changeme", email:"#{schoolclass.id}#{i}Student@sd.pl")
     user.add_role :student
     UsersSubject.create!(user: user, subject: subject, value: i, description: Faker::Company.catch_phrase)
   end
   teacher = User.create!(first_name:  Faker::Name.first_name, last_name: Faker::Name.last_name, password: "changeme",
                          password_confirmation: "changeme", email:"teacher#{schoolclass.id}@reach.pl")
   teacher.add_role :teacher
   schoolclass.update_attribute(:teacher_id, teacher.id)
 end
p "Created Subjects and Students"
