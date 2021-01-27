import struct
output_file = open("TRACEFILE.txt", "w")

def bindigits(n, bits):
    s = bin(n & int("1"*bits, 2))[2:]
    return ("{0:0>%s}" % (bits)).format(s)

def xor(a, b):
    return (a and (not b)) or ((not a) and b)

def convert_to_float(a, exp_len = 3, mentisa_len = 4):
    sign = 1 if a[0] == '0' else -1
    expo = int(a[1:exp_len+1], 2) - (2**(exp_len-1) -1)

    mentisa = int('1'+a[exp_len + 1: exp_len + mentisa_len + 1],2)
    mentisa = float(mentisa) / 2**mentisa_len
    return sign * mentisa * (2**expo)

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]

def multiply_float8(a, b):
    zero, infi_p, infi_n, NaN = '0000000000000000', '0111110000000000', '1111110000000000', '0111110000000001'

    a_sign = int(a[0])
    a_expo = a[1:4]

    b_sign = int(b[0])
    b_expo = b[1:4]

    #for 0*infi
    if (b_expo == '111' and int(a[1:]) == 0) or (a_expo == '111' and int(b[1:]) == 0):
        return NaN

    #for NaN*a
    elif (b_expo == '111' and int(b[4:]) != 0) or (a_expo == '111' and int(a[4:]) != 0):
        return NaN


    #for 0*b or a*0 case
    elif (int(a[1:]) == 0 or int(b[1:]) == 0):
        return zero

    #for infi*b or a*infi
    elif (b_expo == '111' or a_expo == '111'):
        return infi_n if xor(a_sign, b_sign) else infi_p


    else:
        a_mentisa = '0b1' + a[4:]
        b_mentisa = '0b1' + b[4:]

        c_mentisa = bindigits(int(a_mentisa,2) * int(b_mentisa, 2), 10)
        # print a_mentisa, b_mentisa, c_mentisa
        if (c_mentisa[0] == '1'):
            z_mentisa = c_mentisa[1:] + '0'
            carry = 1
        else:
            z_mentisa = c_mentisa[2:] + '00'
            carry = 0

        # print z_mentisa
        z_expo = bindigits(int(a_expo, 2) + int(b_expo, 2) + carry + 9, 6)
        # print z_expo
        # if z_expo[0] == '1':
        #     if z_expo[1] == '0':
        #         # overflow
        #         return infi_n if xor(a_sign, b_sign) else infi_p
        #     else:
        #         return zero
        # else:
        z_expo = z_expo[1:]
        z_sign = xor(a_sign, b_sign)

        return str(int(z_sign)) + z_expo + z_mentisa

if __name__ == '__main__':
    for i in range(256):
        for j in range(256):
            a, b = bindigits(i, 8), bindigits(j, 8)
            out_string = a + b + ' '

            out_string += multiply_float8(a, b)

            out_string += ' 1111111111111111\n'
            output_file.write(out_string)
    # print multiply_float8("00000001", "00100000")
