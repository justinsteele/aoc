def count_increase(array)
  prev = false
  count = 0
  array.each do |line|
    line = line.to_i
    if prev == false
      prev = line
      next
    end
    count += 1 if prev < line
    prev = line
  end
  return count
end

sums = Array.new
current_readings = Array.new
File.readlines('input.txt').each do |line|
  current_readings.push(line.to_i)
  if(clines.length == 3)
    sums.push(clines.sum)
    current_readings.delete_at(0)
  end
end

puts count_increase(sums)
