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

    def insertAfter(key,val)

        if @head.nil?
            puts" Empty List "
        else
            temp=@head
            found=false
            while temp
                if temp.val==key
                    new_node=Node.new(val)
                    new_node.next=temp.next
                    temp.next=new_node
                    found=true
                    break
                end
                    temp=temp.next
                
            end
        end
        if !found
            puts"Key Not Found"
        end


        
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

    
    
    def searchNode(val)

        puts "Searching Function Created"
    end











end
        
line="\n-------------------------------------------------------\n"

list=Linked_List.new()
list.insertAtHead(5)
list.insertAtHead(4)
list.insertAtHead(3)
list.insertAtHead(2)
list.insertAtHead(1)
list.insert(6)

puts line
list.printList()
list.insertAfter(6,7)
puts line
list.printList()
puts line
list.insertAfter(0,1)
puts line
list.printList()
puts line
list.insertAfter(1,10)
list.printList()
puts line
list.deleteNode(5)
puts line
list.printList()