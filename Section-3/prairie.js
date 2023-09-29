function isPrime(nb) {
  for (let i = 2; i < nb; i++) {
    if (nb % i === 0) {
      return false;
    }
  }
  return true;
}
let user_input;
user_input = prompt("enter a nb");
for (let i = 2; i <= user_input; i++) {
  if (isPrime(i) || i == 2) {
    console.log(i);
  }
}
