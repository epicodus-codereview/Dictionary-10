class Definition
  @@definitions = []

  define_method(:initialize) do |part_of_speech, describe|
    @part_of_speech = part_of_speech
    @describe = describe
    @id = @@definitions.length.+(1)
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

  define_method(:id) do
    @id.to_i()
  end

  define_singleton_method(:find) do |id|
  found_definition = nil
  @@definitions.each() do |definition|
    if definition.id().eql?(id)
      found_definition = definition
    end
  end
  found_definition
  end
end
