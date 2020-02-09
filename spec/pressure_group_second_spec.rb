require "pressure_group"

RSpec.describe Pressure_group do
  def second_pressure_group(initial_pressure_group:, minutes:)
    subject.determine_second_pressure_group({initial_pressure_group: initial_pressure_group, minutes: minutes})
  end

  it "has determine second pressure group method accepting two arguments" do
    expect(subject).to respond_to(:determine_second_pressure_group).with_keywords(:initial_pressure_group, :minutes), "determine_second_pressure_group method needs to pass two keyword arguments"
  end
  context "initial pressure group is A" do
    it "return A when surface interval is 120" do
      expect(second_pressure_group(initial_pressure_group:"A", minutes: 120)).to eq("A")
    end
  end
  context "initial pressure group is G" do
    it "return D when surface interval is 30" do
      expect(second_pressure_group(initial_pressure_group:"G", minutes: 30)).to eq("D")
    end
  end
  context "initial pressure group is L" do
    it "return H when surface interval is 24 minutes" do
      expect(second_pressure_group(initial_pressure_group: "L", minutes: 24)).to eq("H") 
    end
  end
  context "initial pressure group is N" do
    it "return F when surface interval is 51 minutes" do
      expect(second_pressure_group(initial_pressure_group: "N", minutes: 51)).to eq("F") 
    end
  end
  context "initial pressure group is P" do
    it "return G when surface interval is 46" do
      expect(second_pressure_group(initial_pressure_group:"P", minutes: 46)).to eq("G")
    end
  end
  context "initial pressure group is U" do
    it "return D when surface interval is 46" do
      expect(second_pressure_group(initial_pressure_group:"U", minutes: 129)).to eq("D")
    end
  end
  context "initial pressure group is X" do
    it "return B when surface interval is 140" do
      expect(second_pressure_group(initial_pressure_group:"X", minutes: 140)).to eq("B")
    end
  end
end