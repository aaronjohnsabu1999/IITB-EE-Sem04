#include <iostream>
#include <string>
using namespace std;
int convertintobit4(int a)
{
	int b[4];
	for(int i=0; i<4; i++)
	{
		b[i]=a%2;
		a=a/2;
	}
	for(int i=3; i>=0 ; i--)
	{
		cout<<b[i];
	}
	return 0;
}

int convertintobit8(int a)
{
	int b[8];
	for(int i=0; i<8; i++)
	{
		b[i]=a%2;
		a=a/2;
	}
	for(int i=7; i>=0 ; i--)
	{
		cout<<b[i];
	}
	return 0;
}

int main()
{

    cout<<"00100000000 _________ 000000000"<<endl;
    cout<<"10000000000 _________ 000000000"<<endl;
	for(int i=0; i<16; i++)
	{
	    for(int j=0; j<16; j++)
        {
            for(int k = 0; k<4; k++)
            {
                cout<<"010";
                convertintobit4(i);
                convertintobit4(j);
                cout<<" 000000000 000000000"<<endl;
                cout<<"110";
                convertintobit4(i);
                convertintobit4(j);
                cout<<" 000000000 000000000"<<endl;
            }
            cout<<"010";
            convertintobit4(i);
            convertintobit4(j);
            cout<<' ';
            convertintobit8(i*j);
            cout<<"1 111111111"<<endl;
            cout<<"110";
            convertintobit4(i);
            convertintobit4(j);
            cout<<" 000000000 000000000"<<endl;
        }
	}
}