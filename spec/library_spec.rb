require 'spec_helper'

describe "Library Object" do
  before :all do
    lib_arr = [
      Book.new("Javascript: The Good Parts", "Dougy Crock", :development),
      Book.new("Designing with Web Standards", "Jeffery Zeldman", :design),
      Book.new("Don't Make me Think", "Steve Krug", :usability),
      Book.new("JavaScript Patterns", "Stoyan Stefanov", :development),
      Book.new("Responsive Web Design", "Ethan Marcotte", :design)
    ]

    File.open "books.yml", "w" do |f|
      f.write YAML::dump lib_arr
    end
  end

  before :each do
    @lib = Library.new("books.yml")
  end


#video tutorial is old
  describe "#new" do
    context "with no parameters" do
      it "has no books" do
        lib = Library.new
        lib.books.length.should = 0 #lib.books.length.should == 0
      end
    end

    context "with a yaml file name parameter" do
      it "has 5? books" do
        @lib.books.length.should = 5
      end
    end

  end
end