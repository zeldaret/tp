lbl_80026CDC:
/* 80026CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026CE0  7C 08 02 A6 */	mflr r0
/* 80026CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80026CEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80026CF0  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80026CF4  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80026CF8  38 63 01 19 */	addi r3, r3, 0x119
/* 80026CFC  48 00 87 39 */	bl dComIfG_getStageRes__FPCc
/* 80026D00  7C 7E 1B 78 */	mr r30, r3
/* 80026D04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80026D08  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80026D0C  38 7F 4E C4 */	addi r3, r31, 0x4ec4
/* 80026D10  4B FF D4 D9 */	bl init__20dStage_roomControl_cFv
/* 80026D14  7F C3 F3 78 */	mr r3, r30
/* 80026D18  38 9F 4E 20 */	addi r4, r31, 0x4e20
/* 80026D1C  4B FF FC 25 */	bl dStage_dt_c_stageInitLoader__FPvP11dStage_dt_c
/* 80026D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80026D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80026D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026D2C  7C 08 03 A6 */	mtlr r0
/* 80026D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80026D34  4E 80 00 20 */	blr 
