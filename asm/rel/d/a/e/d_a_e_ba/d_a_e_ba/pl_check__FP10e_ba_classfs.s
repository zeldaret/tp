lbl_8067EFF8:
/* 8067EFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067EFFC  7C 08 02 A6 */	mflr r0
/* 8067F000  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067F004  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8067F008  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067F00C  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 8067F010  80 06 05 70 */	lwz r0, 0x570(r6)
/* 8067F014  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8067F018  41 82 00 10 */	beq lbl_8067F028
/* 8067F01C  88 05 4F AD */	lbz r0, 0x4fad(r5)
/* 8067F020  28 00 00 00 */	cmplwi r0, 0
/* 8067F024  41 82 00 0C */	beq lbl_8067F030
lbl_8067F028:
/* 8067F028  38 60 00 00 */	li r3, 0
/* 8067F02C  48 00 00 70 */	b lbl_8067F09C
lbl_8067F030:
/* 8067F030  C0 46 04 D4 */	lfs f2, 0x4d4(r6)
/* 8067F034  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8067F038  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8067F03C  40 80 00 5C */	bge lbl_8067F098
/* 8067F040  C0 03 06 88 */	lfs f0, 0x688(r3)
/* 8067F044  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8067F048  40 80 00 50 */	bge lbl_8067F098
/* 8067F04C  A8 A3 06 84 */	lha r5, 0x684(r3)
/* 8067F050  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8067F054  7C 05 00 50 */	subf r0, r5, r0
/* 8067F058  7C 05 07 34 */	extsh r5, r0
/* 8067F05C  7C 80 07 34 */	extsh r0, r4
/* 8067F060  2C 00 00 01 */	cmpwi r0, 1
/* 8067F064  41 82 00 1C */	beq lbl_8067F080
/* 8067F068  7C 05 00 00 */	cmpw r5, r0
/* 8067F06C  40 80 00 2C */	bge lbl_8067F098
/* 8067F070  7C 04 00 D0 */	neg r0, r4
/* 8067F074  7C 00 07 34 */	extsh r0, r0
/* 8067F078  7C 05 00 00 */	cmpw r5, r0
/* 8067F07C  40 81 00 1C */	ble lbl_8067F098
lbl_8067F080:
/* 8067F080  7C C4 33 78 */	mr r4, r6
/* 8067F084  4B FF FE 9D */	bl other_bg_check__FP10e_ba_classP10fopAc_ac_c
/* 8067F088  2C 03 00 00 */	cmpwi r3, 0
/* 8067F08C  40 82 00 0C */	bne lbl_8067F098
/* 8067F090  38 60 00 01 */	li r3, 1
/* 8067F094  48 00 00 08 */	b lbl_8067F09C
lbl_8067F098:
/* 8067F098  38 60 00 00 */	li r3, 0
lbl_8067F09C:
/* 8067F09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067F0A0  7C 08 03 A6 */	mtlr r0
/* 8067F0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8067F0A8  4E 80 00 20 */	blr 
