lbl_807B8460:
/* 807B8460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B8464  7C 08 02 A6 */	mflr r0
/* 807B8468  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B846C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807B8470  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807B8474  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 807B8478  C0 03 06 90 */	lfs f0, 0x690(r3)
/* 807B847C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807B8480  40 80 00 48 */	bge lbl_807B84C8
/* 807B8484  A8 A3 06 8C */	lha r5, 0x68c(r3)
/* 807B8488  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 807B848C  7C 05 00 50 */	subf r0, r5, r0
/* 807B8490  7C 05 07 34 */	extsh r5, r0
/* 807B8494  7C 80 07 34 */	extsh r0, r4
/* 807B8498  7C 05 00 00 */	cmpw r5, r0
/* 807B849C  40 80 00 2C */	bge lbl_807B84C8
/* 807B84A0  7C 04 00 D0 */	neg r0, r4
/* 807B84A4  7C 00 07 34 */	extsh r0, r0
/* 807B84A8  7C 05 00 00 */	cmpw r5, r0
/* 807B84AC  40 81 00 1C */	ble lbl_807B84C8
/* 807B84B0  7C C4 33 78 */	mr r4, r6
/* 807B84B4  4B FF FE 9D */	bl other_bg_check__FP10e_tk_classP10fopAc_ac_c
/* 807B84B8  2C 03 00 00 */	cmpwi r3, 0
/* 807B84BC  40 82 00 0C */	bne lbl_807B84C8
/* 807B84C0  38 60 00 01 */	li r3, 1
/* 807B84C4  48 00 00 08 */	b lbl_807B84CC
lbl_807B84C8:
/* 807B84C8  38 60 00 00 */	li r3, 0
lbl_807B84CC:
/* 807B84CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B84D0  7C 08 03 A6 */	mtlr r0
/* 807B84D4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B84D8  4E 80 00 20 */	blr 
