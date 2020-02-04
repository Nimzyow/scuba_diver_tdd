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

    context "at depth 16m" do
      it "with 19 minutes should return with Category D" do
        expect(subject.determine_group(16, 19)).to eq("D")
      end

      it "with 34 minutes should return with Category K" do
        expect(subject.determine_group(16, 34)).to eq("K")
      end

      it "with 36 minutes should return with Category L" do
        expect(subject.determine_group(16, 36)).to eq("L")
      end

      it "with 50 minutes should return with Category Q" do
        expect(subject.determine_group(16, 50)).to eq("Q")
      end

      it "with 71 minutes should return with Category X" do
        expect(subject.determine_group(16, 71)).to eq("X")
      end
    end

    context "at depth 18m" do
      it "with 19 minutes should return with Category F" do
        expect(subject.determine_group(18, 19)).to eq("F")
      end

      it "with 34 minutes should return with Category M" do
        expect(subject.determine_group(18, 34)).to eq("M")
      end

      it "with 36 minutes should return with Category N" do
        expect(subject.determine_group(18, 36)).to eq("N")
      end

      it "with 50 minutes should return with Category T" do
        expect(subject.determine_group(18, 50)).to eq("T")
      end

      it "with 56 minutes should return with Category W" do
        expect(subject.determine_group(18, 56)).to eq("W")
      end
    end
  end