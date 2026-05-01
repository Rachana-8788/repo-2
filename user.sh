
#!/bin/bash


echo "-----------user creation started-------------"


read -p "enter username:" username
read -p " enter password:" password


sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"



echo "------------user added successfully-------------"


sudo userdel "$username"

echo "user deleted successfully"

sudo cat /etc/passwd | grep "$username"


if 
	[count -le 0];
then 
	["count is 0 user was deleted"];
else
	["count is greater than 0"];
fi









