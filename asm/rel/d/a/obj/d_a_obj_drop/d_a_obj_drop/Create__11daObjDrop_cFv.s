lbl_80BDFD8C:
/* 80BDFD8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDFD90  7C 08 02 A6 */	mflr r0
/* 80BDFD94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDFD98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDFD9C  7C 7F 1B 78 */	mr r31, r3
/* 80BDFDA0  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 80BDFDA4  3C 80 80 BE */	lis r4, lit_3825@ha /* 0x80BE1FD8@ha */
/* 80BDFDA8  C0 24 1F D8 */	lfs f1, lit_3825@l(r4)  /* 0x80BE1FD8@l */
/* 80BDFDAC  FC 40 08 90 */	fmr f2, f1
/* 80BDFDB0  4B 49 61 A9 */	bl SetWall__12dBgS_AcchCirFff
/* 80BDFDB4  38 00 00 00 */	li r0, 0
/* 80BDFDB8  90 01 00 08 */	stw r0, 8(r1)
/* 80BDFDBC  38 7F 07 20 */	addi r3, r31, 0x720
/* 80BDFDC0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BDFDC4  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80BDFDC8  7F E6 FB 78 */	mr r6, r31
/* 80BDFDCC  38 E0 00 01 */	li r7, 1
/* 80BDFDD0  39 1F 06 E0 */	addi r8, r31, 0x6e0
/* 80BDFDD4  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80BDFDD8  39 40 00 00 */	li r10, 0
/* 80BDFDDC  4B 49 64 6D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BDFDE0  38 7F 08 F8 */	addi r3, r31, 0x8f8
/* 80BDFDE4  38 80 00 00 */	li r4, 0
/* 80BDFDE8  38 A0 00 FF */	li r5, 0xff
/* 80BDFDEC  7F E6 FB 78 */	mr r6, r31
/* 80BDFDF0  4B 4A 3A 71 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BDFDF4  38 7F 09 34 */	addi r3, r31, 0x934
/* 80BDFDF8  3C 80 80 BE */	lis r4, l_sph_src@ha /* 0x80BE1F98@ha */
/* 80BDFDFC  38 84 1F 98 */	addi r4, r4, l_sph_src@l /* 0x80BE1F98@l */
/* 80BDFE00  4B 4A 4C 35 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BDFE04  38 1F 08 F8 */	addi r0, r31, 0x8f8
/* 80BDFE08  90 1F 09 78 */	stw r0, 0x978(r31)
/* 80BDFE0C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BDFE10  D0 1F 0A 6C */	stfs f0, 0xa6c(r31)
/* 80BDFE14  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BDFE18  D0 1F 0A 70 */	stfs f0, 0xa70(r31)
/* 80BDFE1C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BDFE20  D0 1F 0A 74 */	stfs f0, 0xa74(r31)
/* 80BDFE24  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 80BDFE28  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BDFE2C  38 A0 00 02 */	li r5, 2
/* 80BDFE30  81 9F 06 D0 */	lwz r12, 0x6d0(r31)
/* 80BDFE34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BDFE38  7D 89 03 A6 */	mtctr r12
/* 80BDFE3C  4E 80 04 21 */	bctrl 
/* 80BDFE40  38 60 00 01 */	li r3, 1
/* 80BDFE44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDFE48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDFE4C  7C 08 03 A6 */	mtlr r0
/* 80BDFE50  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDFE54  4E 80 00 20 */	blr 
