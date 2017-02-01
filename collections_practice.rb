require "pry"

def begins_with_r(array)
  array == array.select {|x| x[0] == "r"}
end

def contain_a(array)
  array.select {|x| x.include? "a"}
end

def first_wa(array)
  array.find {|x| x[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select {|x| x.class == String}
end

def count_elements(array)
   arraycount = []
   array.each {|key| key.each {|catagory, name| arraycount.push(name)}}
   array_keys = arraycount.uniq
   output_hash = []
   array_keys.each do |element| output_hash.push({name: element, count: arraycount.count(element)}) end
   output_hash
end


def merge_data(array1, array2)
  new_array = []
    array1.each do |element_firstname|
        element_firstname.each do |key, value|
            array2.each do |key2, value2|
              if key2 = value
                array2[0][key2][key] = value
                new_array.push(array2[0][key2])
              end
            end
        end
    end
  new_array
end

def find_cool(array)
  array.select {|x| x.has_value? "cool"}
end

def organize_schools(array)
  return_hash = {}

  array.each do |location|
    name = location[0]
    city = location[1][:location]
      if return_hash.keys.include?(city)
        return_hash[city].push(name)
      else
        return_hash[city] = [name]
      end
  end

  return_hash
end
