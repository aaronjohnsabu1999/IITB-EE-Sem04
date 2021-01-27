#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <vector>
#include <cmath>

using namespace std;

void adder_generator(int a,int b)
{
    int c = a+b;
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
    cout<<"00 ";
    for(int l = 0; l<8; l++)
        cout<<output[7-l];
    cout<<" 11111111"<<endl;
    return;
}
void shift_left_generator(int a,int b){
    int c;
    if(b<=7)
        c = a<<b;
    else
        c = 0;
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
    cout<<"01 ";
    for(int l= 0; l<8; l++)
        cout<<output[7-l];
    cout<<" 11111111"<<endl;
    return;
}
void shift_right_generator(int a,int b){
    int c;
    if(b<=7)
        c = a>>b;
    else
        c = 0;
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
    cout<<"10 ";
    for(int l = 0; l<8; l++)
        cout<<output[7-l];
    cout<<" 11111111"<<endl;
    return;
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
int main()
{
    for(int x = 0; x<256; x++)
       for(int y =0; y<256; y++)
            adder_generator(x,y);
    for(int x = 0; x<256; x++)
        for(int y =0; y<256; y++)
            shift_left_generator(x,y);
    for(int x = 0; x<256; x++)
        for(int y = 0; y<256; y++)
            shift_right_generator(x,y);
    for(int x = 0; x<256; x++)
        for(int y =0; y<256; y++)
            multiplier_generator(x,y);
    return 0;
}
