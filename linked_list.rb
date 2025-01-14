# You will need two classes:
# Node class, containing two instance variables, #value and #next_node, set both as nil by default
class Node
    attr_accessor :value, :next_node
    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

# LinkedList class will represent the full list
class LinkedList
    # LinkedList needs a head and a tail, might be useful to keep track of them all the time? Just start with the head, as the tail is supposed to be a node with value
    attr_accessor :name, :head

    def initialize(name)
        @name = name
        @head = nil
    end

    # append
    def append(value)
        # create node
        new_node = Node.new(value, nil) # points to nil by default, but set it so it's clearer
        # find the tail
        # while current_node.next_node not nil
        if @head != nil
            cursor = @head
            while cursor.next_node != nil
                cursor = cursor.next_node
            end
            # at this point, cursor should be the tail???
            # We point the last node to the new node
            # In Ruby, variables hold references to objects, not the objects themselves. 
            # When you assign one variable to another, you're copying the reference, not the object. Meaning, if I change cursor, I change the object (as both variables hold the same reference to the same object)
            cursor.next_node = new_node
            # at this point, the last node should be already be pointing to the new_node and the new should be pointing to nil
        else
            @head = new_node
        end
    end

    # prepend
    def prepend(value)
        new_node = Node.new(value)
        if @head != nil
            cursor = @head
            @head = new_node
            new_node.next_node = cursor
        else
            @head = new_node
        end
    end

    #size
    def size
        size = 0
        if @head == nil
            0
        else
            cursor = head
            size = 1
            while cursor.next_node != nil
                cursor = cursor.next_node
                size += 1
            end
        end
        return size
    end

    #head 
    def head
        @head
    end

    #tail
    def tail
        if @head != nil
            cursor = head
            while cursor.next_node != nil
                cursor = cursor.next_node
            end
            cursor
        else
            nil
        end
    end

    


end
 
# Build the following methods in your linked list class:
# 1. #append(value) adds a new node containing value to the end of the list
# 2. #prepend(value) adds a new node containing value to the start of the list
# 3. #size returns the total number of nodes in the list
# 4. #head returns the first node in the list
# 5. #tail returns the last node in the list
# 6. #at(index) returns the node at the given index
# 7. #pop removes the last element from the list
# 8. #contains?(value) returns true if the passed in value is in the list and otherwise returns false
# 9. #find(value) returns the index of the node containing value, or nil if not found
# 10. #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: (value) -> (value) -> (value) -> nil
# 
# EXTRA CREDIT
# 1. #insert_at(value, index) that inserts a new node with the provided value at the given index
# 2. #remove_at(index) that removes the node at the given index
# 
#

linked_list = LinkedList.new("List1")
linked_list.append(80)
linked_list.append(90)
linked_list.prepend(70)
linked_list.append(100)

p linked_list
p linked_list.size
p linked_list.head
p linked_list.tail