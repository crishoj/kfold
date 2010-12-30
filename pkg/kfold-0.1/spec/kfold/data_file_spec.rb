
require 'kfold/data_file'

describe Kfold::DataFile do
  before(:each) do
    @sample_file = File.join(File.dirname(__FILE__), 'sample_data_file.conll')
    @df = Kfold::DataFile.new(@sample_file, "\n\n")
  end

  it "should contain 11 entries" do
    @df.num_entries.should == 11
  end

  it "should yield consecutive part numbers" do
    next_part_num = nil
    @df.each_entry_in_parts(@df.num_entries) do |part_num, entry|
      part_num.should == next_part_num unless next_part_num.nil?
      next_part_num = part_num + 1
    end
  end
  
  it "should yield all the entries in the file" do
    yield_count = 0
    part_count = 0
    last_part_num = nil
    @df.each_entry_in_parts(1) do |part_num, entry|
      yield_count += 1
      if (part_num != last_part_num)
        part_count += 1
        last_part_num = part_num
      end
    end
    yield_count.should == @df.num_entries
    part_count.should == 1
  end

  it "should yield one entry per part if so requested" do
    yield_count = 0
    part_count = 0
    last_part_num = nil
    @df.each_entry_in_parts(@df.num_entries) do |part_num, entry|
      yield_count += 1
      if (part_num != last_part_num)
        part_count += 1
        last_part_num = part_num
      end
    end
    yield_count.should == @df.num_entries
    part_count.should == @df.num_entries
  end

  it "should yield the number of parts requested" do
    part_count = 0
    last_part_num = nil
    @df.each_entry_in_parts(3) do |part_num, entry|
      if (part_num != last_part_num)
        part_count += 1
        last_part_num = part_num
      end
    end
    part_count.should == 3
  end
  
end

