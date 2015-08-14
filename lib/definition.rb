class Definition
  @@definitions = []

  define_method(:initialize) do |part_of_speech, describe|
    @part_of_speech = part_of_speech
    @describe = describe
  end

  define_method(:part_of_speech) do
    @part_of_speech
  end

  define_method(:describe) do
    @describe
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end
end
