# Algorithms-Data-Structures
Algorithms &amp; Data Structures Ruby

<ul>
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

</li>Локальные переменные: это переменные, описанные в методе класса и недоступны вне этого метода.
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
