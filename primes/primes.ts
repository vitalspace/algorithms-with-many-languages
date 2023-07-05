const prime = (n: number): boolean => {
  if (n <= 1) {
    return false;
  }

  let i: number = 2;

  while (i * i <= n) {
    if (n % i === 0) {
      return false;
    }

    i += 1;
  }
  return true;
};

const num: number = 6;

if (!prime(num)) {
  console.log(`The number ${num} is not prime number`);
} else {
  console.log(`The number ${num} is a prime number`);
}
