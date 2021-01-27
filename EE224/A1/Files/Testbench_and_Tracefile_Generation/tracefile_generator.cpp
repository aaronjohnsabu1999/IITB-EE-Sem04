#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <vector>
#include <fstream>
#include <cmath>

using namespace std;

int main()
{
    ofstream outfile("TRACEFILE.txt");
    for(int x = 0; x<256; x++)
        for(int y =0; y<256; y++)
        {
            int a = x, b = y;
            int c = a*b;
            vector<int> array_1;
            vector<int> array_2;
            vector<int> output;
            for(int i=0; i<8; i++)
            {
                array_1.push_back(a%2);
                array_2.push_back(b%2);
                a/=2;
                b/=2;
            }
            for(int i=0; i<16; i++)
            {
                output.push_back(c%2);
                c/=2;
            }
            for(int j = 0; j<8; j++)
                outfile<<array_1[7-j];
            for(int k = 0; k<8; k++)
                outfile<<array_2[7-k];
            cout<<" ";
            for(int l= 0; l<16; l++)
            outfile<<output[15-l];
            outfile<<" 1111111111111111"<<endl;
        }
    outfile.close();
    return 0;
}
