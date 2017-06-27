# 参数是一个数组，每个元素表示每一集买的本数
def book_price (order)
  #每一集购买一本的情况下，购买一集到五集的价格
  price = [0, 1 * 100, 0.95 * 200, 0.9 * 300, 0.8 * 400, 0.75 * 500]

  #遍历数组，剔除购买数量为0的集
  order = order.reject{ |x| x <= 0 }

  if order.size == 0
    #此时，数组size为0就返回0，表示数组中没有书了
    return 0
  else
    #计算总共买了几集
    kind = order.count{ |x| x > 0 }

    #所有的集当中最小的购买数量
    min_size = order.min

    #第一部分：遍历数组，除去第一遍折扣计算的书本，然后将返回的新数组做为输入再次调用方法
    #第二部分：第一遍梳理出来的书对应的价格计算
    return book_price(order.map{ |x| x - min_size }) + (price[kind] * min_size)
  end
end
