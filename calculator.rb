START

  # 获得用户的输入第一个数据
  PRINT “请输入第一个整数: ”
  GET first_number = 这个输入值

  # 判断输入的数据是否为整数，此处我省略，请大家完成。可参考operator的方法

  # 获得用户的输入第一个数据
  PRINT “请输入第二个整数: ”
  GET second_number = 这个输入值

  # 判断输入的数据是否为整数，此处我省略，请大家完成。可参考operator的方法

  # 用户输入运算符
  PRINT “请输入你想要的运算符（add/sub/multi/div): ”
  GET operator = 这个输入输入的运算符

  WHILE operator 不是四个运算符之一
    puts “这运算符，请重新输入”
    GET operator = 这个输入输入的运算符
    IF 是这四个运算符之一，中断退出判断循环
  END

  # 定义运算规则
  SET add运算规则
  SET sub运算规则
  SET multi运算规则
  SET div运算规则

  # 调用用户的输入数据 和 定义的运算规则，计算结果
  IF operator == "add"
    调用 add 运算规则
  ELSE IF operator == "sub"
    调用 sub运算规则
  ELSE IF operator == "multi"
    调用multi运算规则
  ELSE operator == "div"
    调用div运算规则
  END

  # 输出运算结果
  PRINT 运算结果
END
转换Pseudo-Code 为代码

#定义运算符常量
OperatorConstant = %w(add sub multi div)

  # 获得用户的输入数据

  puts "请输入第一个整数: "
  first_number = gets.chomp


  puts "请输入第二个整数: "
  second_number = gets.chomp



  puts "请输入你想要的运算符(add/sub/multi/div): "
  operator = gets.chomp

  while !OperatorConstant.include?(operator)
    puts "这不是运算符，请重新输入"
    operator = gets.chomp
    break if OperatorConstant.include?(operator)
  end

  # 定义运算规则
  class Calculator
    def add(first_number,second_number)
      first_number + second_number
    end

    def sub(first_number,second_number)
      first_number - second_number
    end

    def multi(first_number,second_number)
      first_number * second_number
    end

    def div(first_number,second_number)
      first_number / second_number
    end
  end


  # 调用用户的输入数据 和 定义的运算规则，计算结果

  # 初始化一个对象，也就是Calculator类的实例
  c = Calculator.new

  # 把计算结果赋值给变量result
  result =
          if operator == "add"
            c.add(first_number, second_number)
          elsif operator == "sub"
            c.sub(first_number, second_number)
          elsif operator == "multi"
            c.multi(first_number, second_number)
          else operator == "div"
            c.div(first_number, second_number)
          end

  # 输出运算结果
  puts "The calculator's result is #{result}"
  puts "Thanks for your try!"