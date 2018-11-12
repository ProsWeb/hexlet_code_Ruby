# Допишите функцию my_pow. 
# Эта функция принимает на вход два числа, и возводит первый аргумент в степень, 
# представленную вторым аргументом. Используйте рекурсию.

def my_pow(base, exp)
  pow_iter = -> (exp, acc) {
    return acc if exp == 0
    pow_iter.call(exp - 1, acc * base)
  }

  pow_iter.call(exp, 1)
end

assert { my_pow(2, 3) == 8 }
assert { my_pow(3, 3) == 27 }
assert { my_pow(1, 2) == 1 }