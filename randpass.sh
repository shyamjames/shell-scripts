# Random password generator
echo "Welcome $USER"
chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+{}[]|:;<>,.?/~"
echo "The password will be generated from these characters: $chars"
echo "Enter password length"
read length

# Function to generate random password
rand_pass() {
  password=$(head /dev/urandom | LC_ALL=C tr -dc "$chars" | head -c "$length" ; echo '')
  # Print the generated password
  echo "The generated password is: $password"
}
# Call the function to generate a password
rand_pass
