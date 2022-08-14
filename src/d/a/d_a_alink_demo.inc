/* 80115C20-80115C50 110560 0030+00 72/72 0/0 0/0 .text            checkEventRun__9daAlink_cCFv */
BOOL daAlink_c::checkEventRun() const {
    return i_dComIfGp_event_runCheck() || checkPlayerDemoMode();
}

/* 80115C50-80115D08 110590 00B8+00 2/2 0/0 0/0 .text            createNpcTks__9daAlink_cFP4cXyziUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::createNpcTks(cXyz* param_0, int param_1, u32 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/createNpcTks__9daAlink_cFP4cXyziUl.s"
}
#pragma pop

/* 80115D08-80115EC0 110648 01B8+00 1/0 0/0 0/0 .text            checkSetNpcTks__9daAlink_cFP4cXyzii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkSetNpcTks(cXyz* param_0, int param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSetNpcTks__9daAlink_cFP4cXyzii.s"
}
#pragma pop

/* 80115EC0-80116E60 110800 0FA0+00 1/1 0/0 0/0 .text            checkDemoAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkDemoAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkDemoAction__9daAlink_cFv.s"
}
#pragma pop

/* 80116E60-80116E9C 1117A0 003C+00 4/4 0/0 0/0 .text            checkDemoMoveMode__9daAlink_cCFUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkDemoMoveMode(u32 param_0) const {
    nofralloc
#include "asm/d/a/d_a_alink/checkDemoMoveMode__9daAlink_cCFUl.s"
}
#pragma pop

/* 80116E9C-80117064 1117DC 01C8+00 1/1 0/0 0/0 .text setDemoMoveData__9daAlink_cFPUlPC4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoMoveData(u32* param_0, cXyz const* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoMoveData__9daAlink_cFPUlPC4cXyz.s"
}
#pragma pop

/* 80117064-801171F4 1119A4 0190+00 1/1 0/0 0/0 .text setNoDrawSwordShield__9daAlink_cFiUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setNoDrawSwordShield(int param_0, u16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setNoDrawSwordShield__9daAlink_cFiUs.s"
}
#pragma pop

/* 801171F4-80117B90 111B34 099C+00 1/1 0/0 0/0 .text            setDemoData__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoData() {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoData__9daAlink_cFv.s"
}
#pragma pop

/* 80117B90-80117C34 1124D0 00A4+00 1/1 0/0 0/0 .text            resetDemoBck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::resetDemoBck() {
    nofralloc
#include "asm/d/a/d_a_alink/resetDemoBck__9daAlink_cFv.s"
}
#pragma pop

/* 80117C34-80117C90 112574 005C+00 3/3 0/0 0/0 .text            endHighModel__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::endHighModel() {
    nofralloc
#include "asm/d/a/d_a_alink/endHighModel__9daAlink_cFv.s"
}
#pragma pop

/* 80117C90-80117CF8 1125D0 0068+00 21/21 0/0 0/0 .text            resetSpecialEvent__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::resetSpecialEvent() {
    nofralloc
#include "asm/d/a/d_a_alink/resetSpecialEvent__9daAlink_cFv.s"
}
#pragma pop

/* 80117CF8-801180EC 112638 03F4+00 4/4 0/0 0/0 .text            endDemoMode__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::endDemoMode() {
    nofralloc
#include "asm/d/a/d_a_alink/endDemoMode__9daAlink_cFv.s"
}
#pragma pop

/* 801180EC-80118170 112A2C 0084+00 2/2 0/0 0/0 .text            getDemoLookActor__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getDemoLookActor() {
    nofralloc
#include "asm/d/a/d_a_alink/getDemoLookActor__9daAlink_cFv.s"
}
#pragma pop

/* 80118170-801181A0 112AB0 0030+00 4/4 0/0 0/0 .text            checkFlyAtnWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkFlyAtnWait() {
    nofralloc
#include "asm/d/a/d_a_alink/checkFlyAtnWait__9daAlink_cFv.s"
}
#pragma pop

/* 801181A0-801182D4 112AE0 0134+00 2/2 0/0 0/0 .text            setGetItemFace__9daAlink_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGetItemFace(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setGetItemFace__9daAlink_cFUs.s"
}
#pragma pop

/* 801182D4-80118308 112C14 0034+00 2/2 0/0 0/0 .text checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkGrabTalkActor(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80118308-8011856C 112C48 0264+00 2/2 0/0 0/0 .text            setTalkStartBack__9daAlink_cFP4cXyz
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setTalkStartBack(cXyz* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setTalkStartBack__9daAlink_cFP4cXyz.s"
}
#pragma pop

/* 8011856C-80118654 112EAC 00E8+00 4/4 0/0 0/0 .text setShapeAngleToTalkActor__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setShapeAngleToTalkActor() {
    nofralloc
#include "asm/d/a/d_a_alink/setShapeAngleToTalkActor__9daAlink_cFv.s"
}
#pragma pop

/* 80118654-801186D4 112F94 0080+00 2/2 0/0 0/0 .text            setTalkAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setTalkAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setTalkAnime__9daAlink_cFv.s"
}
#pragma pop

/* 801186D4-80118778 113014 00A4+00 2/2 0/0 0/0 .text            setTradeItemAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setTradeItemAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setTradeItemAnime__9daAlink_cFv.s"
}
#pragma pop

/* 80118778-801187B4 1130B8 003C+00 3/3 0/0 0/0 .text            setTradeItemOutHand__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setTradeItemOutHand() {
    nofralloc
#include "asm/d/a/d_a_alink/setTradeItemOutHand__9daAlink_cFv.s"
}
#pragma pop

/* 801187B4-80118840 1130F4 008C+00 5/5 0/0 0/0 .text            checkEndMessage__9daAlink_cFUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkEndMessage(u32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkEndMessage__9daAlink_cFUl.s"
}
#pragma pop

/* 80118840-801188B0 113180 0070+00 1/1 0/0 0/0 .text setDemoRightHandIndex__9daAlink_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoRightHandIndex(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoRightHandIndex__9daAlink_cFUs.s"
}
#pragma pop

/* 801188B0-8011894C 1131F0 009C+00 1/1 0/0 0/0 .text            setDemoLeftHandIndex__9daAlink_cFUs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoLeftHandIndex(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoLeftHandIndex__9daAlink_cFUs.s"
}
#pragma pop

/* 8011894C-801189F8 11328C 00AC+00 1/1 0/0 0/0 .text            setDemoRide__9daAlink_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoRide(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoRide__9daAlink_cFUs.s"
}
#pragma pop

/* 801189F8-80118AD0 113338 00D8+00 1/1 0/0 0/0 .text
 * setDemoBodyBck__9daAlink_cFP13dDemo_actor_cUs                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoBodyBck(dDemo_actor_c* param_0, u16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoBodyBck__9daAlink_cFP13dDemo_actor_cUs.s"
}
#pragma pop

/* 80118AD0-80118B34 113410 0064+00 1/1 0/0 0/0 .text            checkFinalBattle__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkFinalBattle() {
    nofralloc
#include "asm/d/a/d_a_alink/checkFinalBattle__9daAlink_cFv.s"
}
#pragma pop

/* 80118B34-80118BF4 113474 00C0+00 3/3 0/0 0/0 .text            checkRestartDead__9daAlink_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkRestartDead(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/checkRestartDead__9daAlink_cFii.s"
}
#pragma pop

/* 80118BF4-80118C98 113534 00A4+00 2/2 0/0 0/0 .text            setDeadRideSyncPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDeadRideSyncPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setDeadRideSyncPos__9daAlink_cFv.s"
}
#pragma pop

/* 80118C98-80118D7C 1135D8 00E4+00 5/5 0/0 0/0 .text            checkDeadHP__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkDeadHP() {
    nofralloc
#include "asm/d/a/d_a_alink/checkDeadHP__9daAlink_cFv.s"
}
#pragma pop

/* 80118D7C-80118FF8 1136BC 027C+00 3/3 0/0 0/0 .text            checkDeadAction__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkDeadAction(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkDeadAction__9daAlink_cFi.s"
}
#pragma pop

/* 80118FF8-801190A4 113938 00AC+00 1/1 0/0 0/0 .text
 * setHighModelBck__9daAlink_cFP13mDoExt_bckAnmUs               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHighModelBck(mDoExt_bckAnm* param_0, u16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setHighModelBck__9daAlink_cFP13mDoExt_bckAnmUs.s"
}
#pragma pop

/* 801190A4-80119134 1139E4 0090+00 1/1 0/0 0/0 .text            setHighModelFaceBtk__9daAlink_cFUs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHighModelFaceBtk(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setHighModelFaceBtk__9daAlink_cFUs.s"
}
#pragma pop

/* 80119134-801191C4 113A74 0090+00 1/1 0/0 0/0 .text
 * setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs       */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoBrk(J3DAnmTevRegKey** param_0, J3DModel* param_1, u16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs.s"
}
#pragma pop

/* 801191C4-80119464 113B04 02A0+00 1/1 0/0 0/0 .text
 * setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setStickAnmData(J3DAnmBase* param_0, int param_1, int param_2, u16 param_3,
                                    int param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi.s"
}
#pragma pop

/* ############################################################################################## */
/* 804256B8-804256CC 0523D8 0014+00 1/1 0/0 0/0 .bss             dummy$36763 */
static u8 dummy[20];

/* 80119464-801195C0 113DA4 015C+00 1/1 0/0 0/0 .text
 * daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi      */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_c_getDemoIDData(dDemo_actor_c* param_0, int* param_1, int* param_2,
                                        int* param_3, u16* param_4, int* param_5, int* param_6) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi.s"
}
#pragma pop

/* 801195C0-801195F8 113F00 0038+00 7/0 0/0 0/0 .text            procDemoCommon__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDemoCommon() {
    nofralloc
#include "asm/d/a/d_a_alink/procDemoCommon__9daAlink_cFv.s"
}
#pragma pop

/* 801195F8-801196D8 113F38 00E0+00 1/1 0/0 0/0 .text            procCoToolDemoInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoToolDemoInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoToolDemoInit__9daAlink_cFv.s"
}
#pragma pop

/* 801196D8-80119D98 114018 06C0+00 1/0 0/0 0/0 .text            procCoToolDemo__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoToolDemo() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoToolDemo__9daAlink_cFv.s"
}
#pragma pop

/* 80119D98-80119F64 1146D8 01CC+00 1/1 0/0 0/0 .text            procCoTalkInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoTalkInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTalkInit__9daAlink_cFv.s"
}
#pragma pop

/* 80119F64-8011A214 1148A4 02B0+00 1/0 0/0 0/0 .text            procCoTalk__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoTalk() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTalk__9daAlink_cFv.s"
}
#pragma pop

/* 8011A214-8011A42C 114B54 0218+00 1/0 0/0 0/0 .text procCoOpenTreasureInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoOpenTreasureInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoOpenTreasureInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011A42C-8011A4C0 114D6C 0094+00 1/0 0/0 0/0 .text            procCoOpenTreasure__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoOpenTreasure() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoOpenTreasure__9daAlink_cFv.s"
}
#pragma pop

/* 8011A4C0-8011A5CC 114E00 010C+00 1/0 0/0 0/0 .text            procCoUnequipInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoUnequipInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoUnequipInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011A5CC-8011A688 114F0C 00BC+00 1/0 0/0 0/0 .text            procCoUnequip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoUnequip() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoUnequip__9daAlink_cFv.s"
}
#pragma pop

/* 8011A688-8011A6FC 114FC8 0074+00 4/4 0/0 0/0 .text            setGetSubBgm__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGetSubBgm(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setGetSubBgm__9daAlink_cFi.s"
}
#pragma pop

/* 8011A6FC-8011A798 11503C 009C+00 1/0 0/0 0/0 .text checkTreasureRupeeReturn__9daAlink_cCFi */
// register issues. probably wrong order of operations
#ifdef NONMATCHING
bool daAlink_c::checkTreasureRupeeReturn(int i_itemNo) const {
    int itemNo = i_itemNo;
    if (itemNo == LINKS_SAVINGS) {
        itemNo = PURPLE_RUPEE;
    }

    if (itemNo - 4 < 0 || itemNo - 4 >= 4) {
        return false;
    }

    u16 curRupees = i_dComIfGs_getRupee();
    int tmp = itemNo - 4;
    return dComIfGs_getRupeeMax() > (u16)rupeeCount[tmp] + curRupees;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkTreasureRupeeReturn(int param_0) const {
    nofralloc
#include "asm/d/a/d_a_alink/checkTreasureRupeeReturn__9daAlink_cCFi.s"
}
#pragma pop
#endif

/* 8011A798-8011AC28 1150D8 0490+00 2/1 0/0 0/0 .text            procCoGetItemInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoGetItemInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGetItemInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011AC28-8011B3F0 115568 07C8+00 1/0 0/0 0/0 .text            procCoGetItem__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoGetItem() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGetItem__9daAlink_cFv.s"
}
#pragma pop

/* 8011B3F0-8011B46C 115D30 007C+00 1/0 0/0 0/0 .text            procCoTurnBackInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoTurnBackInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTurnBackInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011B46C-8011B57C 115DAC 0110+00 1/0 0/0 0/0 .text            procCoTurnBack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoTurnBack() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTurnBack__9daAlink_cFv.s"
}
#pragma pop

/* 8011B57C-8011B71C 115EBC 01A0+00 1/0 0/0 0/0 .text            procDoorOpenInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDoorOpenInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procDoorOpenInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011B71C-8011B914 11605C 01F8+00 1/0 0/0 0/0 .text            procDoorOpen__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDoorOpen() {
    nofralloc
#include "asm/d/a/d_a_alink/procDoorOpen__9daAlink_cFv.s"
}
#pragma pop

/* 8011B914-8011BA20 116254 010C+00 1/1 0/0 0/0 .text            procCoLookWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoLookWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLookWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011BA20-8011BABC 116360 009C+00 1/0 0/0 0/0 .text            procCoLookWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoLookWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLookWait__9daAlink_cFv.s"
}
#pragma pop

/* 8011BABC-8011BB40 1163FC 0084+00 1/0 0/0 0/0 .text procCoDemoPushPullWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoDemoPushPullWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoDemoPushPullWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011BB40-8011BC14 116480 00D4+00 1/0 0/0 0/0 .text procCoDemoPushMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoDemoPushMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoDemoPushMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011BC14-8011BC74 116554 0060+00 2/2 0/0 0/0 .text            setMonkeyMoveAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setMonkeyMoveAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setMonkeyMoveAnime__9daAlink_cFv.s"
}
#pragma pop

/* 8011BC74-8011BD18 1165B4 00A4+00 1/0 0/0 0/0 .text            procMonkeyMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procMonkeyMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procMonkeyMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011BD18-8011BD6C 116658 0054+00 1/0 0/0 0/0 .text            procMonkeyMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procMonkeyMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procMonkeyMove__9daAlink_cFv.s"
}
#pragma pop

/* 8011BD6C-8011BDF0 1166AC 0084+00 1/0 0/0 0/0 .text procDemoBoomerangCatchInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDemoBoomerangCatchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procDemoBoomerangCatchInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011BDF0-8011BE54 116730 0064+00 1/0 0/0 0/0 .text procDemoBoomerangCatch__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDemoBoomerangCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procDemoBoomerangCatch__9daAlink_cFv.s"
}
#pragma pop

/* 8011BE54-8011C1B4 116794 0360+00 2/2 0/0 0/0 .text            procCoDeadInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoDeadInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoDeadInit__9daAlink_cFi.s"
}
#pragma pop

/* 8011C1B4-8011C62C 116AF4 0478+00 1/0 0/0 0/0 .text            procCoDead__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoDead() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoDead__9daAlink_cFv.s"
}
#pragma pop

/* 8011C62C-8011C760 116F6C 0134+00 1/0 0/0 0/0 .text            procCoLookAroundInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoLookAroundInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLookAroundInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011C760-8011C81C 1170A0 00BC+00 1/0 0/0 0/0 .text            procCoLookAround__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoLookAround() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLookAround__9daAlink_cFv.s"
}
#pragma pop

/* 8011C81C-8011C890 11715C 0074+00 1/0 0/0 0/0 .text            procBossAtnWaitInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBossAtnWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBossAtnWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011C890-8011C904 1171D0 0074+00 1/0 0/0 0/0 .text            procCoQuakeWaitInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoQuakeWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoQuakeWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011C904-8011C9D0 117244 00CC+00 1/0 0/0 0/0 .text            procCoCaughtInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoCaughtInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoCaughtInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011C9D0-8011CA4C 117310 007C+00 1/0 0/0 0/0 .text            procLookUpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLookUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLookUpInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011CA4C-8011CA98 11738C 004C+00 1/0 0/0 0/0 .text            procLookUp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLookUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procLookUp__9daAlink_cFv.s"
}
#pragma pop

/* 8011CA98-8011CB20 1173D8 0088+00 1/0 0/0 0/0 .text procLookUpToGetItemInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLookUpToGetItemInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLookUpToGetItemInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011CB20-8011CBD4 117460 00B4+00 1/0 0/0 0/0 .text            procLookUpToGetItem__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLookUpToGetItem() {
    nofralloc
#include "asm/d/a/d_a_alink/procLookUpToGetItem__9daAlink_cFv.s"
}
#pragma pop

/* 8011CBD4-8011CCA8 117514 00D4+00 1/0 0/0 0/0 .text            procHandPatInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procHandPatInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHandPatInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011CCA8-8011CDE0 1175E8 0138+00 1/0 0/0 0/0 .text            procHandPat__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procHandPat() {
    nofralloc
#include "asm/d/a/d_a_alink/procHandPat__9daAlink_cFv.s"
}
#pragma pop

/* 8011CDE0-8011CF60 117720 0180+00 1/0 0/0 0/0 .text            procCoFogDeadInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoFogDeadInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoFogDeadInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011CF60-8011D0A0 1178A0 0140+00 1/0 0/0 0/0 .text            procCoFogDead__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoFogDead() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoFogDead__9daAlink_cFv.s"
}
#pragma pop

/* 8011D0A0-8011D110 1179E0 0070+00 1/0 0/0 0/0 .text            procWolfSmellWaitInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSmellWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSmellWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D110-8011D1F4 117A50 00E4+00 1/0 0/0 0/0 .text            procCoNodInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoNodInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoNodInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D1F4-8011D268 117B34 0074+00 1/0 0/0 0/0 .text            procCoNod__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoNod() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoNod__9daAlink_cFv.s"
}
#pragma pop

/* 8011D268-8011D304 117BA8 009C+00 1/0 0/0 0/0 .text            procCoEyeAwayInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoEyeAwayInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoEyeAwayInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D304-8011D3CC 117C44 00C8+00 1/0 0/0 0/0 .text            procCoGlareInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoGlareInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGlareInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D3CC-8011D474 117D0C 00A8+00 1/0 0/0 0/0 .text            procCoGlare__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoGlare() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGlare__9daAlink_cFv.s"
}
#pragma pop

/* 8011D474-8011D4D4 117DB4 0060+00 1/0 0/0 0/0 .text            procGoatStopReadyInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGoatStopReadyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGoatStopReadyInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D4D4-8011D544 117E14 0070+00 1/0 0/0 0/0 .text            procGoatStopReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGoatStopReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procGoatStopReady__9daAlink_cFv.s"
}
#pragma pop

/* 8011D544-8011D64C 117E84 0108+00 2/1 0/0 0/0 .text            procCoGetReadySitInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoGetReadySitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGetReadySitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D64C-8011D6D0 117F8C 0084+00 1/0 0/0 0/0 .text            procCoGetReadySit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoGetReadySit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGetReadySit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D6D0-8011D7D4 118010 0104+00 1/0 0/0 0/0 .text            procCoTwGateInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoTwGateInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTwGateInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D7D4-8011D82C 118114 0058+00 1/0 0/0 0/0 .text            procCoTwGate__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoTwGate() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTwGate__9daAlink_cFv.s"
}
#pragma pop

/* 8011D82C-8011D8F8 11816C 00CC+00 1/0 0/0 0/0 .text procWolfSnowEscapeInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSnowEscapeInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSnowEscapeInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D8F8-8011DB04 118238 020C+00 1/0 0/0 0/0 .text            procWolfSnowEscape__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWolfSnowEscape() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSnowEscape__9daAlink_cFv.s"
}
#pragma pop

/* 8011DB04-8011DB9C 118444 0098+00 1/0 0/0 0/0 .text            procZoraMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procZoraMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procZoraMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011DB9C-8011DDD4 1184DC 0238+00 1/0 0/0 0/0 .text            procZoraMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procZoraMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procZoraMove__9daAlink_cFv.s"
}
#pragma pop

/* 8011DDD4-8011DED8 118714 0104+00 1/0 0/0 0/0 .text procLookAroundTurnInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLookAroundTurnInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLookAroundTurnInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011DED8-8011DF68 118818 0090+00 1/0 0/0 0/0 .text            procLookAroundTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLookAroundTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procLookAroundTurn__9daAlink_cFv.s"
}
#pragma pop

/* 8011DF68-8011E060 1188A8 00F8+00 1/0 0/0 0/0 .text            procTradeItemOutInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procTradeItemOutInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procTradeItemOutInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011E060-8011E3D8 1189A0 0378+00 1/0 0/0 0/0 .text            procTradeItemOut__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procTradeItemOut() {
    nofralloc
#include "asm/d/a/d_a_alink/procTradeItemOut__9daAlink_cFv.s"
}
#pragma pop

/* 8011E3D8-8011E448 118D18 0070+00 2/2 0/0 0/0 .text            checkLetterItem__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkLetterItem(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkLetterItem__9daAlink_cFi.s"
}
#pragma pop

/* 8011E448-8011E57C 118D88 0134+00 1/1 0/0 0/0 .text            procNotUseItemInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procNotUseItemInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procNotUseItemInit__9daAlink_cFi.s"
}
#pragma pop

/* 8011E57C-8011E6E0 118EBC 0164+00 1/0 0/0 0/0 .text            procNotUseItem__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procNotUseItem() {
    nofralloc
#include "asm/d/a/d_a_alink/procNotUseItem__9daAlink_cFv.s"
}
#pragma pop

/* 8011E6E0-8011E748 119020 0068+00 1/0 0/0 0/0 .text            procSwordReadyInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSwordReadyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordReadyInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011E748-8011E83C 119088 00F4+00 1/0 0/0 0/0 .text            procSwordReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSwordReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordReady__9daAlink_cFv.s"
}
#pragma pop

/* 8011E83C-8011E8E0 11917C 00A4+00 2/2 0/0 0/0 .text            setSwordPushAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwordPushAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setSwordPushAnime__9daAlink_cFv.s"
}
#pragma pop

/* 8011E8E0-8011E960 119220 0080+00 1/0 0/0 0/0 .text            procSwordPushInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSwordPushInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordPushInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011E960-8011E9F8 1192A0 0098+00 1/0 0/0 0/0 .text            procSwordPush__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSwordPush() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordPush__9daAlink_cFv.s"
}
#pragma pop

/* 8011E9F8-8011EA78 119338 0080+00 1/0 0/0 0/0 .text            procGanonFinishInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGanonFinishInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGanonFinishInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011EA78-8011EAE8 1193B8 0070+00 1/0 0/0 0/0 .text            procGanonFinish__9daAlink_cFv */
bool daAlink_c::procGanonFinish() {
    i_onEndResetFlg1(GANON_FINISH);
    mCurrent.mPosition = field_0x37c8;
    if (mFrameCtrl1[0].checkAnmEnd()) {
        setSingleAnimeBaseMorf(ANM_GANON_FINISH, lit_6041);
    }
    return true;
}

/* 8011EAE8-8011EB8C 119428 00A4+00 1/0 0/0 0/0 .text            procCutFastReadyInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFastReadyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFastReadyInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011EB8C-8011EBDC 1194CC 0050+00 1/0 0/0 0/0 .text            procCutFastReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFastReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFastReady__9daAlink_cFv.s"
}
#pragma pop

/* 8011EBDC-8011EC60 11951C 0084+00 1/0 0/0 0/0 .text procMasterSwordStickInit__9daAlink_cFv */
int daAlink_c::procMasterSwordStickInit() {
    if (!commonProcInitNotSameProc(PROC_MASTER_SWORD_STICK)) {
        return 0;
    }

    setSingleAnimeBase(ANM_MASTER_SWORD_STICK_INIT);
    voiceStart(Z2SE_AL_V_MSTR_SW_STICK);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mCurrent.mAngle.y = mCollisionRot.y;
    mCommonCounter = 0;

    return 1;
}

/* 8011EC60-8011ED18 1195A0 00B8+00 1/0 0/0 0/0 .text            procMasterSwordStick__9daAlink_cFv
 */
int daAlink_c::procMasterSwordStick() {
    daPy_frameCtrl_c* fCtrl = &mFrameCtrl1[0];

    if (mCommonCounter != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (fCtrl->checkAnmEnd()) {
        mCommonCounter = 1;
        setSingleAnimeBaseMorf(ANM_MASTER_SWORD_STICK, lit_6041);
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (fCtrl->getFrame() >= lit_14621) {
        field_0x2f93 = 5;
    }

    return 1;
}

/* 8011ED18-8011ED8C 119658 0074+00 1/0 0/0 0/0 .text procMasterSwordPullInit__9daAlink_cFv */
int daAlink_c::procMasterSwordPullInit() {
    if (!commonProcInitNotSameProc(PROC_MASTER_SWORD_PULL)) {
        return 0;
    }

    setSingleAnimeBase(ANM_MASTER_SWORD_PULL_INIT);
    voiceStart(Z2SE_AL_V_MSTR_SW_PULLOUT);
    field_0x3010 = 0;

    return 1;
}

/* 8011ED8C-8011EE40 1196CC 00B4+00 1/0 0/0 0/0 .text            procMasterSwordPull__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procMasterSwordPull() {
    nofralloc
#include "asm/d/a/d_a_alink/procMasterSwordPull__9daAlink_cFv.s"
}
#pragma pop

/* 8011EE40-8011EE94 119780 0054+00 5/5 0/0 0/0 .text            checkLv7DungeonShop__9daAlink_cFv
 */
BOOL daAlink_c::checkLv7DungeonShop() {
    return checkStageName("D_MN07") && dComIfGp_roomControl_getStayNo() == 16;
}

/* 8011EE94-8011EFB8 1197D4 0124+00 1/1 0/0 0/0 .text procDungeonWarpReadyInit__9daAlink_cFv */
int daAlink_c::procDungeonWarpReadyInit() {
    if (!dComIfGp_event_compulsory(this, NULL, -1)) {
        return 0;
    }

    u32 id;
    if (checkItemSetButton(DUNGEON_EXIT) != 2) {
        id = fopAcM_create(PROC_OBJ_TKS, 0, &mCurrent.mPosition, fopAcM_GetRoomNo(this), &mCollisionRot, NULL, -1);
    } else {
        id = fopAcM_create(PROC_NPC_TKC, 2, &mCurrent.mPosition, fopAcM_GetRoomNo(this), &mCollisionRot, NULL, -1);
    }

    if (id == -1) {
        return 0;
    }

    mDemo.i_setSpecialDemoType();
    commonProcInit(PROC_DUNGEON_WARP_READY);
    setSingleAnimeBase(ANM_DUNGEON_WARP_READY_INIT);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mCurrent.mAngle.y = mCollisionRot.y;
    field_0x32cc = id;
    mCommonCounter = 0;
    keepItemData();

    return 1;
}

/* 8011EFB8-8011F084 1198F8 00CC+00 1/0 0/0 0/0 .text            procDungeonWarpReady__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDungeonWarpReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarpReady__9daAlink_cFv.s"
}
#pragma pop

/* 8011F084-8011F0F4 1199C4 0070+00 1/0 0/0 0/0 .text            procDungeonWarpInit__9daAlink_cFv
 */
#ifdef NONMATCHING
bool daAlink_c::procDungeonWarpInit() {
    if (!commonProcInitNotSameProc(DUNEGON_WARP_START) {
        mCommonCounter = 0;
        field_0x3012 = 0;
        setSpecialGravity(0.0f, mMaxFallSpeed, 0);
        field_0x300e = 0;
        field_0x3010 = 0;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDungeonWarpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarpInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8011F0F4-8011F360 119A34 026C+00 1/0 0/0 0/0 .text            procDungeonWarp__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procDungeonWarp() {
    mCommonCounter += 0x200;

    if (mCommonCounter > 0x4000) {
        mCommonCounter = 0x4000;
    } else {
        mCurrent.mPosition.y += 1.0f;
    }

    f32 sin = cM_ssin(mCommonCounter);
    mCollisionRot.y += (s16)(14336.0f * sin);
    field_0x300e = 8.0f * sin + 24.0f * (1.0f - mScale.x);

    if (field_0x3012 != 0) {
        return 1;
    } else {
        if (mCommonCounter == 0x4000) {
            if (field_0x3010 == 0) {
                dComIfGp_particle_set(0xA61, &mCurrent.mPosition, &mTevStr, NULL, NULL);
                field_0x3010 = 1;
            }

            cLib_addCalc(&mScale.x, 0.0f, 0.5f, 0.4f, 0.005f);
            cLib_addCalc(&mScale.y, 2.5f, 0.5f, 0.5f, 0.1f);

            if (mScale.x < 0.01f) {
                i_onNoResetFlg0(FLG0_UNK_8000000);
                if (checkItemGet(DUNGEON_EXIT, 1)) {
                    int escape = dStage_stagInfo_GetEscapeWarp(i_dComIfGp_getStage()->getStagInfo());
                    dStage_changeScene(escape, 0.0f, 12, -1, mCollisionRot.y, -1);
                    dMeter2Info_warpOutProc();
                } else {
                    dungeonReturnWarp();
                    dMeter2Info_warpInProc();
                }

                field_0x3012 = 1;
            }
            mCurrent.mPosition.y += 5.0f;
            field_0x2b98 = (1.0f - mScale.y) * 100.0f;
        } else if (mCommonCounter >= 0x2000) {
            cLib_chaseF(&mScale.x, 0.8f, 0.01f);
        }

        mScale.z = mScale.x;
        field_0x0650->setBaseScale(mScale);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDungeonWarp() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarp__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8011F360-8011F460 119CA0 0100+00 2/1 0/0 0/0 .text procDungeonWarpSceneStartInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDungeonWarpSceneStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarpSceneStartInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011F460-8011F5D4 119DA0 0174+00 1/0 0/0 0/0 .text procDungeonWarpSceneStart__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDungeonWarpSceneStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarpSceneStart__9daAlink_cFv.s"
}
#pragma pop

/* 8011F5D4-8011F658 119F14 0084+00 2/2 0/0 0/0 .text daAlink_searchPortal__FP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void* daAlink_searchPortal(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchPortal__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 8011F658-8011F7D8 119F98 0180+00 1/1 0/0 0/0 .text            checkAcceptWarp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkAcceptWarp() {
    nofralloc
#include "asm/d/a/d_a_alink/checkAcceptWarp__9daAlink_cFv.s"
}
#pragma pop

/* 8011F7D8-8011F8B8 11A118 00E0+00 2/2 0/0 0/0 .text            dungeonReturnWarp__9daAlink_cFv */
void daAlink_c::dungeonReturnWarp() {
    cXyz pos = dComIfGs_getWarpPlayerPos();
    s16 angle = dComIfGs_getWarpPlayerAngleY();
    s8 room = dComIfGs_getWarpRoomNo();
    char name[8];
    strcpy(name, dComIfGs_getWarpStageName());

    dComIfGs_setRestartRoom(pos, angle, room);
    dComIfGp_setNextStage(name, -1, dComIfGs_getRestartRoomNo(), -1, FLOAT_LABEL(lit_6108), 12, 0,
                          0, 0, 1, 0);
    u32 data = setParamData(dComIfGs_getRestartRoomNo(), 0, 0xCA, 0);
    dComIfGs_setRestartRoomParam(data);
}

/* 8011F8B8-8011F9EC 11A1F8 0134+00 1/0 0/0 0/0 .text            skipPortalObjWarp__9daAlink_cFv */
void daAlink_c::skipPortalObjWarp() {
    if (mProcID == PROC_WARP && field_0x300e <= 0) {
        return;
    }

    if (i_checkNoResetFlg3(FLG3_UNK_2000000) &&
        (dComIfGp_TargetWarpPt_get() == 9 && dComIfGp_TransportWarp_check())) {
        dStage_changeScene(2, FLOAT_LABEL(lit_6108), 0, fopAcM_GetRoomNo(this), mCollisionRot.y,
                           -1);
    } else {
        u32 data = setParamData(dMeter2Info_getWarpRoomNo(), 0, 0xCA, 0);
        dComIfGs_setTurnRestart(dMeter2Info_getWarpPos(), dMeter2Info_getWarpPlayerNo(),
                                dMeter2Info_getWarpRoomNo(), data);
        dComIfGp_setNextStage(dMeter2Info_getWarpStageName(), -4, dMeter2Info_getWarpRoomNo(), -1,
                              FLOAT_LABEL(lit_6108), 0, 1, 0, mCollisionRot.y, 1, 0);
    }

    if (mProcID == PROC_WARP) {
        field_0x300e = -1;
    }
}

/* 8011F9EC-8011FBC0 11A32C 01D4+00 1/1 0/0 0/0 .text            checkWarpStart__9daAlink_cFv */
void daAlink_c::checkWarpStart() {
    if (dMeter2Info_getWarpStatus() != 0) {
        if (dMeter2Info_getWarpStatus() == 3 || dComIfGp_event_compulsory(this, 0, 0xFFFF)) {
            i_onNoResetFlg0(0x4000);
            if (dMeter2Info_getWarpStatus() == 3) {
                const char* portal;
                if (!i_checkMidnaRide()) {
                    if (dComIfGp_TargetWarpPt_get() == 3) {
                        mEvtInfo.setArchiveName("Obj_kbrg");
                        portal = kBridgePortal;
                    } else if (dComIfGp_TargetWarpPt_get() == 6) {
                        mEvtInfo.setArchiveName("Obj_obrg");
                        portal = oBridgePortal;
                    } else if (dComIfGp_TargetWarpPt_get() == 9) {
                        mEvtInfo.setArchiveName("M_VolcBom");
                        portal = volcBomPortal;
                    } else if (dComIfGp_TargetWarpPt_get() == 8) {
                        mEvtInfo.setArchiveName("SCanCrs");
                        portal = cannonPortal;
                    } else {
                        portal = defaultPortal;
                    }
                } else {
                    dComIfGp_TargetWarpPt_set(0xFF);
                    portal = defaultPortal;
                }
                fopAcM_orderOtherEvent(this, portal, 0xFFFF, 1, 1);
            } else {
                mDemo.i_setSpecialDemoType();
                if (dMeter2Info_getWarpStatus() == 1) {
                    stage_stag_info_class* stag_info = dComIfGp_getStageStagInfo();
                    u32 tmp = dStage_stagInfo_GetEscapeWarp(stag_info);
                    dStage_changeScene(tmp, FLOAT_LABEL(lit_6108), 0, -1, mCollisionRot.y, -1);
                } else {
                    dungeonReturnWarp();
                }
            }
        }
        g_meter2_info.resetWarpStatus();
    }
}

/* 8011FBC0-8011FD4C 11A500 018C+00 3/3 0/0 0/0 .text            warpModelTexScroll__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::warpModelTexScroll() {
    nofralloc
#include "asm/d/a/d_a_alink/warpModelTexScroll__9daAlink_cFv.s"
}
#pragma pop

/* 8011FD4C-80120124 11A68C 03D8+00 2/2 0/0 0/0 .text            procCoWarpInit__9daAlink_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoWarpInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoWarpInit__9daAlink_cFii.s"
}
#pragma pop

/* 80120124-80120440 11AA64 031C+00 1/0 0/0 0/0 .text            procCoWarp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoWarp() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoWarp__9daAlink_cFv.s"
}
#pragma pop