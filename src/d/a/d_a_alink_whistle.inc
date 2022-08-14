/* 8011174C-80111770 10C08C 0024+00 1/1 0/0 0/0 .text daAlink_searchWhistle__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchWhistle(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchWhistle__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 80111770-80111784 10C0B0 0014+00 1/1 0/0 0/0 .text daAlink_searchHawk__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchHawk(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchHawk__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8045069C-804506A4 -00001 0008+00 1/1 0/0 0/0 .sdata           grassWhistleArcName$33096 */
SECTION_SDATA static void* grassWhistleArcName[2] = {
    (void*)(((char*)&d_a_d_a_alink__stringBase0) + 0xAD),
    (void*)(((char*)&d_a_d_a_alink__stringBase0) + 0xB4),
};

/* 80111784-8011181C 10C0C4 0098+00 1/1 0/0 0/0 .text            setGrassWhistleModel__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGrassWhistleModel(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setGrassWhistleModel__9daAlink_cFi.s"
}
#pragma pop

/* 8011181C-80111894 10C15C 0078+00 1/1 0/0 0/0 .text            setHorseWhistleModel__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHorseWhistleModel() {
    nofralloc
#include "asm/d/a/d_a_alink/setHorseWhistleModel__9daAlink_cFv.s"
}
#pragma pop

/* 80111894-801119D8 10C1D4 0144+00 2/2 0/0 0/0 .text procGrassWhistleGetInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGrassWhistleGetInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrassWhistleGetInit__9daAlink_cFv.s"
}
#pragma pop

/* 801119D8-80111A9C 10C318 00C4+00 1/0 0/0 0/0 .text            procGrassWhistleGet__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGrassWhistleGet() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrassWhistleGet__9daAlink_cFv.s"
}
#pragma pop

/* 80111A9C-80111CA4 10C3DC 0208+00 2/2 0/0 0/0 .text
 * procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGrassWhistleWaitInit(int param_0, int param_1, int param_2, s16 param_3,
                                             cXyz* param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz.s"
}
#pragma pop

/* 80111CA4-80111FF0 10C5E4 034C+00 1/0 0/0 0/0 .text            procGrassWhistleWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGrassWhistleWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrassWhistleWait__9daAlink_cFv.s"
}
#pragma pop

/* 80111FF0-801120C8 10C930 00D8+00 2/2 0/0 0/0 .text procCoHorseCallWaitInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoHorseCallWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoHorseCallWaitInit__9daAlink_cFi.s"
}
#pragma pop

/* 801120C8-801121B4 10CA08 00EC+00 1/0 0/0 0/0 .text            procCoHorseCallWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoHorseCallWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoHorseCallWait__9daAlink_cFv.s"
}
#pragma pop

/* 801121B4-80112220 10CAF4 006C+00 1/0 0/0 0/0 .text            procHawkCatchInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procHawkCatchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHawkCatchInit__9daAlink_cFv.s"
}
#pragma pop

/* 80112220-80112278 10CB60 0058+00 1/0 0/0 0/0 .text            procHawkCatch__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procHawkCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procHawkCatch__9daAlink_cFv.s"
}
#pragma pop

/* 80112278-80112304 10CBB8 008C+00 2/2 0/0 0/0 .text            procHawkSubjectInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procHawkSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHawkSubjectInit__9daAlink_cFv.s"
}
#pragma pop

/* 80112304-8011243C 10CC44 0138+00 1/0 0/0 0/0 .text            procHawkSubject__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procHawkSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procHawkSubject__9daAlink_cFv.s"
}
#pragma pop