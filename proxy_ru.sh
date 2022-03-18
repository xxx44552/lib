#!/bin/bash;
LOCALE=$(proxychains curl ipinfo.io/country?token=&1);
echo "-------------------------------------------------";
echo "current country -> $LOCALE";

for (( count=1; count<1000; count++ ))
  do
  	if [[ $LOCALE != 'RU' ]] ; then 
    	echo "<<<Repeat>>>:"
    	echo "--------> $LOCALE"
    	sudo systemctl restart tor;
    	LOCALE=$(proxychains curl ipinfo.io/country?token=$1);

	else 
	    echo '<<----RU---->>'
	    break;
	fi
    echo "$count <----- count"
  done
