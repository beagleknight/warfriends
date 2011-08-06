--[[
  Test game
]]

describe("game", function()
  local subject

  before(function()
    subject = require 'game'
  end)

  context("before init call", function()
    it("should have unitialized state", function()
      assert_equal(subject.status,"unitialized")
    end)
  end)

  context("after init method call", function()
    before(function()
      subject:init()
    end)

    it("should have initialized state", function()
      assert_equal(subject.status,"initialized")
    end)

    it("should load the players", function()
      assert_not_empty(subject.players)
    end)
  end)
end)
