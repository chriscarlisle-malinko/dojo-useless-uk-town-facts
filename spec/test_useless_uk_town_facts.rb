require "minitest/autorun"
require_relative "../lib/useless_uk_town_facts"

describe UselessUKTownFacts do
  before do
    @useless_uk_town_facts = UselessUKTownFacts.new([
      "Fleetwood",
      "Manchester",
      "Wolverhampton",
      "Tleefwood",
    ])
  end

  describe "when given any letter" do
    it "returns the longest town name containing the most instances of that letter" do
      _(@useless_uk_town_facts.longest_name_containing_most_instances_of('e')).must_equal "Manchester"
      _(@useless_uk_town_facts.longest_name_containing_most_instances_of('v')).must_equal "Wolverhampton"
    end

    describe "and there are no results" do
      it "returns an empty string" do
        _(@useless_uk_town_facts.longest_name_containing_most_instances_of('x')).must_equal ""
      end
    end

    describe "and there is more than one result" do
      it "returns all the results" do
        _(@useless_uk_town_facts.longest_name_containing_most_instances_of('f')).must_equal ["Fleetwood", "Tleefwood"]
      end
    end

  end

end

