replace_ascii_and_unicode = function(text){
  text = gsub('&#39', '\'', text)
  text = gsub('&#44', ',', text) #<-- let's start using tab as delimiter, not comma.
  text = gsub('&quot;', '\"', text)
  text = gsub('&#33', '!', text)
  text = gsub('&#8216;', '\'', text)
  text = gsub('&#8217;', '\'', text)
  text = gsub('&#8220;', '"', text)
  text = gsub('&#8221;', '"', text)
  text = gsub('&#8230;', '...', text)
  text = gsub('&#9;', ' ', text) # &#9; is a tab: let's change this to a space
  text = gsub('&#160;', ' ', text) # i think this is a space.
  text = gsub('&#180;', '\'', text)
  text = gsub('&#176;', ' degree', text) #degree sign
  text = gsub('&#186;', ' degree', text) #degree sign
  text = gsub('&#170;', ' degree', text) #degree sign
  text = gsub('&#8211;', '-', text)
  text = gsub('&#8212;', '—', text)
  text = gsub('&#8226;', ' ', text) #bullet point
  text = gsub('&#167;', ' ', text) #section symbol
  text = gsub('&#8250;', ' ', text) #quotation mark that looks like >
  text = gsub('&#188;', 'one fourth', text)
  text = gsub('&#190;', 'three fourths', text)
  text = gsub('&#182;', ' ', text) #paragraph symbol
  text = gsub('&#382;', 'Ž', text) #Ž
  text = gsub('&Atilde;&#161;', 'á', text) #this should be á 
  return(text)
}