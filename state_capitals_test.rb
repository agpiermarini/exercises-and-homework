require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class StateCapitalsTest < Minitest::Test

  def setup
    @states = {"Oregon" => "OR",
                "Alabama" => "AL",
                "New Jersey" => "NJ",
                "Colorado" => "CO"}

    @capitals = {"OR" => "Salem",
                  "AL" => "Montgomery",
                  "NJ" => "Trenton",
                  "CO" => "Denver"}
  end

  def test_get_abbreviation_from_state
    #skip
    def get_abbreviation(state_name)
        @states[state_name]
    end
    assert_equal "OR", get_abbreviation("Oregon")
    assert_equal "AL", get_abbreviation("Alabama")
  end

  def test_get_capital_from_state

    def get_capital(state_name)
        if @states.include?(state_name)
            abbreviation = @states[state_name]
            @capitals[abbreviation]
        else
            "Unknown"
        end
    end
    assert_equal "Denver", get_capital("Colorado")
    assert_equal "Trenton", get_capital("New Jersey")
    assert_equal "Unknown", get_capital("Virginia")
  end

  def test_get_state_name_from_capital
    #skip
    def get_state(capital)
      abbreviation = @capitals.key(capital)
      @states.key(abbreviation)
    end
    assert_equal "Colorado", get_state("Denver")
    assert_equal "New Jersey", get_state("Trenton")
  end

  def test_create_single_collection
    #skip
    def create_single_collection
      @states.each do | key, value |
        @states[key] = {abbreviation: @states[key], capital: @capitals[@states[key]]}
      end
    end

    def create_single_collection_2
      @states.each do | key, value |
        @states[key] = {abbreviation: value, capital: @capitals[value]}
      end
    end

    def create_single_collection_3
      @states.each_key do | key, value |
        @states[key] = {abbreviation: @states[key], capital: @capitals[@states[key]]}
      end
    end

    expected_state_info = {
        "Oregon" => {abbreviation: "OR", capital: "Salem"},
        "Alabama" => {abbreviation: "AL", capital: "Montgomery"},
        "New Jersey" => {abbreviation: "NJ", capital: "Trenton"},
        "Colorado" => {abbreviation: "CO", capital: "Denver"}
       }

    assert_equal expected_state_info, create_single_collection
  end

end
