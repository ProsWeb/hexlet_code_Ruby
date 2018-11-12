# Реализуйте функцию sum_of, которая принимает на вход коллекцию 
# (все что можно итерировать с помощью метода each) чисел и блок. 
# Функция должна вернуть сумму всех значений коллекции после применения блока 
# к каждому из значений.

# Пример с блоком, внутри которого значение умножается на 2:

#     # 1 * 2 + 2 * 2 + 3 * 2
#     result = sum_of(1..3) do |num|
#       num * 2
#     end
#     assert { result == 12 }
# Пример с блоком, внутри которого к значению прибавляется 3:

#     # (1 + 3) + (100 + 3) + (3 + 3)
#     result = sum_of([1, 100, 3]) do |num|
#       num + 3
#     end
#     assert { result == 113 }

def sum_of(range)
    sum = 0
    for num in range
      sum+= yield num
    end
    sum
  end
  
  result1 = sum_of(1..3) do |num|
    num * 2
  end
  assert { result1 == 12 }
  
  result2 = sum_of([1, 100, 3]) do |num|
    num + 3
  end
  assert { result2 == 113 }