module RakutenIchiba
  class Items < Array
    def initialize
      @items = []
    end

    def add(item)
      @items << item
    end

    def size
      @items.size
    end
    alias_method :count, :size

    def [](index)
      @items[index]
    end
  end
end
