require "pressure_group"

RSpec.describe Pressure_group do

    context "at depth 10m" do
      it "with 10 minutes should return with Category A" do
        expect(subject.determine_group(10, 10)).to eq("A")
      end

      it "with 20 minutes should return with Category B" do
        expect(subject.determine_group(10, 20)).to eq("B")
      end

      it "with 26 minutes should return with Category C" do
        expect(subject.determine_group(10, 26)).to eq("C")
      end

      it "with 56 minutes should return with Category K" do
        expect(subject.determine_group(10, 56)).to eq("K")
      end

      it "with 64 minutes should return with Category L" do
        expect(subject.determine_group(10, 64)).to eq("L")
      end
    end

    context "at depth 14m" do
      it "with 19 minutes should return with Category C" do
        expect(subject.determine_group(14, 19)).to eq("C")
      end

      it "with 34 minutes should return with Category I" do
        expect(subject.determine_group(14, 34)).to eq("I")
      end

      it "with 36 minutes should return with Category J" do
        expect(subject.determine_group(14, 36)).to eq("J")
      end

      it "with 50 minutes should return with Category N" do
        expect(subject.determine_group(14, 50)).to eq("N")
      end

      it "with 75 minutes should return with Category U" do
        expect(subject.determine_group(14, 75)).to eq("U")
      end
    end
  end