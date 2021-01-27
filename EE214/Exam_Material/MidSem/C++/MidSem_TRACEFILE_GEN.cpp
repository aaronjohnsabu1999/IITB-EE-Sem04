#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <fstream>
#include <string>
#include <vector>
#include <cmath>

using namespace std;

void function1()
{
    ofstream outfile("TRACEFILE.txt");
    int a = 0, b = 0, c = 0, d = 0, e = 0;
    for(int a = 0; a<2; a++)
        for(int b = 0; b<2; b++)
            for(int c = 0; c<2; c++)
                for(int d = 0; d<2; d++)
                    for(int e = 0; e<2; e++)
                        if((a+b+c+d+e) >= 3)
                            outfile<<a<<b<<c<<d<<e<<" 1 1"<<endl;
                        else
                            outfile<<a<<b<<c<<d<<e<<" 0 1"<<endl;
    return;
}
int main()
{
    function1();
    return 0;
}
