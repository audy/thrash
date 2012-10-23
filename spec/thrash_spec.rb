require 'spec_helper'

TEST_DIR = ENV['TEST_DIR'] || "/tmp/thrash_test_#{(0...8).map{65.+(rand(25)).chr}.join}/"


describe Thrash do

  let(:test_dir) { TEST_DIR }
  let(:thrasher) { Thrash.new }
  let(:files) { files = 5.times.map { |x| File.join(test_dir, "test-#{x}") } }
  let(:test_data) { "test" }

  before(:all) { `mkdir -p #{test_dir}` }

  it 'can be initialized' do
    thrasher.should_not be_nil
  end

  it '#add accepts data' do
    files.each do |out_file|
      thrasher.add(out_file, test_data)
    end
  end

  it '#finalize finalizes output and returns nil' do
    thrasher.finalize.should be_nil
  end

  it 'writes data as expected' do
    files.each do |f|
      File.read(f).should == test_data
    end
  end

end
