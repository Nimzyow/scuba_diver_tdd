require "pressure_group"

RSpec.describe Pressure_group do

  def determine_group(depth:, minutes:)
    subject.determine_group({depth: depth, minutes: minutes})
  end

  it "has a determine_group method accepting 2 arguments" do
    expect(subject).to respond_to.with_keywords(:depth, :minutes)
  end

  context "at depth 10m" do
    it "with 10 minutes should return with Category A" do
      expect(determine_group({depth: 10, minutes:10})).to eq("A")
    end

    it "with 20 minutes should return with Category B" do
      expect(determine_group({depth: 10, minutes:20})).to eq("B")
    end

    it "with 26 minutes should return with Category C" do
      expect(determine_group({depth: 10, minutes:26})).to eq("C")
    end

    it "with 56 minutes should return with Category K" do
      expect(determine_group({depth: 10, minutes:56})).to eq("K")
    end

    it "with 64 minutes should return with Category L" do
      expect(determine_group({depth: 10, minutes:64})).to eq("L")
    end
  end

  context "at depth 14m" do
    it "with 19 minutes should return with Category C" do
      expect(determine_group({depth: 14, minutes:19})).to eq("C")
    end

    it "with 34 minutes should return with Category I" do
      expect(determine_group({depth: 14, minutes:34})).to eq("I")
    end

    it "with 36 minutes should return with Category J" do
      expect(determine_group({depth: 14, minutes:36})).to eq("J")
    end

    it "with 50 minutes should return with Category N" do
      expect(determine_group({depth: 14, minutes:50})).to eq("N")
    end

    it "with 75 minutes should return with Category U" do
      expect(determine_group({depth: 14, minutes:75})).to eq("U")
    end
  end

  context "at depth 16m" do
    it "with 19 minutes should return with Category D" do
      expect(determine_group({depth: 16, minutes:19})).to eq("D")
    end

    it "with 34 minutes should return with Category K" do
      expect(determine_group({depth: 16, minutes:34})).to eq("K")
    end

    it "with 36 minutes should return with Category L" do
      expect(determine_group({depth: 16, minutes:36})).to eq("L")
    end

    it "with 50 minutes should return with Category Q" do
      expect(determine_group({depth: 16, minutes:50})).to eq("Q")
    end

    it "with 71 minutes should return with Category X" do
      expect(determine_group({depth: 16, minutes:71})).to eq("X")
    end
  end

  context "at depth 18m" do
    it "with 19 minutes should return with Category F" do
      expect(determine_group({depth: 18, minutes:19})).to eq("F")
    end

    it "with 34 minutes should return with Category M" do
      expect(determine_group({depth: 18, minutes:34})).to eq("M")
    end

    it "with 36 minutes should return with Category N" do
      expect(determine_group({depth: 18, minutes:36})).to eq("N")
    end

    it "with 50 minutes should return with Category T" do
      expect(determine_group({depth: 18, minutes:50})).to eq("T")
    end

    it "with 56 minutes should return with Category W" do
      expect(determine_group({depth: 18, minutes:56})).to eq("W")
    end
  end

  context "at depth 20m" do
    it "with 19 minutes should return with Category G" do
      expect(determine_group({depth: 20, minutes:19})).to eq("G")
    end

    it "with 34 minutes should return with Category O" do
      expect(determine_group({depth: 20, minutes:34})).to eq("O")
    end

    it "with 36 minutes should return with Category P" do
      expect(determine_group({depth: 20, minutes:36})).to eq("P")
    end

    it "with 40 minutes should return with Category R" do
      expect(determine_group({depth: 20, minutes:40})).to eq("R")
    end

    it "with 45 minutes should return with Category U" do
      expect(determine_group({depth: 20, minutes:45})).to eq("U")
    end

    it "with 45 minutes should not return V" do
      expect(determine_group({depth: 20, minutes:45})).not_to eq("V")
    end
  end
  context "at depth 22m" do
    it "with 9 minutes should return with Category B" do
      expect(determine_group({depth: 22, minutes:9})).to eq("B")
    end

    it "with 17 minutes should return with Category G" do
      expect(determine_group({depth: 22, minutes:17})).to eq("G")
    end

    it "with 21 minutes should return with Category I" do
      expect(determine_group({depth: 22, minutes:21})).to eq("I")
    end

    it "with 29 minutes should return with Category N" do
      expect(determine_group({depth: 22, minutes:29})).to eq("N")
    end

    it "with 37 minutes should return with Category S" do
      expect(determine_group({depth: 22, minutes:37})).to eq("S")
    end

    it "with 37 minutes should not return T" do
      expect(determine_group({depth: 22, minutes:37})).not_to eq("T")
    end
  end

  context "at depth 25m" do
    it "with 3 minutes should return with Category A" do
      expect(determine_group({depth: 25, minutes:3})).to eq("A")
    end

    it "with 15 minutes should return with Category G" do
      expect(determine_group({depth: 25, minutes:15})).to eq("G")
    end

    it "with 18 minutes should return with Category I" do
      expect(determine_group({depth: 25, minutes:18})).to eq("I")
    end

    it "with 22 minutes should return with Category L" do
      expect(determine_group({depth: 25, minutes:22})).to eq("L")
    end

    it "with 25 minutes should return with Category N" do
      expect(determine_group({depth: 25, minutes:25})).to eq("N")
    end

    it "with 29 minutes should not return R" do
      expect(determine_group({depth: 25, minutes:29})).not_to eq("R")
    end
  end

  context "at depth 30m" do
    it "with 3 minutes should return with Category A" do
      expect(determine_group({depth: 30, minutes:3})).to eq("A")
    end

    it "with 6 minutes should return with Category B" do
      expect(determine_group({depth: 30, minutes:6})).to eq("B")
    end

    it "with 11 minutes should return with Category F" do
      expect(determine_group({depth: 30, minutes:11})).to eq("F")
    end

    it "with 15 minutes should return with Category J" do
      expect(determine_group({depth: 30, minutes:15})).to eq("J")
    end

    it "with 20 minutes should return with Category N" do
      expect(determine_group({depth: 30, minutes:20})).to eq("N")
    end

    it "with 20 minutes should not return M" do
      expect(determine_group({depth: 30, minutes:20})).not_to eq("O")
    end
  end

  context "at depth 35m" do
    it "with 5 minutes should return with Category B" do
      expect(determine_group({depth: 35, minutes:5})).to eq("B")
    end

    it "with 8 minutes should return with Category D" do
      expect(determine_group({depth: 35, minutes:8})).to eq("D")
    end

    it "with 9 minutes should return with Category F" do
      expect(determine_group({depth: 35, minutes:9})).to eq("F")
    end

    it "with 12 minutes should return with Category I" do
      expect(determine_group({depth: 35, minutes:12})).to eq("I")
    end

    it "with 14 minutes should return with Category K" do
      expect(determine_group({depth: 35, minutes:14})).to eq("K")
    end

    it "with 14 minutes should not return J" do
      expect(determine_group({depth: 35, minutes:14})).not_to eq("J")
    end
  end

  context "at depth 40m" do
    it "with 5 minutes should return with Category B" do
      expect(determine_group({depth: 40, minutes:5})).to eq("B")
    end

    it "with 6 minutes should return with Category C" do
      expect(determine_group({depth: 40, minutes:6})).to eq("C")
    end

    it "with 7 minutes should return with Category E" do
      expect(determine_group({depth: 40, minutes:7})).to eq("E")
    end

    it "with 8 minutes should return with Category F" do
      expect(determine_group({depth: 40, minutes:8})).to eq("F")
    end

    it "with 9 minutes should return with Category G" do
      expect(determine_group({depth: 40, minutes:9})).to eq("G")
    end

    it "with 9 minutes should not return G" do
      expect(determine_group({depth: 40, minutes:9})).not_to eq("F")
    end
  end

  context "at depth 42m" do
    it "with 2 minutes should return with Category B" do
      expect(determine_group({depth: 42, minutes:2})).to eq("B")
    end

    it "with 4 minutes should return with Category B" do
      expect(determine_group({depth: 42, minutes:4})).to eq("B")
    end

    it "with 6 minutes should return with Category D" do
      expect(determine_group({depth: 42, minutes:6})).to eq("D")
    end

    it "with 7 minutes should return with Category E" do
      expect(determine_group({depth: 42, minutes:7})).to eq("E")
    end

    it "with 8 minutes should return with Category F" do
      expect(determine_group({depth: 42, minutes:8})).to eq("F")
    end

    it "with 9 minutes should not return E" do
      expect(determine_group({depth: 42, minutes:9})).not_to eq("E")
    end
  end
  end