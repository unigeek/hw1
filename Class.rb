# Class.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s  # make sure it's a string
    attr_reader attr_name  # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    # create history-tracking setter for attr_name..
    class_eval %Q{
      def #{attr_name}=(val)
        @#{attr_name} = val
        if @#{attr_name}_history.nil? 
        then
          @#{attr_name}_history = [nil] << val
        else
          @#{attr_name}_history << val
        end
      end
    }
  end
end
