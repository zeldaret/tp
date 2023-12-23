#ifndef MSL_COMMON_SRC_ANSI_FP_H
#define MSL_COMMON_SRC_ANSI_FP_H

#include "MSL_C/MSL_Common/Src/float.h"

#define SIGDIGLEN 36

typedef struct decimal {
	char sign;
	char unk1;
	short exp;
	struct {
		unsigned char length;
		unsigned char text[36];
		unsigned char unk41;
	} sig;
} decimal;

typedef struct decform {
	char style;
	char unk1;
	short digits;
} decform;

/* void __ull2dec(decimal*, u64);
void __timesdec(decimal*, const decimal*, const decimal*);
void __str2dec(decimal*, const char*, short);
void __two_exp(decimal*, s32);
BOOL __equals_dec(const decimal*, const decimal*);
BOOL __less_dec(const decimal*, const decimal*);
void __minus_dec(decimal*, const decimal*, const decimal*);
void __num2dec_internal(decimal*, f64);
void __num2dec(const decform*, f64, decimal*);
f64 __dec2num(const decimal*); */

#endif