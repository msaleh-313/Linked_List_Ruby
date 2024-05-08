class Node
    attr_accessor :val, :next 
  def initialize(val)

    @val=val
    @next=nil
    
  end
end


class Linked_List
  def initialize()
    @head=nil
    
  end

  def printList()
        if(@head.nil?)
            puts" Empty List "
        else
            temp=@head
            while(temp!=nil)
                print temp.val,"-->"
                temp=temp.next
            end    
            print "nil"
        end
    end

                            # Insertion Operation of Linked_LIST
  def insertAtHead(val)

        if(@head.nil?)
        @head=Node.new(val)
        elsif
            temp=@head
            node=Node.new(val)
            node.next=temp
            @head=node
        end
    end


    def insert(val)
        if(@head.nil?)
            @head=Node.new(val)
        else
            temp=@head
            while(temp.next!=nil)
                temp=temp.next
            end
            temp.next=Node.new(val)
        end
    end
   
   
    def insertBefore(key,val)
        if(@head.nil?)
            puts "Your List is Empty"
            
                                        #if key is at head ,update the head
        elsif(key==@head.val)
            temp=Node.new(val)
            temp.next=@head
            @head=temp

            

        elsif
            temp=@head
            prev=@head
            while(!temp.next.nil?)        #   temp.next!=nil
                if(temp.val==key)
                    prev.next=Node.new(val)
                    prev.next.next=temp
                    break
                else
                    prev=temp
                    temp=temp.next
                end
            end
        else
            puts"Key #{key} not found " 
        end



    end

    def insertAfter(val)
        
    end

                                        # Deletion

    def deleteHead()

        if(@head.nil?)
            puts"Your List is Empty"
        else
            new_head = @head.next
            # @head = nil
            @head=new_head
        end

    end

    def deleteNode(val)
        
        if(@head.nil?)
            puts"Your List is Empty"
        else
            prev=nil
            temp=@head
            while(temp!=nil)
                if (temp.val!=val)
                    prev=temp
                    temp=temp.next
                else
                    prev.next=temp.next
                    temp=nil
                    break
                end
            
            end
        end

    end

    # def deleteByVal(val)
    #     temp = @head
    #     prev = nil
    #     while temp.next != nil
    #         if temp.val == val
    #             prev.next = temp.next
    #             temp = nil
    #             break
    #         end
    #         prev = temp
    #         temp = temp.next
    #     end
    # end
    
    def searchNode(val)

        puts "Searching Function Created"
    end











end
        


list=Linked_List.new()
list.insertAtHead(5)
list.insertAtHead(4)
list.insertAtHead(3)
list.insertAtHead(2)
list.insertAtHead(1)
list.insert(6)

list.printList()
puts""
list.deleteNode(4)
list.printList()
list.insertBefore(5,4)
puts""
list.printList()

puts list.inspect