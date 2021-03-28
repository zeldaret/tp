lbl_80799394:
/* 80799394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80799398  7C 08 02 A6 */	mflr r0
/* 8079939C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807993A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807993A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807993A8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807993AC  C0 63 06 94 */	lfs f3, 0x694(r3)
/* 807993B0  3C A0 80 7A */	lis r5, lit_3790@ha
/* 807993B4  C0 45 D5 B0 */	lfs f2, lit_3790@l(r5)
/* 807993B8  C0 03 08 34 */	lfs f0, 0x834(r3)
/* 807993BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 807993C0  EC 01 00 2A */	fadds f0, f1, f0
/* 807993C4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 807993C8  40 80 00 18 */	bge lbl_807993E0
/* 807993CC  4B 88 3A 30 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807993D0  2C 03 00 00 */	cmpwi r3, 0
/* 807993D4  40 82 00 0C */	bne lbl_807993E0
/* 807993D8  38 60 00 01 */	li r3, 1
/* 807993DC  48 00 00 08 */	b lbl_807993E4
lbl_807993E0:
/* 807993E0  38 60 00 00 */	li r3, 0
lbl_807993E4:
/* 807993E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807993E8  7C 08 03 A6 */	mtlr r0
/* 807993EC  38 21 00 10 */	addi r1, r1, 0x10
/* 807993F0  4E 80 00 20 */	blr 
