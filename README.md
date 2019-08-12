# Algorithms-Data-Structures
Algorithms &amp; Data Structures Ruby

<ul>
 [Data Structures: Trees => Video](https://www.youtube.com/watch?v=oSWTXtMglKE)
<li><a href="https://www.geeksforgeeks.org/data-structures/">GeeksForGeeks Data Structures Content GeeksForGeeks Algorithms Content</a></li>
<li><a href="https://www.theodinproject.com/courses/ruby-programming/lessons/a-very-brief-intro-to-cs">Ruby Programming A VERY BRIEF INTRO TO CS</a></li>
<li><a href="https://www.theodinproject.com/courses/ruby-programming/lessons/common-data-structures-and-algorithms">Ruby Programming COMMON DATA STRUCTURES AND ALGORITHMS</a></li>
<li><a href="https://www.coursera.org/learn/data-structures">the Data Structures course by the University of California San Diego in Coursera</a></li>
</ul>
https://rtfm.co.ua/books-translations/kus-ruby-s-nulya/ruby-s-nulya-chast-2-klassy-i-obekty/

<h2>Создание класса</h2>
Классы в Ruby описываются при помощи ключевого слова class, например:

class RubyClass
puts "This is class"
end

This is class => nil

Класс всегда завершается оператором end.

<ul><h2>Переменные в классах Ruby</h2>

<li>Локальные переменные: это переменные, описанные в методе класса и недоступны вне этого метода.
Локальные переменные всегда начинаются с символа подчеркивания «_«.</li>
<li>Переменные экземпляра класса: это перкменные, доступные всем методам экземпляра класса.
Такие переменные начинаются с символа «@«.</li>
<li>Переменные класса: переменные, доступ к которым есть у всех экземпляров класса. 
Имена таких перменных начинаются с «@@«. </li>
Хороший пост на тему разницы между переменными класса и переменными экземпляра класса есть тут>>>.
<li>Глобальные переменные: переменные класса недоступны напрямую другим классам. 
Что бы определить переменную, доступ к которой будет у всех классов — 
можно определить глобальную пемренную, которая начинается с символа «$«.</li>
</ul>
<h2>Создание объекта класса — метод new</h2>
Для создания нового экземпляра класса в Ruby используется встроенный метод класса new, например:

 class TestClass
puts "This is test class"
 end

This is test class

=> nil
 ex1 = TestClass.new
7
 ex2 = TestClass.new

<h2>Создание объекта класса — метод initalize</h2>
Если вам требуется создать новый экземпляр класса и передать ему какие-то аргументы — 
вам необходимо создать метод initalize. 
Он будет вызываться каждый раз, когда будет создаваться новый объект класса.

Например:

class Customer

   @@no_of_customers=0

   def initialize(id, name, addr)

      @cust_id=id

      @cust_name=name

      @cust_addr=addr

   end

   def exec

      puts @cust_id, @cust_name, @cust_addr

   end

end

c = Customer.new("id", "somename", "someaddr")

c.exec
Тут объявляется специальный метод initialize, который принимает три аргумента для трех локальных 
переменных — @cust_id, @cust_name и @cust_addr:

somename

someaddr

<h2>Методы классов</h2>
Каждый метод начинается с ключевого слова def, а имена методов указываются строчными буквами.

Завершается метод ключевым словом end. Например:


class Sample

   def function

      statement 1

      statement 2

   end

end
Тут statement 1 и statement 2 являются операторами — телом метода function класса Sample.

Guest Lecture 1: Dynamic Programming with Matrices
Led by: Joshua Penman, currently on the infrastructure/stability team at Asana
######Topics:

What is dynamic programming?
Dynamic programming vs. recursive solutions.
General thoughts on setting up dynamic programming problems
Example problem (find_path):
EXAMPLE PROBLEM:
We are given a matrix, containing 0's and 1's. Each 1 represents a square we can move to, and a 0 represents a square we cannot move to. If we start in the upper left corner, and we can only move down and to the right, how many ways are there to navigate to the bottom right corner?

def find_path(matrix)
    # We initialize path_matrix, where each element is an integer representing
    # the total number of possible paths to that element.
  path_matrix = Array.new(matrix.length + 1) { Array.new(matrix[0].length + 1) {0} }

    # We set the element directly "over" the starting element of the original
    # matrix to 1, so as to give us an entry point.
  path_matrix[0][1] = 1

    # We then iterate through the starting matrix, filling in values of path_matrix
    # one at a time, depending on whether the starting matrix has a 1 or 0, and
    # how many paths are possible to the cell directly above and directly to
    # the left of the given cell.

    # Note that cells in path_matrix are indexed so that path_matrix[i + 1][j + 1]
    # corresponds to the cell matrix[i][j]
  matrix.each_with_index do |row, i|
    row.each_with_index do |el, j|
      path_matrix[i + 1][j + 1] = el == 0 ? 0 : path_matrix[i][j + 1] + path_matrix[i + 1][j]
    end
  end

  path_matrix.last.last
end

matrix = [
  [1, 1, 1, 0, 0, 1, 0],
  [1, 0, 1, 1, 1, 0, 1],
  [1, 0, 1, 1, 1, 1, 0],
  [1, 1, 1, 0, 1, 1, 1],
  [0, 1, 1, 1, 0, 1, 1],
  [0, 1, 1, 1, 0, 1, 0],
  [1, 0, 1, 1, 1, 1, 1],
]

puts find_path(matrix)  # == 17
PROBLEM SET:
Simple knapsack problem: Given an array of elements, find the number of ways to select the elements (in a knapsack?) so that they sum exactly to the target.

def knapsack(elements, target)

Rectangular sum. Given a matrix, find the sum of all values within a rectangle starting at the origin, and ending at a given coordinate. Imagine that, with a given matrix, you will be asked this question repeatedly. The initial setup time for this problem will be O(nm) where n and m are the dimensions of the matrix. However, after this, lookup will be O(1). Bonus: create a method that will return the sum within a rectangular region.

  class RectangleSummer
    def initialize(matrix)
      @sum_matrix = dp_sum(matrix)
    end

    def sum(x, y)
      # your code here
    end

    def rect_sum(upper_left, lower_right)
      # your code here
    end

    private

    def dp_sum(matrix)
      # your code here
    end
  end
HARD/Bonus: How many ways are there to parenthesize a boolean expression (such as "T or F xor T and F") so that it evaluates to "True"?

  def boolean_parens(token_string)
    token_string = token_string.downcase.gsub(" ", "")

    raise unless token_string =~ /\A([tf](and|or|xor))+[tf]\z/

    puts booleans = token_string.scan(/[tf]/).map { |letter| letter == 't' }
    puts logicals = token_string.scan(/(and|or|xor)/).map { |logical| logical.first.to_sym }

      # your code goes here

  end
