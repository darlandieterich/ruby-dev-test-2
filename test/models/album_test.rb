require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro')
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new(name: 'Peligro')
    album.players << Player.new(name: 'xyz')
    album.players << Player.new(name: 'abc')
    assert_not_empty album.players
  end
end
