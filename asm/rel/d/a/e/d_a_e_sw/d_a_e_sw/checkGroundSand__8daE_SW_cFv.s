lbl_807ABD28:
/* 807ABD28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807ABD2C  7C 08 02 A6 */	mflr r0
/* 807ABD30  90 01 00 34 */	stw r0, 0x34(r1)
/* 807ABD34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807ABD38  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807ABD3C  7C 7F 1B 78 */	mr r31, r3
/* 807ABD40  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807ABD44  3B C3 FD 2C */	addi r30, r3, lit_3909@l
/* 807ABD48  38 00 00 00 */	li r0, 0
/* 807ABD4C  B0 1F 06 BC */	sth r0, 0x6bc(r31)
/* 807ABD50  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807ABD54  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807ABD58  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807ABD5C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807ABD60  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807ABD64  38 61 00 08 */	addi r3, r1, 8
/* 807ABD68  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807ABD6C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 807ABD70  38 C1 00 14 */	addi r6, r1, 0x14
/* 807ABD74  4B AC 50 4C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807ABD78  38 61 00 08 */	addi r3, r1, 8
/* 807ABD7C  4B 87 1F 40 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807ABD80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ABD84  41 82 00 34 */	beq lbl_807ABDB8
/* 807ABD88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807ABD8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807ABD90  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807ABD94  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 807ABD98  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 807ABD9C  38 84 00 14 */	addi r4, r4, 0x14
/* 807ABDA0  4B 8C 90 B0 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 807ABDA4  2C 03 00 03 */	cmpwi r3, 3
/* 807ABDA8  40 82 00 10 */	bne lbl_807ABDB8
/* 807ABDAC  A8 1F 06 BC */	lha r0, 0x6bc(r31)
/* 807ABDB0  60 00 00 01 */	ori r0, r0, 1
/* 807ABDB4  B0 1F 06 BC */	sth r0, 0x6bc(r31)
lbl_807ABDB8:
/* 807ABDB8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807ABDBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807ABDC0  38 61 00 08 */	addi r3, r1, 8
/* 807ABDC4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807ABDC8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 807ABDCC  38 C1 00 14 */	addi r6, r1, 0x14
/* 807ABDD0  4B AC 4F F0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807ABDD4  38 61 00 08 */	addi r3, r1, 8
/* 807ABDD8  4B 87 1E E4 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807ABDDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ABDE0  41 82 00 34 */	beq lbl_807ABE14
/* 807ABDE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807ABDE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807ABDEC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807ABDF0  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 807ABDF4  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 807ABDF8  38 84 00 14 */	addi r4, r4, 0x14
/* 807ABDFC  4B 8C 90 54 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 807ABE00  2C 03 00 03 */	cmpwi r3, 3
/* 807ABE04  40 82 00 10 */	bne lbl_807ABE14
/* 807ABE08  A8 1F 06 BC */	lha r0, 0x6bc(r31)
/* 807ABE0C  60 00 00 02 */	ori r0, r0, 2
/* 807ABE10  B0 1F 06 BC */	sth r0, 0x6bc(r31)
lbl_807ABE14:
/* 807ABE14  A8 1F 06 BC */	lha r0, 0x6bc(r31)
/* 807ABE18  2C 00 00 03 */	cmpwi r0, 3
/* 807ABE1C  40 82 00 1C */	bne lbl_807ABE38
/* 807ABE20  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807ABE24  D0 1F 06 5C */	stfs f0, 0x65c(r31)
/* 807ABE28  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807ABE2C  D0 1F 06 60 */	stfs f0, 0x660(r31)
/* 807ABE30  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807ABE34  D0 1F 06 64 */	stfs f0, 0x664(r31)
lbl_807ABE38:
/* 807ABE38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807ABE3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807ABE40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807ABE44  7C 08 03 A6 */	mtlr r0
/* 807ABE48  38 21 00 30 */	addi r1, r1, 0x30
/* 807ABE4C  4E 80 00 20 */	blr 
