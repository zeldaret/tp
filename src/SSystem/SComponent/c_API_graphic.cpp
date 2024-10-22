/**
 * c_API_graphic.cpp
 *
 */

#include "SSystem/SComponent/c_API_graphic.h"
#include "SSystem/SComponent/c_API.h"

/* 802632C8-802632F8 0030+00 s=0 e=1 z=0  None .text      cAPIGph_Painter__Fv */
void cAPIGph_Painter() {
    g_cAPI_Interface.painterMtd();
}

/* 802632F8-80263328 0030+00 s=0 e=1 z=0  None .text      cAPIGph_BeforeOfDraw__Fv */
void cAPIGph_BeforeOfDraw() {
    g_cAPI_Interface.beforeOfDrawMtd();
}

/* 80263328-80263358 0030+00 s=0 e=1 z=0  None .text      cAPIGph_AfterOfDraw__Fv */
void cAPIGph_AfterOfDraw() {
    g_cAPI_Interface.afterOfDrawMtd();
}