class student:
    def __init__(self,name,age):
        self.name = name
        self.age = age
    def display(self):
        print(f'Name:{self.name},age:{self.age}')
s= student('sarika',10)
s.display()

#2nd one
class circle: 
    pi=3.14
    def __init__(self,radius):
        self.radius = radius
    def area(self):
        return circle.pi * self.radius ** 2

c= circle(5)
print(c.area())


#3rd one
class triangle:
    def __init__(self,b,h):
        self.b = b
        self.h = h
    def area(self):
        return 0.5 * self.b * self.h

t = triangle(10, 5)
print(t.area())

#4th one
class circle:
    pi = 3.14
    def __init__(self,radius):
        self.radus = radius
    @classmethod
    def change_pi(cls,value):
        cls.pi = value
    def area(self):
        return cls.pi * self.radius ** 2



#5th one
class parent:
    def display(self):
        print('this is parent class')
class child(parent):
    def show(self):
        print('this is child class')

obj = child()
obj.display()
obj.show()


#6th one
class father:
    def display(self):
        print('this is parent class')
class mother():
    def show(self):
        print('this is child class')
class child(father,mother):
    def show1(self):
        print('this is multiple inheritance')

obj = child()
obj.display()
obj.show()
obj.show1()


#7th one
class father:
    def display(self):
        print('this is parent class')
class mother(father):
    def show(self):
        print('this is child class')
class child(mother):
    def show1(self):
        print('this is multiple inheritance')

obj = child()
obj.display()
obj.show()
obj.show1()

#8th one
class product:
    def __init__(self,name,price):
        self.name = name
        self.price = price
    def display(self):
        print(f'Name: {self.name}, Price: {self.price}')

class clothing(product):
    def __init__(self,name,price,size):
        super().__init__(name,price)
        self.size = size

    def display1(self):
        self.display()
        print(f'Size: {self.size}')

c = clothing('T-Shirt', 200, 'M')
c.display1()

#9th one malti level
class employee:
    def __init__(self,id,name):
        self.id = id
        self.name = name
    def display(self):
        print(f'id:{self.id},name:{self.name}')
class team(employee):
    def __init__(self,id,name,program,team):
        super().__init__(id,name)
        self.program = program
        self.team = team
    def display1(self):
        self.display()
        print(f'program:{self.program},team:{self.team}')

t = team(1,'sarika','python',1)
t.display1()

#10th one
class student:
    def __init__(self):
        self.name = "name"
        self.age = 15

s = student()
print(s.name)
print(s.age)


#11th one
class bank:
    def __init__(self,name,balance):
        self.name = name
        self.__balance = balance
    def deposit(self,amount):
        if amount >0:
            self.__balance +=amount
    def withdraw(self,amount):
        if amount > self.__balance:
            print("insufficient balance")
        else:
            self.__balance -=amount
    def get_balance(self):
        return self.__balance

acc = bank("name",10000)
acc.deposit(50000)
acc.withdraw(10000)
print(acc.get_balance())
