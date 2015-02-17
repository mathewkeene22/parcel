class Parcel
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end

  define_method(:volume) do
    @volume = @length * @width * @height
  end

  define_method(:cost_to_ship) do
    @volume * 0.25
  end
end
