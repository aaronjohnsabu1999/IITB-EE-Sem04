#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <vector>
#include <cmath>
#include <fstream>

using namespace std;

int bit_convert(int a)
{
    return (a%2) + 10*((a/2)%2) + 100*(((a/2)/2)%2) + 1000*((((a/2)/2)/2)%2);
}
int inverter(int a)
{
    if(a = 0) return 1;
    else return 0;
}

void multiplier_generator(int a, int b){
    int c = a*b;
    vector<int> array_1;
    vector<int> array_2;
    vector<int> output;
    for(int i=0; i<8; i++)
    {
        array_1.push_back(a%2);
        array_2.push_back(b%2);
        output.push_back(c%2);
        a/=2;
        b/=2;
        c/=2;
    }
    for(int j = 0; j<8; j++)
        cout<<array_1[7-j];
    for(int k = 0; k<8; k++)
        cout<<array_2[7-k];
    cout<<"11 ";
    for(int l= 0; l<8; l++)
        cout<<output[7-l];
    cout<<" 11111111"<<endl;
    return;
}
void quarterprecfloatmultiplier(int a[8], int b[8])
{
    int s[16];
    for(int i = 0; i<16; i++)
        s[i] = 0;
    float A = 0, B = 0, S = 0;
    A = ((a[7]*1)+(a[6]*2)+(a[5]*4)+(a[4]*8)) * ((a[1]*1)+(a[2]*0.5)+(a[3]*0.25));
    B = ((b[7]*1)+(b[6]*2)+(b[5]*4)+(b[4]*8)) * ((b[1]*1)+(b[2]*0.5)+(b[3]*0.25));
    S = A * B;
    if(S < 0)
        s[0] = 1;
    if( (S/1) = (int)(S/1) )
    {
        s[2] = s[3] = 0;
        s[1] = 1;
        S = S*1.0;
    }
    else if( (S/0.5) = (int)(S/0.5) )
    {
        s[2] = s[3] = 0;
        s[1] = 1;
        S = S*0.5;

    }
    else
    {
        s[1] = s[2] = s[3] = 1;
        S = S*0.25;
    }

    if (b[7] = 1)
    {
        for(int i = 0; i<8; i++)
        {
            a[i] = inverter(a[i]);
            b[i] = inverter(b[i]);
        }

    }

}

int main()
{
    ofstream outfile("TRACEFILE.txt");
    for(int i = 0;i<16;++i){
        for(int j = 0;j<16;++j){
            int first = bit_convert(i);
            int second = bit_convert(j);
            int sum = bit_convert(i+j);
            int one[4],two[4],three[4];
            for(int k=0;k<4;++k){
                one[3-k]=first%10;
                two[3-k]=second%10;
                three[3-k]=sum%10;
                first/=10;
                second/=10;
                sum/=10;
            }
            outfile<<one[0]<<one[1]<<one[2]<<one[3]<<two[0]<<two[1]<<two[2]<<two[3]<<" "<<three[0]<<three[1]<<three[2]<<three[3]<<" "<<"1111"<<endl;
        }
    }
    outfile.close();
    return 0;
}
