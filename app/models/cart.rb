#---
# Excerpted from "Agile Web Development with Rails 5",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails5 for more book information.
#---
class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_item(item)
    current_item = line_items.find_by(item_id: item.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(item_id: item.id)
    end
    current_item
  end
end
