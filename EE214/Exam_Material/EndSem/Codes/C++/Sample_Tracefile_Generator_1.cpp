#include <iostream>
#include <fstream>
#include "Bin2Dec&&Dec2Bin.h"
using namespace std;

int bit_convert(int a)
{
    return (a%2) + 10*((a/2)%2) + 100*(((a/2)/2)%2) + 1000*((((a/2)/2)/2)%2);
}

int main()
{
    ofstream outfile("TRACEFILE.txt");
    for(int i = 0; i<16; i++)
    {
        for(int j = 0; j<16; j++)
        {
            int first = bit_convert(i);
            int second = bit_convert(j);
            int sum = bit_convert(i+j);

            int one[4],two[4],three[4];

            for(int k = 0; k<4; k++)
            {
                one[3-k]   = first  % 10;
                two[3-k]   = second % 10;
                three[3-k] = sum    % 10;
                first  /= 10;
                second /= 10;
                sum    /= 10;
            }
            outfile<<one[0]<<one[1]<<one[2]<<one[3]<<two[0]<<two[1]<<two[2]<<two[3]<<" "<<three[0]<<three[1]<<three[2]<<three[3]<<" "<<"1111"<<endl;
        }
    }
    outfile.close();
    return 0;
}
