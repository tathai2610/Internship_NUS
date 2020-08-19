class Person

###############################################################################
# => Question 3: Class Person có 1 class variable là count.
###############################################################################

    @@count = 0

###############################################################################
# => Question 1:  Mỗi Person có 2 instance variable là 'name' và 'age'.
# =>              Tạo setter và getter cho 'name' và 'age'.
###############################################################################

  def set_name(name)
    @name = name
  end

  def get_name
    return @name
  end

  def set_age(age)
    @age = age
  end

  def get_age
    return @age
  end

###############################################################################
# => Question 2: Khi khởi tạo 1 Person có thể truyền 'name' và 'age'.
###############################################################################

  def initialize(name, age)
    @name, @age = name, age
    ############################################################################
    # => Question 4: Mỗi lần khởi tạo 1 Person thì biến count sẽ tăng lên 1.
    ############################################################################
    @@count += 1
  end

###############################################################################
# => Question 5:  Person có 1 instane method tên là 'introduce' sẽ in ra
# =>              kết quả là: "My name is [name của person đó].
# =>              I'm [age của person đó] years old".
###############################################################################

  def introduce
    puts "My name is #{@name}. I'm #{@age} years old."
  end
###############################################################################
# => Question 6: Person có 1 class method tên là 'total_count' sẽ in ra
#                kết quả là: "Total number of people is [tổng số Person đã được tạo]"
###############################################################################
  def self.total_count
    puts "Total number of people is #{@@count}."
  end

  def self.get_count
    return @@count
  end

end

###############################################################################
# => Question 7:  Dùng hàm 'times' tạo 1 mảng 'people' gồm 20 person
# =>              với name là 'Person 1' cho đến 'Person 20', age của mỗi Person
# =>              random từ 10 -> 90
###############################################################################

def create_ppl(quantity)
  arr = Array.new
  quantity.times {
    arr.push(Person.new("Person " + (Person.get_count + 1).to_s , rand(10..90)))
  }
  return arr
end

people = create_ppl(20) # => Create an array of 20 people

def list_people(arr)
  arr.length.times { |i| arr[i].introduce}
end

# list_people(people) # => Print list of people

###############################################################################
# => Question 8: Với mảng 'people' lọc ra những Person có tuổi nhỏ hơn 18
###############################################################################

# puts "Person who is less than 18 years old is: "
# ppl_lt18 = people.select {|i| i.get_age < 18}
# list_people(ppl_lt18)

###############################################################################
# => Question 9: Với mảng 'people' xóa những Person có tuổi nhỏ hơn 18
###############################################################################

# puts "People after delete anyone who's under 18: "
# people.delete_if{|i| i.get_age < 18}
# list_people(people)

###############################################################################
# => Question 10: Sort mảng 'people' theo tuổi tăng dần.
###############################################################################

# puts "List of people with ascending age: "
# list_people(people.sort_by {|i| [i.get_age,i.get_name.at(7..8)] })

###############################################################################
# => Question 11: Sort mảng 'people' theo tuổi giảm dần.
###############################################################################

# puts "List of people with descending age: "
# list_people(people.sort_by {|i| i.get_age }.reverse)

###############################################################################
# => Question 12: Delete 1 phần tử ở vị trí xác định trong mảng 'people'
###############################################################################

# puts "Number of people in the array: #{people.length}"
# puts "Enter the position of the person you want to delete (1st position is 0): "
# p = gets.chomp
# people.delete_at(p.to_i)
# puts "List of people after delete the person at position #{p}: "
# list_people(people)

###############################################################################
# => Question 13: Xem phần module enumerable của Ruby:
# https://ruby-doc.org/core-2.5.1/Enumerable.html (Array và Hash trong Ruby có
# include module này) để tìm ra Person lớn tuổi nhất, Person nhỏ tuổi nhất.
###############################################################################

# oldest = people.max_by {|i| i.get_age}
# youngest = people.min_by {|i| i.get_age}
# puts "The oldest person: "
# oldest.introduce
# puts "The youngest person: "
# youngest.introduce

###############################################################################
# => Question 14: Dùng CÁC vòng lặp trong Ruby và CÁC hàm (khả thi) của Array
#                 để tăng tuổi của từng Person trong mảng 'people' lên 1.
###############################################################################
# puts "List of people when 1 year older: "

# => SOLUTION 1: For
# for i in people
#   i.set_age(i.get_age + 1)
# end
#list_people(people)

# => SOLUTION 2: While
# i = 0
# while i < people.length
#   people[i].set_age(people[i].get_age + 1)
#   i += 1
# end
#list_people(people)

# => SOLUTION 3: Until
# i = 0
# until i == people.length
#   people[i].set_age(people[i].get_age + 1)
#   i += 1
# end
#list_people(people)

# => SOLUTION 4: .each
# people.each {|i| i.set_age(i.get_age + 1) }
#list_people(people)

# => SOLUTION 5: .map
# people.map {|i| i.set_age(i.get_age + 1) }
#list_people(people)

# => SOLUTION 6: .collect
# people.collect {|i| i.set_age(i.get_age + 1) }
#list_people(people)

# => SOLUTION 7: .select
# people.select {|i| i.set_age(i.get_age + 1)}
#list_people(people)

###############################################################################
# => Question 15: Không dùng vòng lặp (dùng CÁC hàm của Array)
#                 lấy ra tất cả các 'age' của các Person trong mảng 'person'
###############################################################################
# puts "All the ages of people in the list: "

# => SOLUTION 1: .collect
# puts people.collect {|i| i.get_age }

# => SOLUTION 2: .map
# puts people.map {|i| i.get_age }

# => SOLUTION 3: .select
# people.select {|i| puts i.get_age}

# => SOLUTION 4: .select
# people.each {|i| puts i.get_age}

###############################################################################
# => Question 16: Tạo 1 mảng 'people_2' tương tự câu 7, nối mảng 'people_2' vào 'people'
###############################################################################

# people_2 = create_ppl(20)
# people.concat(people_2)
# puts "List of people after concatenating people with people_2: "
# list_people(people)

###############################################################################
# => Question 17: Viết 1 instance method bất kì, raise Exception (với message bất kì)
# trong method đó, sau đó catch exception và in ra message của Exception đó.
###############################################################################

# def q17
#   puts "This is before raising Exception"
#   raise "Raise Exception message"
# rescue Exception => e
#   puts e.message
# end
#
# q17

###############################################################################
