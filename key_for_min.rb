# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

require 'pry'


ikea = {:chair => 25, :table => 5, :mattress => 450}


def key_for_min_value(name_hash)
    value = 0
    hash_key = nil
    name_hash.each do | item, price|
        if value == 0
            value = price
            hash_key = item
        elsif value - price > 0
            value = price
            hash_key=item
        end
    end
    puts hash_key
end


 key_for_min_value(ikea)

