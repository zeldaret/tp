#ifndef C_LIB_H_
#define C_LIB_H_

#include "SComponent/c_xyz.h"
#include "global.h"

void cLib_memCpy(void* dst, const void* src, unsigned long size);
void cLib_memSet(void* ptr, int value, unsigned long size);

float cLib_addCalc(float*, float, float, float, float);
void cLib_addCalc2(float*, float, float, float);
void cLib_addCalc0(float*, float, float);
float cLib_addCalcPos(cXyz*, const cXyz&, float, float, float);
float cLib_addCalcPosXZ(cXyz*, const cXyz&, float, float, float);
void cLib_addCalcPos2(cXyz*, const cXyz&, float, float);
void cLib_addCalcPosXZ2(cXyz*, const cXyz&, float, float);
short cLib_addCalcAngleS(short*, short, short, short, short);
void cLib_addCalcAngleS2(short*, short, short, short);

int cLib_chaseUC(unsigned char*, unsigned char, unsigned char);
int cLib_chaseS(short*, short, short);
int cLib_chaseF(float*, float, float);
int cLib_chasePos(cXyz*, const cXyz&, float);
int cLib_chasePosXZ(cXyz*, const cXyz&, float);
int cLib_chaseAngleS(short*, short, short);

short cLib_targetAngleY(const Vec*, const Vec*);
short cLib_targetAngleY(const Vec&, const Vec&);
short cLib_targetAngleX(const cXyz*, const cXyz*);

void cLib_offsetPos(cXyz*, const cXyz*, short, const cXyz*);
s32 cLib_distanceAngleS(s16 x, s16 y);

void MtxInit(void);
void MtxTrans(float, float, float, unsigned char);
void MtxScale(float, float, float, unsigned char);
void MtxPosition(cXyz*, cXyz*);
void MtxPush(void);
Mtx* MtxPull(void);

#endif