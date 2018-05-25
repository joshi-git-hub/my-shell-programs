#!/bin/bash
# in this program we will ping a range of ip address.
for i in 192.168.2.{100..120}
do
ping -c 2 $i > /dev/null
if [ $? = 0 ]
then 
{
echo "$i is up"
}
else
{
echo "$i is down"
}
fi
done
