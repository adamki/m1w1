https://github.com/turingschool/lesson_plans/blob/master/ruby_01-object_oriented_programming_with_ruby/file_io_and_csvs.markdown

# Opening a Read Handle
handle = File.open("filename.txt", "r")

# Reading a whole file
handle.read

# Rewind back to the beginning
handle.rewind

# Read a single line
handle.readline

# Read a collection (array) of lines
handle.readlines

# Read one line at a time with a block
handle.each_line do |line|
  puts "A line: #{line}"
end

# Opening a Write Handle
writer = File.open("output.txt", "w")

# Write a line
writer.write("My text.\n")

# Flush output but keep the handle open
writer.flush

# Close the handle and flush
writer.close






NOTES PROVIDED BY PRY SESSION:
  # nil
# file handles let us interact with the filesystem
  # nil
# file handles let us interact with the filesystem
  # nil
File.open("./README.md")
  # #<File:./README.md>
handle = File.open("./README.md")
  # #<File:./README.md>
handle.class
  # File
  # nil
handle = File.open("./README.md", "r")
  # #<File:./README.md>
handle.read
  # "This is a test\n\n#TEST\n\n#TEST\n"
content = handle.read
  # ""
content
  # ""
# returns blank because the CURSOR is already at the END
  # nil
handle.rewind
  # 0
# position of the cursor
  # nil
content
  # ""
content = handle.read
  # "This is a test\n\n#TEST\n\n#TEST\n"
# State starts with the cursor 0
  # nil
handle.rewind
  # 0
line_of_content = handle.readline
  # "This is a test\n"
line_of_content = handle.readline
  # "\n"
line_of_content = handle.readline
  # "#TEST\n"
line_of_content = handle.readline
  # "\n"
line_of_content = handle.readline
  # "#TEST\n"
line_of_content = handle.readline
  # #<EOFError: end of file reached>
line_of_content = handle.readline
  # #<EOFError: end of file reached>
  # nil
  # nil
hande.pos
  # #<NameError: undefined local variable or method `hande' for main:Object>
handle.pos
  # 29
hanle.pos = 2
  # #<NameError: undefined local variable or method `hanle' for main:Object>
handle.pos = 2
  # 2
line_of_content = handle.readline
  # "is is a test\n"
  # nil
handle.readlines
  # ["\n", "#TEST\n", "\n", "#TEST\n"]
handle.readline.count
  # #<EOFError: end of file reached>
handle.readlines.count
  # 0
handle.rewind
  # 0
handle.readlines.count
  # 5
handle.rewind
  # 0
  # nil
handle.each_line do |line|
  puts "length: #{line.length}"
end
  # #<File:./README.md>
  # nil
handle.rewind
  # 0
handle.readlines.count
  # 5
handle.rewind
  # 0
handle.readlines.count
  # 5
handle.rewind
  # 0
handle.readlines.count
  # 5
writer = File.open("./output.txt")
  # #<Errno::ENOENT: No such file or directory @ rb_sysopen - ./output.txt>
writer = File.open("./output.txt", "w")
  # #<File:./output.txt (closed)>
  # nil
writer.wrtie("Hello, Mom.")
  # #<NoMethodError: undefined method `wrtie' for #<File:./output.txt (closed)>>
writer.write("Hello, Mom")
  # 10
writer.write("Hello, Mom.")
  # 11
writer.write("Hello, Mom.!!!")
  # 14
  # nil
writer.write("Hello, Mom.!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
  # 45
writer.flush
  # #<File:./output.txt (closed)>
  # nil
  # nil
  # nil
writer.wrtie("\n second line\n")
  # #<NoMethodError: undefined method `wrtie' for #<File:./output.txt (closed)>>
writer.write("\n second line\n")
  # 14
  # nil
writer.flush
  # #<File:./output.txt (closed)>
  # nil
  # nil
writer.close
  # nil
  # nil
  # nil
writer.write
  # #<ArgumentError: wrong number of arguments (0 for 1)>
writer.write("")
  # 0
  # nil
  # nil
# file hanles let us interact with the filesystem
  # nil
# file handles let us interact with the filesystem
  # nil
File.open("./README.md")
  # #<File:./README.md>
handle = File.open("./README.md")
  # #<File:./README.md>
handle.class
  # File
  # nil
handle = File.open("./README.md", "r")
  # #<File:./README.md>
handle.read
  # "This is a test\n\n#TEST\n\n#TEST\n"
content = handle.read
  # ""
content
  # ""
# returns blank because the CURSOR is already at the END
  # nil
handle.rewind
  # 0
# position of the cursor
  # nil
content
  # ""
content = handle.read
  # "This is a test\n\n#TEST\n\n#TEST\n"
# State starts with the cursor 0
  # nil
handle.rewind
  # 0
line_of_content = handle.readline
  # "This is a test\n"
line_of_content = handle.readline
  # "\n"
line_of_content = handle.readline
  # "#TEST\n"
line_of_content = handle.readline
  # "\n"
line_of_content = handle.readline
  # "#TEST\n"
line_of_content = handle.readline
  # #<EOFError: end of file reached>
line_of_content = handle.readline
  # #<EOFError: end of file reached>
  # nil
  # nil
hande.pos
  # #<NameError: undefined local variable or method `hande' for main:Object>
handle.pos
  # 29
hanle.pos = 2
  # #<NameError: undefined local variable or method `hanle' for main:Object>
handle.pos = 2
  # 2
line_of_content = handle.readline
  # "is is a test\n"
  # nil
handle.readlines
  # ["\n", "#TEST\n", "\n", "#TEST\n"]
handle.readline.count
  # #<EOFError: end of file reached>
handle.readlines.count
  # 0
handle.rewind
  # 0
handle.readlines.count
  # 5
handle.rewind
  # 0
  # nil
handle.each_line do |line|
  puts "length: #{line.length}"
end
  # #<File:./README.md>
  # nil
handle.rewind
  # 0
handle.readlines.count
  # 5
handle.rewind
  # 0
handle.readlines.count
  # 5
handle.rewind
  # 0
handle.readlines.count
  # 5
writer = File.open("./output.txt")
  # #<Errno::ENOENT: No such file or directory @ rb_sysopen - ./output.txt>
writer = File.open("./output.txt", "w")
  # #<File:./output.txt (closed)>
  # nil
writer.wrtie("Hello, Mom.")
  # #<NoMethodError: undefined method `wrtie' for #<File:./output.txt (closed)>>
writer.write("Hello, Mom")
  # 10
writer.write("Hello, Mom.")
  # 11
writer.write("Hello, Mom.!!!")
  # 14
  # nil
writer.write("Hello, Mom.!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
  # 45
writer.flush
  # #<File:./output.txt (closed)>
  # nil
  # nil
  # nil
writer.wrtie("\n second line\n")
  # #<NoMethodError: undefined method `wrtie' for #<File:./output.txt (closed)>>
writer.write("\n second line\n")
  # 14
  # nil
writer.flush
  # #<File:./output.txt (closed)>
  # nil
  # nil
writer.close
  # nil
  # nil
  # nil
writer.write
  # #<ArgumentError: wrong number of arguments (0 for 1)>
writer.write("")
  # 0
  # nil
