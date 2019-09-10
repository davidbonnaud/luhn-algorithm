module Luhn
  def self.is_valid?(number)
    array = number.to_s.split('')
    array = array.map(&:to_i)
    sum = 0
    i = array.length - 1
    while i >= 0
      if array.length % 2 == 1
        if i % 2 == 0
          sum += array[i]
        else
          array[i] *= 2
          if array[i] >= 10
            array[i] -= 9
          end
          sum += array[i]
        end
      else 
        if i % 2 != 0
          sum += array[i]
        else
          array[i] *= 2
          if array[i] >= 10
            array[i] -= 9
          end
          sum += array[i]
        end
      end
      
      i -= 1
    end

     
    # array.each_with_index do |num, index|
    #   if index % 2 == 0
    #     num = num * 2
    #     if num >= 10
    #       num = num - 9
    #     end
    #     sum += num
    #   end
    # end 
    

    sum % 10 == 0
  end
end