def snail(array)
  result = Array.new
  n = array.length
  runs = n.downto(0).each_cons(2).to_a.flatten
  delta = [[1,0], [0,1], [-1,0], [0,-1]].cycle
  x, y = -1, 0
  for run in runs
    dx,dy = delta.next
    run.times do |i|
      x += dx
      y += dy
      result << array[y][x]
    end
  end
  print result
end

snail([[1,2,3],[4,5,6],[7,8,9]])

a = ["a", "b", "c"]
a.cycle(2) { |x| print x } 