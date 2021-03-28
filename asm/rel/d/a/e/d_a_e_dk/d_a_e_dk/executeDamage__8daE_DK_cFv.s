lbl_806ABCC8:
/* 806ABCC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806ABCCC  7C 08 02 A6 */	mflr r0
/* 806ABCD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806ABCD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806ABCD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806ABCDC  7C 7F 1B 78 */	mr r31, r3
/* 806ABCE0  3C 60 80 6B */	lis r3, lit_3764@ha
/* 806ABCE4  3B C3 D5 38 */	addi r30, r3, lit_3764@l
/* 806ABCE8  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 806ABCEC  2C 00 00 02 */	cmpwi r0, 2
/* 806ABCF0  41 82 00 B4 */	beq lbl_806ABDA4
/* 806ABCF4  40 80 01 30 */	bge lbl_806ABE24
/* 806ABCF8  2C 00 00 00 */	cmpwi r0, 0
/* 806ABCFC  40 80 00 08 */	bge lbl_806ABD04
/* 806ABD00  48 00 01 24 */	b lbl_806ABE24
lbl_806ABD04:
/* 806ABD04  40 82 00 10 */	bne lbl_806ABD14
/* 806ABD08  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 806ABD0C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806ABD10  48 00 00 0C */	b lbl_806ABD1C
lbl_806ABD14:
/* 806ABD14  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 806ABD18  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_806ABD1C:
/* 806ABD1C  38 00 F0 00 */	li r0, -4096
/* 806ABD20  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806ABD24  7F E3 FB 78 */	mr r3, r31
/* 806ABD28  38 80 00 0D */	li r4, 0xd
/* 806ABD2C  38 A0 00 00 */	li r5, 0
/* 806ABD30  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806ABD34  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806ABD38  4B FF E8 91 */	bl setBck__8daE_DK_cFiUcff
/* 806ABD3C  7F E3 FB 78 */	mr r3, r31
/* 806ABD40  38 80 00 0B */	li r4, 0xb
/* 806ABD44  38 A0 00 00 */	li r5, 0
/* 806ABD48  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806ABD4C  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 806ABD50  4B FF E9 3D */	bl setBckCore__8daE_DK_cFiUcff
/* 806ABD54  A8 1F 0D 1A */	lha r0, 0xd1a(r31)
/* 806ABD58  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 806ABD5C  A8 7F 0D 1A */	lha r3, 0xd1a(r31)
/* 806ABD60  3C 63 00 01 */	addis r3, r3, 1
/* 806ABD64  38 03 80 00 */	addi r0, r3, -32768
/* 806ABD68  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806ABD6C  38 00 00 02 */	li r0, 2
/* 806ABD70  90 1F 06 80 */	stw r0, 0x680(r31)
/* 806ABD74  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A4@ha */
/* 806ABD78  38 03 02 A4 */	addi r0, r3, 0x02A4 /* 0x000702A4@l */
/* 806ABD7C  90 01 00 08 */	stw r0, 8(r1)
/* 806ABD80  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806ABD84  38 81 00 08 */	addi r4, r1, 8
/* 806ABD88  38 A0 00 00 */	li r5, 0
/* 806ABD8C  38 C0 FF FF */	li r6, -1
/* 806ABD90  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 806ABD94  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806ABD98  7D 89 03 A6 */	mtctr r12
/* 806ABD9C  4E 80 04 21 */	bctrl 
/* 806ABDA0  48 00 00 84 */	b lbl_806ABE24
lbl_806ABDA4:
/* 806ABDA4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806ABDA8  38 80 00 00 */	li r4, 0
/* 806ABDAC  38 A0 00 10 */	li r5, 0x10
/* 806ABDB0  38 C0 01 00 */	li r6, 0x100
/* 806ABDB4  38 E0 00 10 */	li r7, 0x10
/* 806ABDB8  4B BC 47 88 */	b cLib_addCalcAngleS__FPsssss
/* 806ABDBC  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806ABDC0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806ABDC4  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806ABDC8  4B BC 49 78 */	b cLib_chaseF__FPfff
/* 806ABDCC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806ABDD0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806ABDD4  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 806ABDD8  4B BC 49 68 */	b cLib_chaseF__FPfff
/* 806ABDDC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806ABDE0  38 80 00 01 */	li r4, 1
/* 806ABDE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806ABDE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806ABDEC  40 82 00 18 */	bne lbl_806ABE04
/* 806ABDF0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806ABDF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806ABDF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806ABDFC  41 82 00 08 */	beq lbl_806ABE04
/* 806ABE00  38 80 00 00 */	li r4, 0
lbl_806ABE04:
/* 806ABE04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806ABE08  41 82 00 1C */	beq lbl_806ABE24
/* 806ABE0C  38 00 00 00 */	li r0, 0
/* 806ABE10  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806ABE14  7F E3 FB 78 */	mr r3, r31
/* 806ABE18  38 80 00 01 */	li r4, 1
/* 806ABE1C  38 A0 00 00 */	li r5, 0
/* 806ABE20  4B FF E9 11 */	bl setActionMode__8daE_DK_cFii
lbl_806ABE24:
/* 806ABE24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806ABE28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806ABE2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806ABE30  7C 08 03 A6 */	mtlr r0
/* 806ABE34  38 21 00 20 */	addi r1, r1, 0x20
/* 806ABE38  4E 80 00 20 */	blr 
