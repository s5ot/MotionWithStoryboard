class ItemCell < UITableViewCell
  attr_accessor :item

  def initWIthStyle(style, reuseIdentifier:reuseIdentifier)
    super(UITableViewCellStyleSubtitle, reuseIdentifier:reuseIdentifier)
  end

  def drawRect(rect)
    super
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator
    image_data = NSData.dataWithContentsOfURL(NSURL.URLWithString(@item.image_url))
    self.imageView.image = UIImage.imageWithData(image_data)
    self.textLabel.text = item.name
    self.textLabel.font = UIFont.boldSystemFontOfSize(11)
  end
end
