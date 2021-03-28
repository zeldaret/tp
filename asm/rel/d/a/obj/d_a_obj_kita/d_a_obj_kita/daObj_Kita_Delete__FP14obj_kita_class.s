lbl_80C45A74:
/* 80C45A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C45A78  7C 08 02 A6 */	mflr r0
/* 80C45A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C45A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80C45A84  4B 71 C7 54 */	b _savegpr_28
/* 80C45A88  7C 7C 1B 78 */	mr r28, r3
/* 80C45A8C  38 7C 05 68 */	addi r3, r28, 0x568
/* 80C45A90  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C45A94  38 84 5F 80 */	addi r4, r4, stringBase0@l
/* 80C45A98  4B 3E 75 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C45A9C  88 1C 0D 74 */	lbz r0, 0xd74(r28)
/* 80C45AA0  28 00 00 00 */	cmplwi r0, 0
/* 80C45AA4  41 82 00 10 */	beq lbl_80C45AB4
/* 80C45AA8  38 00 00 00 */	li r0, 0
/* 80C45AAC  3C 60 80 C4 */	lis r3, data_80C45FF0@ha
/* 80C45AB0  98 03 5F F0 */	stb r0, data_80C45FF0@l(r3)
lbl_80C45AB4:
/* 80C45AB4  3B A0 00 00 */	li r29, 0
/* 80C45AB8  3B E0 00 00 */	li r31, 0
/* 80C45ABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C45AC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C45AC4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80C45AC8  48 00 00 1C */	b lbl_80C45AE4
lbl_80C45ACC:
/* 80C45ACC  7F C3 F3 78 */	mr r3, r30
/* 80C45AD0  38 1F 05 F0 */	addi r0, r31, 0x5f0
/* 80C45AD4  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80C45AD8  4B 42 E7 78 */	b Release__4cBgSFP9dBgW_Base
/* 80C45ADC  3B BD 00 01 */	addi r29, r29, 1
/* 80C45AE0  3B FF 00 60 */	addi r31, r31, 0x60
lbl_80C45AE4:
/* 80C45AE4  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80C45AE8  38 03 FF FF */	addi r0, r3, -1
/* 80C45AEC  7C 1D 00 00 */	cmpw r29, r0
/* 80C45AF0  41 80 FF DC */	blt lbl_80C45ACC
/* 80C45AF4  38 60 00 01 */	li r3, 1
/* 80C45AF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C45AFC  4B 71 C7 28 */	b _restgpr_28
/* 80C45B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C45B04  7C 08 03 A6 */	mtlr r0
/* 80C45B08  38 21 00 20 */	addi r1, r1, 0x20
/* 80C45B0C  4E 80 00 20 */	blr 
