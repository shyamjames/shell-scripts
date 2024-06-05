#password strength checker

echo "welcome $USER"

#receiving password from user
echo "Enter the password"
read password
len=${expr length '$password'}

echo $len