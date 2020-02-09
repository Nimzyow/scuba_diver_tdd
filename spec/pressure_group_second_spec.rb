require "pressure_group"

RSpec.describe Pressure_group do
  def second_pressure_group(initial_pressure_group:, minutes:)
    subject.determine_second_pressure_group({initial_pressure_group: initial_pressure_group, minutes: minutes})
  end

  it "has determine second pressure group method accepting two arguments" do
    expect(subject).to respond_to(:determine_second_pressure_group).with_keywords(:initial_pressure_group, :minutes), "determine_second_pressure_group method needs to pass two keyword arguments"
  end

  context "initial pressure group is L" do
    it "return H when surface interval is 24 minutes" do
      expect(second_pressure_group(initial_pressure_group: "L", minutes: 24)).to eq("H") 
    end
  end
  context "initial pressure group is P" do
    it "return G when surface interval is 46" do
      expect(second_pressure_group(initial_pressure_group:"P", minutes: 46)).to eq("G")
    end
  end
end