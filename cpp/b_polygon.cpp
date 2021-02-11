#include <iostream>
using namespace std;

bool is_drawable(int max, int rem_sum)
{
  if (max < rem_sum)
  {
    return true;
  }
  return false;
}

int main()
{
  string result;
  int n;
  cin >> n;

  int maxL = 0, sum = 0;

  for (int i = 0; i < n; i++)
  {
    int L;
    cin >> L;
    sum += L;
    maxL = max(maxL, L);
  }

  int rem_sum = sum - maxL;

  if (is_drawable(maxL, rem_sum))
  {
    result = "Yes";
  }
  else
  {
    result = "No";
  }

  cout << result << endl;
}
