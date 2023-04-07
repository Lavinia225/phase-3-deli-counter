# Write your code here.
katz_deli = []

def line(deli_line)
    if deli_line.length == 0
        puts "The line is currently empty."
    else
        line_message = "The line is currently:"
        deli_line.each.with_index(1) {|name, index| line_message << " #{index}. #{name}"}
        puts line_message
    end
end

def take_a_number deli_line, new_customer
    deli_line << new_customer
    puts "Welcome, #{new_customer}. You are number #{deli_line.length} in line."
end

def now_serving deli_line
    if deli_line.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli_line.first}."
        deli_line.shift
    end
end