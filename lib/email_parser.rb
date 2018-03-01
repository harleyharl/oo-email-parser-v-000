# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :emails

 # @@emails = []

  def initialize(emails)
    @emails = emails
  end

  # def parse
  #   if emails.include?(",")
  #     emails.strip.split(", ")
  #   else
  #     emails.strip.split(" ")
  #   end
  #   # binding.pry
  # end

  def parse
    clean_list = []
    clean_list = emails.split(/[\s,]/) - [""]
    clean_list.each do |address|
      if !clean_list.include?(address)
        clean_list << address
      else
        clean_list
      end 
    end
  end

end
