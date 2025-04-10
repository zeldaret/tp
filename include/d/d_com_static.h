#ifndef D_COM_D_COM_STATIC_H
#define D_COM_D_COM_STATIC_H

#include "d/actor/d_a_suspend.h"

u8 daNpcKakashi_getSwdTutorialStep();
void daNpcKakashi_setSwdTutorialStep(u8 iEvtNum);
bool daNpcKakashi_getSwdTutorialResult();
BOOL daNpcKakashi_chkSwdTutorialStage();
int daNpcKakashi_getSuccessCount();
void daNpcKakashi_clrSuccessCount();
int daNpcMsg_setEvtNum(u8 iEvtNum);

#endif /* D_COM_D_COM_STATIC_H */
