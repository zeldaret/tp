lbl_805CFAD4:
/* 805CFAD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CFAD8  7C 08 02 A6 */	mflr r0
/* 805CFADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CFAE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805CFAE4  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805CFAE8  3B E4 CA 54 */	addi r31, r4, lit_3932@l /* 0x805DCA54@l */
/* 805CFAEC  4B D7 76 4D */	bl PSVECSquareMag
/* 805CFAF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805CFAF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFAF8  40 81 00 58 */	ble lbl_805CFB50
/* 805CFAFC  FC 00 08 34 */	frsqrte f0, f1
/* 805CFB00  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805CFB04  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFB08  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805CFB0C  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFB10  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFB14  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFB18  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFB1C  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFB20  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFB24  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFB28  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFB2C  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFB30  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFB34  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFB38  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFB3C  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFB40  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFB44  FC 21 00 32 */	fmul f1, f1, f0
/* 805CFB48  FC 20 08 18 */	frsp f1, f1
/* 805CFB4C  48 00 00 88 */	b lbl_805CFBD4
lbl_805CFB50:
/* 805CFB50  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805CFB54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFB58  40 80 00 10 */	bge lbl_805CFB68
/* 805CFB5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805CFB60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805CFB64  48 00 00 70 */	b lbl_805CFBD4
lbl_805CFB68:
/* 805CFB68  D0 21 00 08 */	stfs f1, 8(r1)
/* 805CFB6C  80 81 00 08 */	lwz r4, 8(r1)
/* 805CFB70  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805CFB74  3C 00 7F 80 */	lis r0, 0x7f80
/* 805CFB78  7C 03 00 00 */	cmpw r3, r0
/* 805CFB7C  41 82 00 14 */	beq lbl_805CFB90
/* 805CFB80  40 80 00 40 */	bge lbl_805CFBC0
/* 805CFB84  2C 03 00 00 */	cmpwi r3, 0
/* 805CFB88  41 82 00 20 */	beq lbl_805CFBA8
/* 805CFB8C  48 00 00 34 */	b lbl_805CFBC0
lbl_805CFB90:
/* 805CFB90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CFB94  41 82 00 0C */	beq lbl_805CFBA0
/* 805CFB98  38 00 00 01 */	li r0, 1
/* 805CFB9C  48 00 00 28 */	b lbl_805CFBC4
lbl_805CFBA0:
/* 805CFBA0  38 00 00 02 */	li r0, 2
/* 805CFBA4  48 00 00 20 */	b lbl_805CFBC4
lbl_805CFBA8:
/* 805CFBA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CFBAC  41 82 00 0C */	beq lbl_805CFBB8
/* 805CFBB0  38 00 00 05 */	li r0, 5
/* 805CFBB4  48 00 00 10 */	b lbl_805CFBC4
lbl_805CFBB8:
/* 805CFBB8  38 00 00 03 */	li r0, 3
/* 805CFBBC  48 00 00 08 */	b lbl_805CFBC4
lbl_805CFBC0:
/* 805CFBC0  38 00 00 04 */	li r0, 4
lbl_805CFBC4:
/* 805CFBC4  2C 00 00 01 */	cmpwi r0, 1
/* 805CFBC8  40 82 00 0C */	bne lbl_805CFBD4
/* 805CFBCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805CFBD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805CFBD4:
/* 805CFBD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805CFBD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CFBDC  7C 08 03 A6 */	mtlr r0
/* 805CFBE0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CFBE4  4E 80 00 20 */	blr 
