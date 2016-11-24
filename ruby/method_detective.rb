# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".<swapcase>
# => ìInVeStIgAtIoNî

"zom".<insert (1, "o")>
# => ìzoomî

"enhance".<center(4)>
# => "    enhance    "

"Stop! Youíre under arrest!".<upcase>
# => "STOP! YOUíRE UNDER ARREST!"

"the usual"<<" suspects"
#=> "the usual suspects"

" suspects".<prepend("the usual")>
# => "the usual suspects"

"The case of the disappearing last letter".<chop>
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".<[1..-1]>
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".<split.join(" ")
>
# => "Elementary, my dear Watson!"

"z".<bytes>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#it is the ASCII character for "Z"

# "How many times does the letter 'a' appear in this string?".<count("a")>
# => 4