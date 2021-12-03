def commands_from_file(filename)
    File.readlines(filename).map {|line| [line.split[0], line.split[1].to_i]}
end

def one(commands)
    horizontal_pos = depth = 0
    commands.each do |cmd, val|
        case cmd
        when "forward"
            horizontal_pos += val
        when "down"
            depth += val
        when "up"
            depth -= val
        end
    end
    return horizontal_pos, depth
end

def two(commands)
    horizontal_pos = depth = aim = 0
    commands.each do |cmd, val|
        case cmd
        when "forward"
            horizontal_pos += val
            depth += val * aim
        when "down"
            aim += val
        when "up"
            aim -= val
        end
    end
    [horizontal_pos, depth]
end

input_commands = commands_from_file('input.txt')
sample_commands = commands_from_file('sample.txt')

horizontal_pos, depth = one(input_commands)
puts "H Pos: #{horizontal_pos}"
puts "Depth: #{depth}"

horizontal_pos, depth = two(input_commands)
puts "H Pos: #{horizontal_pos}"
puts "Depth: #{depth}"
