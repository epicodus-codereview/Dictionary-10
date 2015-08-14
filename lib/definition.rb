class Definition

  define_method(:initialize) do |part_of_speech, decribe|
    @part_of_speech = part_of_speech
  end

  define_method(:part_of_speech) do
    @part_of_speech
  end
end
