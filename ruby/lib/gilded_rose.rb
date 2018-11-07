class GildedRose

  def update_quality(item)
     if item.name == "Backstage passes to a TAFKAL80ETC concert" && item.quality < 50
       if item.sell_in < 0
         item.quality = 0
       elsif item.sell_in < 6
         item.quality += 3
       elsif item.sell_in < 11
         item.quality += 2
       else
       item.quality += 1
       end
     end

      if item.name != 'Sulfuras, Hand of Ragnaros' && item.name !=  'Backstage passes to a TAFKAL80ETC concert' && item.name != 'Aged Brie'
        item.sell_in < 0 ? item.quality -= 2 : item.quality -= 1
      end

      item.quality += 1 if item.name == 'Aged Brie' && item.quality < 50
    end

  def update_sell_in(item)
    item.sell_in -= 1 if item.name != "Sulfuras, Hand of Ragnaros"
  end
end


class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
