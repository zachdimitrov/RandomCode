#include <iostream>

using namespace std;

int main(int args, char *argv[])
{
    cout << "N=" << endl;
    int n;
    cin >> n;

    int fact = 1;

    do
    {
        fact *= n;
        n--;
    } while (n > 0);

    cout << "n!= " << fact << endl;
    cin >> n;

    return 0;
}
