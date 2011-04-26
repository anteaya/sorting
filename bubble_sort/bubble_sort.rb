class BubbleSort

  def initialize(array)
    @array = array
  end

  def array
    @array
  end

  def sort
    for index in (0..(@array.length - 1))
      for index in (0..(@array.length - 1))
        a = @array[index]
        b = @array[index + 1]
        unless a == nil || b == nil
          if a > b
            value_holder = b
            b = a
            a = value_holder
          end
          @array[index] = a
          @array[index + 1] = b
        end
      end
      @array
    end
    @array
  end
end
