lbl_804DB754:
/* 804DB754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB758  7C 08 02 A6 */	mflr r0
/* 804DB75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB764  7C 9F 23 78 */	mr r31, r4
/* 804DB768  7F E3 FB 78 */	mr r3, r31
/* 804DB76C  38 80 00 01 */	li r4, 1
/* 804DB770  4B BC 6A 70 */	b getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 804DB774  7C 60 07 34 */	extsh r0, r3
/* 804DB778  2C 00 01 3E */	cmpwi r0, 0x13e
/* 804DB77C  40 82 00 1C */	bne lbl_804DB798
/* 804DB780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DB784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DB788  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804DB78C  A0 9F 00 02 */	lhz r4, 2(r31)
/* 804DB790  4B B9 8E 88 */	b GetActorPointer__4cBgSCFi
/* 804DB794  48 72 2D 98 */	b BreakSet__15daObjGOMIKABE_cFv
lbl_804DB798:
/* 804DB798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB7A0  7C 08 03 A6 */	mtlr r0
/* 804DB7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB7A8  4E 80 00 20 */	blr 
