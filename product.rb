# Реализуйте функцию product, которая сворачивает последовательность 
# с помощью переданной функции. Примеры:

#     3 == product(1, 2, -> (first, second) { first + second }) // sum
#     6 == product(1, 3, -> (first, second) { first * second }) // multi
# То есть вместо жестко заданной операции, например, сложения, 
# нужно рекурсивно применять переданную функцию.

def product(num1, num2, func)
  if num1 == num2
    num1
  else
    func.call(product(num1 + 1, num2, func), num1)
  end
end

sum = -> (num1, num2) { return num1 + num2 }
assert { 1 == product(1, 1, sum) }
assert { 3 == product(1, 2, sum) }

multi = -> (num1, num2) { return num1 * num2 }
assert { 6 == product(1, 3, multi) }
assert { 24 == product(2, 4, multi) }

pow = -> (num1, num2) { return num1 ** num2 }
assert { 4096 == product(2, 4, pow) }