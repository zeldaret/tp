lbl_80D07D78:
/* 80D07D78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D07D7C  7C 08 02 A6 */	mflr r0
/* 80D07D80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D07D84  39 61 00 20 */	addi r11, r1, 0x20
/* 80D07D88  4B 65 A4 4C */	b _savegpr_27
/* 80D07D8C  7C 7B 1B 78 */	mr r27, r3
/* 80D07D90  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D07D94  38 63 86 20 */	addi r3, r3, stringBase0@l
/* 80D07D98  38 80 00 03 */	li r4, 3
/* 80D07D9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D07DA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D07DA4  3C A5 00 02 */	addis r5, r5, 2
/* 80D07DA8  38 C0 00 80 */	li r6, 0x80
/* 80D07DAC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D07DB0  4B 33 45 3C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D07DB4  7C 7D 1B 78 */	mr r29, r3
/* 80D07DB8  3B 80 00 00 */	li r28, 0
/* 80D07DBC  3B E0 00 00 */	li r31, 0
/* 80D07DC0  3F C0 11 00 */	lis r30, 0x1100
/* 80D07DC4  48 00 00 38 */	b lbl_80D07DFC
lbl_80D07DC8:
/* 80D07DC8  7F A3 EB 78 */	mr r3, r29
/* 80D07DCC  3C 80 00 02 */	lis r4, 2
/* 80D07DD0  38 BE 00 84 */	addi r5, r30, 0x84
/* 80D07DD4  4B 30 CE 80 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D07DD8  38 1F 05 7C */	addi r0, r31, 0x57c
/* 80D07DDC  7C 7B 01 2E */	stwx r3, r27, r0
/* 80D07DE0  7C 1B 00 2E */	lwzx r0, r27, r0
/* 80D07DE4  28 00 00 00 */	cmplwi r0, 0
/* 80D07DE8  40 82 00 0C */	bne lbl_80D07DF4
/* 80D07DEC  38 60 00 00 */	li r3, 0
/* 80D07DF0  48 00 00 1C */	b lbl_80D07E0C
lbl_80D07DF4:
/* 80D07DF4  3B 9C 00 01 */	addi r28, r28, 1
/* 80D07DF8  3B FF 01 60 */	addi r31, r31, 0x160
lbl_80D07DFC:
/* 80D07DFC  80 1B 1B 7C */	lwz r0, 0x1b7c(r27)
/* 80D07E00  7C 1C 00 00 */	cmpw r28, r0
/* 80D07E04  41 80 FF C4 */	blt lbl_80D07DC8
/* 80D07E08  38 60 00 01 */	li r3, 1
lbl_80D07E0C:
/* 80D07E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D07E10  4B 65 A4 10 */	b _restgpr_27
/* 80D07E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D07E18  7C 08 03 A6 */	mtlr r0
/* 80D07E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D07E20  4E 80 00 20 */	blr 
