def reformat_languages(languages)
  # your code here
  new_hash={}

  languages.each do|key, values|
    values.each do|lang, desc|
      if new_hash[lang]==nil
        new_hash[lang]=desc
        new_hash[lang][:style]=[key]
      else
        new_hash[lang][:style].push(key)
      end
    end
  end
   new_hash
end
