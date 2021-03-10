def fizz_buzz(n):
    if n % 15 == 0:
        print('FizzBuzz')
    elif n % 3 == 0:
        print('Fizz')
    elif n % 5 == 0:
        print('Buzz')
    else:
        print(str(n))


for i in range(1, 101):
    fizz_buzz(i)
