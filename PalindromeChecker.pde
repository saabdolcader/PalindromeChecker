public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String backwards = reverse(word);
  String nospace = reverse(noSpaces(word));
  String justletters = reverse(noSpaces(onlyLetters(word)));
  String nouppercase = reverse(noSpaces(onlyLetters(noCapitals(word))));
  if (word.equals(backwards))
  {
    return true;
  }
  else if (nospace.equals(noSpaces(word)))
  {
    return true;
  }
  else if (justletters.equals(noSpaces(onlyLetters(word))))
  {
    return true;
  }
  else if (nouppercase.equals(noCapitals(noSpaces(onlyLetters(word)))))
  {
    return true;
  }
  else
  return false;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String onlyLetters(String sString){
  String str = "";
  for (int i = 0; i < sString.length(); i++)
  {
    if (Character.isLetter(sString.charAt(i)) == true)
    {
      str = str + sString.charAt(i);
    }
  }
  return str;
}

public String noSpaces(String words){
  String empty = "";
  for (int i = 0; i < words.length(); i++)
  {
    if (words.charAt(i) != ' ')
    {
      empty = empty + words.charAt(i);
    }
  }
  return empty;
}

public String reverse(String str)
{
  String sNew = ""; 
  for (int i = str.length(); i > 0; i--)
  {
    sNew = sNew + str.substring(i-1, i);
  }
  return sNew;
}
