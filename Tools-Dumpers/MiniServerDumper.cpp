#include <iostream>
#include <Windows.h>

using namespace std;

string input;
string finalroute;

int main()
{
    SetConsoleTitle("gkfdngdnflgfd");
    Sleep(1000);
    cout << "" << endl;
    cout << "[+] Fivem Server Code : " << endl;
    cout << "[+] example: ..." << "cfx.re/51fdg1" << endl;
    cout << "[*] -> ";
    cin >> input;
    
    finalroute = "curl https://servers-frontend.fivem.net/api/servers/single/" + input + " --silent" + " > tmp_" + input + ".txt";
    const char* c = finalroute.c_str();
    system(c);
}