require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test 'should set link position to be the last on create' do
    link = links(:valid_link)
    new_link = link.dup
    new_link.save!

    assert_equal 1, new_link.position
  end

  test 'scope ordered_by_position should order by postion' do
    original_link = links(:valid_link)

    link_a, link_b, link_c = [5, 4, 3].map do |position|
      new_link = original_link.dup
      new_link.save! # This sets the default last position
      new_link.update!(position: position)
      new_link
    end

    assert_equal([link_c, link_b, link_a], Link.ordered_by_position.where(id: [link_b.id, link_c.id, link_a.id]))
  end
end
