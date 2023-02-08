lbl_80D21D80:
/* 80D21D80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D21D84  7C 08 02 A6 */	mflr r0
/* 80D21D88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D21D8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D21D90  4B 64 04 45 */	bl _savegpr_27
/* 80D21D94  7C 7B 1B 78 */	mr r27, r3
/* 80D21D98  3C 60 80 D2 */	lis r3, l_arcName@ha /* 0x80D23EAC@ha */
/* 80D21D9C  38 63 3E AC */	addi r3, r3, l_arcName@l /* 0x80D23EAC@l */
/* 80D21DA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D21DA4  38 80 00 03 */	li r4, 3
/* 80D21DA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D21DAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D21DB0  3C A5 00 02 */	addis r5, r5, 2
/* 80D21DB4  38 C0 00 80 */	li r6, 0x80
/* 80D21DB8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D21DBC  4B 31 A5 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D21DC0  7C 7D 1B 78 */	mr r29, r3
/* 80D21DC4  3B 80 00 00 */	li r28, 0
/* 80D21DC8  3B E0 00 00 */	li r31, 0
/* 80D21DCC  3F C0 11 00 */	lis r30, 0x1100 /* 0x11000084@ha */
lbl_80D21DD0:
/* 80D21DD0  7F A3 EB 78 */	mr r3, r29
/* 80D21DD4  3C 80 00 08 */	lis r4, 8
/* 80D21DD8  38 BE 00 84 */	addi r5, r30, 0x0084 /* 0x11000084@l */
/* 80D21DDC  4B 2F 2E 79 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D21DE0  38 1F 06 0C */	addi r0, r31, 0x60c
/* 80D21DE4  7C 7B 01 2E */	stwx r3, r27, r0
/* 80D21DE8  7C 1B 00 2E */	lwzx r0, r27, r0
/* 80D21DEC  28 00 00 00 */	cmplwi r0, 0
/* 80D21DF0  40 82 00 0C */	bne lbl_80D21DFC
/* 80D21DF4  38 60 00 00 */	li r3, 0
/* 80D21DF8  48 00 00 18 */	b lbl_80D21E10
lbl_80D21DFC:
/* 80D21DFC  3B 9C 00 01 */	addi r28, r28, 1
/* 80D21E00  2C 1C 00 09 */	cmpwi r28, 9
/* 80D21E04  3B FF 03 E0 */	addi r31, r31, 0x3e0
/* 80D21E08  41 80 FF C8 */	blt lbl_80D21DD0
/* 80D21E0C  38 60 00 01 */	li r3, 1
lbl_80D21E10:
/* 80D21E10  39 61 00 20 */	addi r11, r1, 0x20
/* 80D21E14  4B 64 04 0D */	bl _restgpr_27
/* 80D21E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D21E1C  7C 08 03 A6 */	mtlr r0
/* 80D21E20  38 21 00 20 */	addi r1, r1, 0x20
/* 80D21E24  4E 80 00 20 */	blr 
