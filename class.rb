You have been given a function where an object which may or may not be of the above mentioned type is sent as an argument.
You have to use the case control structure in Ruby to identify the class to which the object belongs and print the following output:
if Hacker, output "It's a Hacker!"
if Submission, output "It's a Submission!"
if TestCase, output "It's a TestCase!"
if Contest, output "It's a Contest!"
for any other object, output "It's an unknown model"
Note
use case (switch statement of Ruby)
use puts for printing
Ruby Docs on case


code:

def identify_class(obj)
  case obj
  when Hacker
    puts "It's a Hacker!"
  when Submission
    puts "It's a Submission!"
  when TestCase
    puts "It's a TestCase!"
  when Contest
    puts "It's a Contest!"
  else
    puts "It's an unknown model"
  end
end

# Example usage:
# Creating the required classes
class Hacker; end
class Submission; end
class TestCase; end
class Contest; end

# Array of objects to test
objects = [
  Hacker.new,
  Submission.new,
  TestCase.new,
  Submission.new,
  Hacker.new,
  Hacker.new,
  Submission.new,
  TestCase.new,
  Contest.new,
  Hacker.new
]
