#!/bin/bash
HI='\033[0;32m'
NORMAL='\033[0m'

echo -e "${HI}1. starts or ends with Jose$NORMAL"
grep -E '^Jose' phonebook.dat
grep -E 'Jose$' phonebook.dat

echo -e "${HI}2. contain at least twenty-seven upper or lower case characters a-z$NORMAL"
grep -E '[a-zA-Z]{27,}' phonebook.dat

echo -e "${HI}3. consists of more than 18 characters.$NORMAL"
grep -E '.{19,}' phonebook.dat

echo -e "${HI}4. contains exactly 10 characters$NORMAL"
grep -E '.{10}' phonebook.dat

echo -e "${HI}5. contains a sequence 6-8 characters upper or lower case a-z. Separated from the rest of the line by a space or tab on each side$NORMAL"
grep -E '( |\t)[a-zA-Z]{6,8}( |\t)' phonebook.dat

echo -e "${HI}6. contains a local phone number: 3 digits, dash 4 digits$NORMAL"
grep -E '[^-]^[0-9]{3}-[0-9]{4}' phonebook.dat

echo -e "${HI}7. a valid URL on a line by itself$NORMAL"
grep -E '^(http|HTTP)://[a-zA-Z]+\.[a-zA-Z]+\.(com|edu)$' phonebook.dat
