# Our main Function
def main
    welcome_message
    puts "\nOrdered with #{count_shuffles("in")} in shuffles"
    puts "Ordered with #{count_shuffles("out")} out shuffles"
end

# @return the new deck order
def ndo
    return ["AS","2S","3S","4S","5S","6S","7S","8S","9S","10S","JS","QS","KS","AH","2H","3H","4H","5H","6H","7H","8H","9H","10H","JH","QH","KH","AC","2C","3C","4C","5C","6C","7C","8C","9C","10C","JC","QC","KC","AD","2D","3D","4D","5D","6D","7D","8D","9D","10D","JD","QD","KD"]
end

# out shuffle, whe face card stays at the bottom (Should take 8 shuffles to reset)
def out_shuffle(main_deck)
    half_deck1 = Array.new(26)
    half_deck2 = Array.new(26)
    temp_deck = Array.new(52)

    for i in 0..(main_deck.length()/2)-1 do
        half_deck1[i] = main_deck[i]
        half_deck2[i] = main_deck[(main_deck.length()/2)+i]
    end
    index1 = 0
    index2 = 0
    while index1 < (main_deck.length()/2) do
        temp_deck[index2] = half_deck1[index1]
        temp_deck[index2+1] = half_deck2[index1]
        index1 += 1
        index2 += 2
    end
    return temp_deck
end

# In shuffle the deck, where the front card moves +1 element at a time (Should take 52 shuffles to reset)
def in_shuffle(main_deck)
    half_deck1 = Array.new(26)
    half_deck2 = Array.new(26)
    temp_deck = Array.new(52)

    for i in 0..(main_deck.length()/2)-1 do
        half_deck1[i] = main_deck[i]
        half_deck2[i] = main_deck[(main_deck.length()/2)+i]
    end
    index1 = 0
    index2 = 0
    while index1 < (main_deck.length()/2) do
        temp_deck[index2] = half_deck2[index1]
        temp_deck[index2+1] = half_deck1[index1]
        index1 += 1
        index2 += 2
    end
    return temp_deck
end

# Function to check if array is in new deck order
def is_deck_in_order(deck)
    ordered_deck = ndo

    for i in 0..deck.length()-1
        if deck[i] != ordered_deck[i] then
            return false
        end
    end
    return true
end

# Contain the welcome message of the program in one function
def welcome_message
    puts "Welcome to the perfect shuffle"
    puts "Alex Elmsely was a magician and a computer programmer."
    puts "He discovered that it takes 52 in-shuffles to bring a deck consisting of 52 cards back to its original order. \nIt also takes 8 out-shuffles to bring the deck back to its original order"
    puts "Today, we are going to test this."
end

# Print array elements in 1 line
def print_array(arr)
    temp_str = ""
    arr.each do |i|
        temp_str += i + " "
    end
    puts temp_str
end

# Count Function
def count_shuffles(method)
    original_deck = ndo
    count = 0
    while true do
        if method == "in shuffle" || method == "in" then
            original_deck = in_shuffle(original_deck)
        elsif method == "out shuffle" || method == "out" then
            original_deck = out_shuffle(original_deck)
        end
        count += 1
        break if is_deck_in_order(original_deck)
    end
    return (is_deck_in_order(original_deck))? count: -1
end
# Call main function
main