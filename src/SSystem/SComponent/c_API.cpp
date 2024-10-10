/**
 * c_API.cpp
 *
 */

#include "SSystem/SComponent/c_API.h"

extern void mDoGph_BlankingON();
extern void mDoGph_BlankingOFF();
extern void mDoGph_BeforeOfDraw();
extern void mDoGph_AfterOfDraw();
extern void mDoGph_Painter();
extern void mDoGph_Create();

/* ############################################################################################## */
/* 803C3528-803C3540 0018+00 s=0 e=3 z=0  None .data      g_cAPI_Interface */
cAPI_Interface g_cAPI_Interface = {
    mDoGph_Create,  mDoGph_BeforeOfDraw, mDoGph_AfterOfDraw,
    mDoGph_Painter, mDoGph_BlankingON,   mDoGph_BlankingOFF,
};