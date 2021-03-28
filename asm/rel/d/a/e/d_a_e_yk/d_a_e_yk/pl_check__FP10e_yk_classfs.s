lbl_80804C88:
/* 80804C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80804C8C  7C 08 02 A6 */	mflr r0
/* 80804C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80804C94  3C A0 80 80 */	lis r5, lit_4103@ha
/* 80804C98  C0 05 7C DC */	lfs f0, lit_4103@l(r5)
/* 80804C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80804CA0  4C 41 13 82 */	cror 2, 1, 2
/* 80804CA4  40 82 00 0C */	bne lbl_80804CB0
/* 80804CA8  38 60 00 01 */	li r3, 1
/* 80804CAC  48 00 00 7C */	b lbl_80804D28
lbl_80804CB0:
/* 80804CB0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80804CB4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80804CB8  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 80804CBC  C0 46 04 D4 */	lfs f2, 0x4d4(r6)
/* 80804CC0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80804CC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80804CC8  40 80 00 5C */	bge lbl_80804D24
/* 80804CCC  C0 03 06 84 */	lfs f0, 0x684(r3)
/* 80804CD0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80804CD4  40 80 00 50 */	bge lbl_80804D24
/* 80804CD8  A8 A3 06 80 */	lha r5, 0x680(r3)
/* 80804CDC  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80804CE0  7C 05 00 50 */	subf r0, r5, r0
/* 80804CE4  7C 05 07 34 */	extsh r5, r0
/* 80804CE8  7C 80 07 34 */	extsh r0, r4
/* 80804CEC  2C 00 00 01 */	cmpwi r0, 1
/* 80804CF0  41 82 00 1C */	beq lbl_80804D0C
/* 80804CF4  7C 05 00 00 */	cmpw r5, r0
/* 80804CF8  40 80 00 2C */	bge lbl_80804D24
/* 80804CFC  7C 04 00 D0 */	neg r0, r4
/* 80804D00  7C 00 07 34 */	extsh r0, r0
/* 80804D04  7C 05 00 00 */	cmpw r5, r0
/* 80804D08  40 81 00 1C */	ble lbl_80804D24
lbl_80804D0C:
/* 80804D0C  7C C4 33 78 */	mr r4, r6
/* 80804D10  4B FF FE A1 */	bl other_bg_check__FP10e_yk_classP10fopAc_ac_c
/* 80804D14  2C 03 00 00 */	cmpwi r3, 0
/* 80804D18  40 82 00 0C */	bne lbl_80804D24
/* 80804D1C  38 60 00 01 */	li r3, 1
/* 80804D20  48 00 00 08 */	b lbl_80804D28
lbl_80804D24:
/* 80804D24  38 60 00 00 */	li r3, 0
lbl_80804D28:
/* 80804D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80804D2C  7C 08 03 A6 */	mtlr r0
/* 80804D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80804D34  4E 80 00 20 */	blr 
