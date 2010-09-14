require 'test_helper'

class ServerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Server.new.valid?
  end
end
