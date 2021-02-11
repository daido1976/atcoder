#include <iostream>
using namespace std;

bool is_even(int n)
{
  if (n % 2 == 0)
  {
    return true;
  }
  return false;
}

int main()
{
  string result;
  int a, b;
  cin >> a >> b;

  int product = a * b;
  if (is_even(product))
  {
    result = "Even";
  }
  else
  {
    result = "Odd";
  }

  cout << result << endl;
}
