#include<iostream>
#include<math.h>

#define N 4

using namespace std;

int Bin2Dec(int bin[N])
{
    int out = 0;
    for(int i = 0; i<N; i++)
        out += bin[i]*pow(2,i);
    return out;
}

int* Dec2Bin(int Dec)
{
    static int bin[N];
    int temp = Dec;
    int i = 0;
    while(temp > 0)
    {
        bin[i] = temp % 2;
        temp = temp/2;
        i++;
    }
    return bin;
}

int Dec2BinI(int Dec)
{
    int bin[N], temp = Dec, i = 0;
    while(temp > 0)
    {
        bin[i] = temp % 2;
        temp = temp/2;
        i++;
    }
    int binc = 0;
    for(int i = 0; i<N; i++)
        binc += (bin[N-i-1]*pow(10, i));
    return binc;
}

int main()
{
    int bin1[N];
    for(int i = 0; i<N; i++)
        bin1[i] = 0;
    int dec1 = 0;
    bool choice = true;
    while(choice == true)
    {
        cout<<"--- The Binary 2 Decimal Converter ---"<<endl<<endl;
        cout<<"Input a(n) "<<N<<"-bit binary number (with spaces between each bit): ";
        for(int i = N-1; i>=0; i--)
            cin>>bin1[i];
        cout<<endl<<"The Decimal form of ";
        for(int i = N-1; i>=0; i--)
            cout<<bin1[i];
        cout<<" is "<<Bin2Dec(bin1)<<endl<<endl;

        cout<<"--- The Decimal 2 Binary Converter ---"<<endl<<endl;
        cout<<"Input a decimal number (smaller than "<<pow(2, N)<<"): ";
        cin>>dec1;
        int* pt = Dec2Bin(dec1);
        cout<<endl<<"The Binary form of "<<dec1<<" is ";
        for(int i = N-1; i>=0; i--)
            cout<<pt[i];
        cout<<endl<<endl<<"Do you want to do it another time (1 or 0)?";
        cin>>choice;
        cout<<endl<<endl<<endl;
    }
    return 0;
}
