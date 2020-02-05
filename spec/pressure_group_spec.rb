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

    context "at depth 20m" do
      it "with 19 minutes should return with Category G" do
        expect(subject.determine_group(20, 19)).to eq("G")
      end

      it "with 34 minutes should return with Category O" do
        expect(subject.determine_group(20, 34)).to eq("O")
      end

      it "with 36 minutes should return with Category P" do
        expect(subject.determine_group(20, 36)).to eq("P")
      end

      it "with 40 minutes should return with Category R" do
        expect(subject.determine_group(20, 40)).to eq("R")
      end

      it "with 45 minutes should return with Category U" do
        expect(subject.determine_group(20, 45)).to eq("U")
      end

      it "with 45 minutes should not return V" do
        expect(subject.determine_group(20, 45)).not_to eq("V")
      end
    end
    context "at depth 22m" do
      it "with 9 minutes should return with Category B" do
        expect(subject.determine_group(22, 9)).to eq("B")
      end

      it "with 17 minutes should return with Category G" do
        expect(subject.determine_group(22, 17)).to eq("G")
      end

      it "with 21 minutes should return with Category I" do
        expect(subject.determine_group(22, 21)).to eq("I")
      end

      it "with 29 minutes should return with Category N" do
        expect(subject.determine_group(22, 29)).to eq("N")
      end

      it "with 37 minutes should return with Category S" do
        expect(subject.determine_group(22, 37)).to eq("S")
      end

      it "with 37 minutes should not return T" do
        expect(subject.determine_group(22, 37)).not_to eq("T")
      end
    end

    context "at depth 25m" do
      it "with 3 minutes should return with Category A" do
        expect(subject.determine_group(25, 3)).to eq("A")
      end

      it "with 15 minutes should return with Category G" do
        expect(subject.determine_group(25, 15)).to eq("G")
      end

      it "with 18 minutes should return with Category I" do
        expect(subject.determine_group(25, 18)).to eq("I")
      end

      it "with 22 minutes should return with Category L" do
        expect(subject.determine_group(25, 22)).to eq("L")
      end

      it "with 25 minutes should return with Category N" do
        expect(subject.determine_group(25, 25)).to eq("N")
      end

      it "with 29 minutes should not return R" do
        expect(subject.determine_group(25, 29)).not_to eq("R")
      end
    end

    context "at depth 30m" do
      it "with 3 minutes should return with Category A" do
        expect(subject.determine_group(30, 3)).to eq("A")
      end

      it "with 6 minutes should return with Category B" do
        expect(subject.determine_group(30, 6)).to eq("B")
      end

      it "with 11 minutes should return with Category F" do
        expect(subject.determine_group(30, 11)).to eq("F")
      end

      it "with 15 minutes should return with Category J" do
        expect(subject.determine_group(30, 15)).to eq("J")
      end

      it "with 20 minutes should return with Category N" do
        expect(subject.determine_group(30, 20)).to eq("N")
      end

      it "with 20 minutes should not return M" do
        expect(subject.determine_group(30, 20)).not_to eq("O")
      end
    end

    context "at depth 35m" do
      it "with 5 minutes should return with Category B" do
        expect(subject.determine_group(35, 5)).to eq("B")
      end

      it "with 8 minutes should return with Category D" do
        expect(subject.determine_group(35, 8)).to eq("D")
      end

      it "with 9 minutes should return with Category F" do
        expect(subject.determine_group(35, 9)).to eq("F")
      end

      it "with 12 minutes should return with Category I" do
        expect(subject.determine_group(35, 12)).to eq("I")
      end

      it "with 14 minutes should return with Category K" do
        expect(subject.determine_group(35, 14)).to eq("K")
      end

      it "with 14 minutes should not return J" do
        expect(subject.determine_group(35, 14)).not_to eq("J")
      end
    end

    context "at depth 40m" do
      it "with 5 minutes should return with Category B" do
        expect(subject.determine_group(40, 5)).to eq("B")
      end

      it "with 6 minutes should return with Category C" do
        expect(subject.determine_group(40, 6)).to eq("C")
      end

      it "with 7 minutes should return with Category E" do
        expect(subject.determine_group(40, 7)).to eq("E")
      end

      it "with 8 minutes should return with Category F" do
        expect(subject.determine_group(40, 8)).to eq("F")
      end

      it "with 9 minutes should return with Category G" do
        expect(subject.determine_group(40, 9)).to eq("G")
      end

      it "with 9 minutes should not return G" do
        expect(subject.determine_group(40, 9)).not_to eq("F")
      end
    end

    context "at depth 42m" do
      it "with 2 minutes should return with Category B" do
        expect(subject.determine_group(42, 2)).to eq("B")
      end

      it "with 4 minutes should return with Category B" do
        expect(subject.determine_group(42, 4)).to eq("B")
      end

      it "with 6 minutes should return with Category D" do
        expect(subject.determine_group(42, 6)).to eq("D")
      end

      it "with 7 minutes should return with Category E" do
        expect(subject.determine_group(42, 7)).to eq("E")
      end

      it "with 8 minutes should return with Category F" do
        expect(subject.determine_group(42, 8)).to eq("F")
      end

      it "with 9 minutes should not return E" do
        expect(subject.determine_group(42, 9)).not_to eq("E")
      end
    end
  end