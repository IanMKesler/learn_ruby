#write your code here
def add (a,b)
    a+b
end

def subtract (a,b)
    a-b
end

def sum (array)
    sum = 0
    array.each do |num|
        sum += num
    end
    sum
end

def multiply (array)
    product = 1
    array.each do |num|
        product = product*num
    end
    product
end

def power (a,b)
    a**b
end

def factorial (num)
    if num == 0
        return 1
    else
        return num*factorial(num-1)
    end
end