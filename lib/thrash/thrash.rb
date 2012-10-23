class Thrash

  def initialize(args={})
    # number of items to keep in buffer before writing
    @buffer_max = args[:buffer_max] || 100_000
    create_buffer!
  end

  # add object to bucket
  # check if bucket is full and if it is
  # write out and flush
  def add(bucket, obj)
    @buffer[bucket] << obj
    check_and_write bucket
  end

  # I'm not sure which one to use
  alias :write :add

  # write and flush remaining buckets
  def finalize
    @buffer.each_key do |bucket|
      write_and_flush bucket
    end
    clear_buffer!
    nil
  end

  private

  # instantiates a new buffer which for now is
  # just a hash
  def create_buffer!
    @buffer = Hash.new { |h, k| h[k] = Array.new }
  end

  # check if a buffer is full
  # if so, write out and flush
  def check_and_write(bucket)
    if bucket_full? bucket
      write_and_flush bucket
    end
  end

  # check if a buffer is over capacity
  def bucket_full?(bucket)
    @buffer[bucket].size >= @buffer_max
  end

  # write out a bucket and flush its
  # contents
  def write_and_flush(bucket)
    File.open(bucket, 'a+') do |o|
      @buffer[bucket].each do |v|
        o.write(v)
      end
    end
  end

  # empty the buffer
  def clear_buffer!
    @buffer.clear
  end

end
