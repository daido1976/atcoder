#include <iostream>
#include <vector>
using namespace std;

void rec(vector<int> vec, int result)
{
  for (int i = 0; i < vec.size(); i++)
  {
    if (vec[i] % 2 == 0)
    {
      vec[i] = vec[i] / 2;
    }
    else
    {
      cout << result << endl;
      return;
    }
  }
  result++;
  rec(vec, result);
}

int main()
{
  int result = 0;
  int n;
  cin >> n;
  vector<int> vec(n);
  for (int i = 0; i < n; i++)
  {
    cin >> vec[i];
  }

  rec(vec, result);
}
