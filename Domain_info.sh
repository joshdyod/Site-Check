#! /bin/bash
read -p "Domains to test [ENTER]:" TESTDOMAIN
clear
echo "-------- Domain's IP --------"
dig $TESTDOMAIN  +short | head -n1
echo "-------- Domain's Nameservers --------"
dig -t SOA $TESTDOMAIN +short
echo "-------- Domain's Registrar --------"
whois $TESTDOMAIN | grep -i -w "Registrar:"| grep -v "  Registrar:"
echo "-------- Domain's Registrar Experation Date --------"
whois $TESTDOMAIN | grep -i -w "Registry Expiry Date:"
echo "-------- Domain's Host --------"
dig +short $TESTDOMAIN | head -n1 | xargs whois | grep OrgName
echo "-------- Domain's Ports and Programs --------"
nmap -sV -p  22,80,3306,25  $TESTDOMAIN
echo "-------- Domain's SSl Information --------"
nmap -p 443  -script=ssl-cert $TESTDOMAIN