require 'pry'

# def reformat_languages(languages)
#   languages.each_with_object({}) do |language_style, language|
#     binding.pry
#   end
# end

def reformat_languages(languages)
  languages.each_with_object({}) do |(language_style, language_types), language_hash|
    language_types.each do |language_name, language_type|

      if !language_hash[language_name]
        language_hash[language_name] = {
          language_type.keys[0] => language_type.values[0],
          :style => [
            language_style
          ]
        }
      else
        language_hash[language_name][:style] << language_style
      end

    end
  end
end