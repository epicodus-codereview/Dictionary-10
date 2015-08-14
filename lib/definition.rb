class Definition

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
end
