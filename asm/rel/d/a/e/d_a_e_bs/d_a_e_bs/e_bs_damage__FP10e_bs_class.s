lbl_8068F15C:
/* 8068F15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068F160  7C 08 02 A6 */	mflr r0
/* 8068F164  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068F168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068F16C  7C 7F 1B 78 */	mr r31, r3
/* 8068F170  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8068F174  2C 00 00 01 */	cmpwi r0, 1
/* 8068F178  41 82 00 38 */	beq lbl_8068F1B0
/* 8068F17C  40 80 00 78 */	bge lbl_8068F1F4
/* 8068F180  2C 00 00 00 */	cmpwi r0, 0
/* 8068F184  40 80 00 08 */	bge lbl_8068F18C
/* 8068F188  48 00 00 6C */	b lbl_8068F1F4
lbl_8068F18C:
/* 8068F18C  38 80 00 06 */	li r4, 6
/* 8068F190  3C A0 80 69 */	lis r5, lit_3790@ha /* 0x80690DE0@ha */
/* 8068F194  C0 25 0D E0 */	lfs f1, lit_3790@l(r5)  /* 0x80690DE0@l */
/* 8068F198  38 A0 00 00 */	li r5, 0
/* 8068F19C  FC 40 08 90 */	fmr f2, f1
/* 8068F1A0  4B FF F0 55 */	bl anm_init__FP10e_bs_classifUcf
/* 8068F1A4  38 00 00 01 */	li r0, 1
/* 8068F1A8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8068F1AC  48 00 00 48 */	b lbl_8068F1F4
lbl_8068F1B0:
/* 8068F1B0  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 8068F1B4  38 A0 00 01 */	li r5, 1
/* 8068F1B8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8068F1BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8068F1C0  40 82 00 1C */	bne lbl_8068F1DC
/* 8068F1C4  3C 60 80 69 */	lis r3, lit_3789@ha /* 0x80690DDC@ha */
/* 8068F1C8  C0 23 0D DC */	lfs f1, lit_3789@l(r3)  /* 0x80690DDC@l */
/* 8068F1CC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8068F1D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8068F1D4  41 82 00 08 */	beq lbl_8068F1DC
/* 8068F1D8  38 A0 00 00 */	li r5, 0
lbl_8068F1DC:
/* 8068F1DC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8068F1E0  41 82 00 14 */	beq lbl_8068F1F4
/* 8068F1E4  38 00 00 02 */	li r0, 2
/* 8068F1E8  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 8068F1EC  38 00 00 00 */	li r0, 0
/* 8068F1F0  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_8068F1F4:
/* 8068F1F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068F1F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068F1FC  7C 08 03 A6 */	mtlr r0
/* 8068F200  38 21 00 10 */	addi r1, r1, 0x10
/* 8068F204  4E 80 00 20 */	blr 
