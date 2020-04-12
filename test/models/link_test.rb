require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test 'should set link position to be the last on create' do
    user = User.create!(
      email: "#{SecureRandom.hex(2)}@example.com",
      password: 'pass1234',
      password_confirmation: 'pass1234',
      username: 'something_random'
    )

    link = links(:valid_link)

    2.times.each do |i|
      new_link = link.dup
      new_link.user = user
      new_link.name = "THINGS - #{i}"
      new_link.save!

      assert_equal i, new_link.position
    end
  end

  test 'scope ordered_by_position should order by postion' do
    original_link = links(:valid_link)

    link_a, link_b, link_c = [5, 4, 3].map do |position|
      new_link = original_link.dup
      new_link.name = new_link.name + position.to_s
      new_link.save! # This sets the default last position
      new_link.update!(position: position) # Updates it to the position we want
      new_link
    end

    assert_equal([link_c, link_b, link_a], Link.ordered_by_position.where(id: [link_b.id, link_c.id, link_a.id]))
  end

  test 'validate url format' do
    link = links(:invalid_url)
    refute_predicate link, :valid?
    assert_equal 1, link.errors.count
    assert link.errors.all? { |key, _| key == :url }
    link.url = "http://www.google.co.za"
    assert_predicate link, :valid?
    link.url = "https://www.google.co.za"
    assert_predicate link, :valid?
  end
end
