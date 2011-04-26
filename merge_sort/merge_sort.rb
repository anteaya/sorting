class MergeSort

  def initialize(array)
    @array = array
  end

  def array
    @array
  end

  def sort
    if @array.length < 2
      @array
    else
      left = @array[0, @array.length / 2]
      right = @array[@array.length / 2, @array.length - 1]
      left = left.sort
      right = right.sort
      result = merge(left, right)
    end
  end

  def merge(left, right)
    result = []
    while left.length != 0 || right.length != 0
      if left.length == 0
        result << right.shift
        break
      end
      if right.length == 0
        result << left.shift
        break
      end
      if left.first < right.first
        result << left.shift
      else
        result << right.shift
      end
    end
    result
  end
end
