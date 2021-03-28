lbl_806D9C80:
/* 806D9C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D9C84  7C 08 02 A6 */	mflr r0
/* 806D9C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D9C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D9C90  93 C1 00 08 */	stw r30, 8(r1)
/* 806D9C94  7C 7E 1B 78 */	mr r30, r3
/* 806D9C98  3C 80 80 6E */	lis r4, lit_3763@ha
/* 806D9C9C  3B E4 EE 38 */	addi r31, r4, lit_3763@l
/* 806D9CA0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D9CA4  A8 03 06 58 */	lha r0, 0x658(r3)
/* 806D9CA8  2C 00 00 01 */	cmpwi r0, 1
/* 806D9CAC  41 82 00 30 */	beq lbl_806D9CDC
/* 806D9CB0  40 80 00 6C */	bge lbl_806D9D1C
/* 806D9CB4  2C 00 00 00 */	cmpwi r0, 0
/* 806D9CB8  40 80 00 08 */	bge lbl_806D9CC0
/* 806D9CBC  48 00 00 60 */	b lbl_806D9D1C
lbl_806D9CC0:
/* 806D9CC0  38 80 00 21 */	li r4, 0x21
/* 806D9CC4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806D9CC8  38 A0 00 00 */	li r5, 0
/* 806D9CCC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D9CD0  4B FF E8 A9 */	bl anm_init__FP11e_gob_classifUcf
/* 806D9CD4  38 00 00 01 */	li r0, 1
/* 806D9CD8  B0 1E 06 58 */	sth r0, 0x658(r30)
lbl_806D9CDC:
/* 806D9CDC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D9CE0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806D9CE4  38 80 00 01 */	li r4, 1
/* 806D9CE8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D9CEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D9CF0  40 82 00 14 */	bne lbl_806D9D04
/* 806D9CF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D9CF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D9CFC  41 82 00 08 */	beq lbl_806D9D04
/* 806D9D00  38 80 00 00 */	li r4, 0
lbl_806D9D04:
/* 806D9D04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D9D08  41 82 00 14 */	beq lbl_806D9D1C
/* 806D9D0C  38 00 00 02 */	li r0, 2
/* 806D9D10  B0 1E 06 56 */	sth r0, 0x656(r30)
/* 806D9D14  38 00 00 00 */	li r0, 0
/* 806D9D18  B0 1E 06 58 */	sth r0, 0x658(r30)
lbl_806D9D1C:
/* 806D9D1C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806D9D20  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D9D24  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806D9D28  4B B9 5D 14 */	b cLib_addCalc2__FPffff
/* 806D9D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D9D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D9D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D9D38  7C 08 03 A6 */	mtlr r0
/* 806D9D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 806D9D40  4E 80 00 20 */	blr 
