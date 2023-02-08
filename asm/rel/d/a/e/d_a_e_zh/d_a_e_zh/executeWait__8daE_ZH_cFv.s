lbl_8082ABDC:
/* 8082ABDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082ABE0  7C 08 02 A6 */	mflr r0
/* 8082ABE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082ABE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082ABEC  93 C1 00 08 */	stw r30, 8(r1)
/* 8082ABF0  7C 7E 1B 78 */	mr r30, r3
/* 8082ABF4  3C 60 80 83 */	lis r3, lit_3778@ha /* 0x8082F208@ha */
/* 8082ABF8  3B E3 F2 08 */	addi r31, r3, lit_3778@l /* 0x8082F208@l */
/* 8082ABFC  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 8082AC00  28 03 00 00 */	cmplwi r3, 0
/* 8082AC04  41 82 00 1C */	beq lbl_8082AC20
/* 8082AC08  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 8082AC0C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082AC10  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 8082AC14  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082AC18  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8082AC1C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8082AC20:
/* 8082AC20  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 8082AC24  2C 00 00 01 */	cmpwi r0, 1
/* 8082AC28  41 82 00 50 */	beq lbl_8082AC78
/* 8082AC2C  40 80 00 4C */	bge lbl_8082AC78
/* 8082AC30  2C 00 00 00 */	cmpwi r0, 0
/* 8082AC34  40 80 00 08 */	bge lbl_8082AC3C
/* 8082AC38  48 00 00 40 */	b lbl_8082AC78
lbl_8082AC3C:
/* 8082AC3C  38 00 00 03 */	li r0, 3
/* 8082AC40  98 1E 05 46 */	stb r0, 0x546(r30)
/* 8082AC44  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8082AC48  60 00 00 04 */	ori r0, r0, 4
/* 8082AC4C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8082AC50  7F C3 F3 78 */	mr r3, r30
/* 8082AC54  38 80 00 0F */	li r4, 0xf
/* 8082AC58  38 A0 00 00 */	li r5, 0
/* 8082AC5C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082AC60  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082AC64  4B FF E7 45 */	bl setBck__8daE_ZH_cFiUcff
/* 8082AC68  38 00 00 00 */	li r0, 0
/* 8082AC6C  90 1E 07 8C */	stw r0, 0x78c(r30)
/* 8082AC70  38 00 00 01 */	li r0, 1
/* 8082AC74  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_8082AC78:
/* 8082AC78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8082AC7C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8082AC80  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8082AC84  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8082AC88  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8082AC8C  4B A4 4E 2D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082AC90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082AC94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8082AC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082AC9C  7C 08 03 A6 */	mtlr r0
/* 8082ACA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8082ACA4  4E 80 00 20 */	blr 
