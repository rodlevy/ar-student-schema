require 'rspec'
require 'date'
require_relative '../app/models/teacher'

describe Teacher do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:teachers).should be_true
    Teacher.delete_all
  end

  describe "validations" do
    it "is valid for unique emails" do
      # Teacher.new(:email => "foo@example.com").valid? should be true
      Teacher.new(:email => "foo@example.com").should be_valid
    end

    it "is invalid for duplicate emails" do
      Teacher.create(:email => "foo@example.com")
      Teacher.new(:email => "foo@example.com").should_not be_valid
    end
  end

end
