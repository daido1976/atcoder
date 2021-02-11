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
  int result = 0;
  string s;
  cin >> s;

  for (int i = 0; i < s.size(); i++)
  {
    if (s[i] == '1')
    {
      result++;
    }
  }

  cout << result << endl;
}
