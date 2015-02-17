require('rspec')
require('parcel')

describe(Parcel) do
  describe(:volume) do
    it("multiplies the length, width, and height to produce the volume") do
      new_parcel = Parcel.new(5, 5, 5)
      expect(new_parcel.volume()).to(eq(125))
    end
  end

  describe(:cost_to_ship) do
    it("looks at the volume and adjusts the cost accordingly") do
      new_parcel = Parcel.new(5, 5, 5)
      new_parcel.volume()
      expect(new_parcel.cost_to_ship()).to(eq(31.25))
    end
  end
end
