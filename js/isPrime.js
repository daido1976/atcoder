const isPrime = (number) => {
  // 型チェック
  if (typeof number !== "number") {
    throw new TypeError(`${number} is not a number. Please passed a number.`);
  }

  // 1 以下なら素数ではない
  if (number <= 1) {
    return false;
  }

  // 2 以外の偶数なら素数ではない
  if (number !== 2 && number % 2 === 0) {
    return false;
  }

  // 2 以上の数で割り切れれば素数ではない
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
};

console.log(isPrime(997));
