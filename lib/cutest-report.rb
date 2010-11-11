require "cutest"

module CutestReport
  VERSION = "0.0.1"
end

module Color
  WHITE  = "37"
  GREEN  = "32"
  YELLOW = "33"
end

module Kernel
private

  def success
    ""
  end

  def describe name, &block
    puts
    display name
    scope &block
  end

  def it name = nil, &block
    if block_given?
      test name, &block
      display " - #{name}", Color::GREEN
    else
      display " - #{name} (pending)", Color::YELLOW
    end
  end

  alias before  setup
  alias context describe
  alias should  it

  def display str = "", color = Color::WHITE
    puts "\033[1;#{color}m#{str}\033[0m"
  end
end
