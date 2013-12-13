class SecondTableViewController < UITableViewController

  CELL_REUSE_IDENTIFIER = 'Item'

  attr_accessor :items

  def viewDidLoad
    super
    puts 'table view loaded'

    self.tableView.registerClass(ItemCell, forCellReuseIdentifier:'Item')

    @items = nil
    RakutenIchiba::ItemFetcher.fetch do |items|
      @items = items
      self.tableView.reloadData
    end
  end

  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELL_REUSE_IDENTIFIER, forIndexPath:indexPath)

    item = @items[indexPath.row]
    cell.item = item
    cell.setNeedsDisplay
    cell
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @items.nil? ? 0 : @items.size
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    performSegueWithIdentifier('to_detail', sender:self)
  end

  def prepareForSegue(segue, sender:sender)
    item = @items[self.tableView.indexPathForSelectedRow.row]
    detailViewController = segue.destinationViewController
    detailViewController.image_url = item.image_url
  end
end
