lbl_805CBD64:
/* 805CBD64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805CBD68  7C 08 02 A6 */	mflr r0
/* 805CBD6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805CBD70  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805CBD74  93 C1 00 48 */	stw r30, 0x48(r1)
/* 805CBD78  7C 7E 1B 78 */	mr r30, r3
/* 805CBD7C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805CBD80  40 82 00 74 */	bne lbl_805CBDF4
/* 805CBD84  38 61 00 1C */	addi r3, r1, 0x1c
/* 805CBD88  38 9E 07 6C */	addi r4, r30, 0x76c
/* 805CBD8C  3B FE 2C 88 */	addi r31, r30, 0x2c88
/* 805CBD90  7F E5 FB 78 */	mr r5, r31
/* 805CBD94  4B C9 AD A1 */	bl __mi__4cXyzCFRC3Vec
/* 805CBD98  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805CBD9C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805CBDA0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805CBDA4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805CBDA8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805CBDAC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805CBDB0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805CBDB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805CBDB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805CBDBC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805CBDC0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805CBDC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805CBDC8  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805CBDCC  C0 03 CA 54 */	lfs f0, lit_3932@l(r3)  /* 0x805DCA54@l */
/* 805CBDD0  EC 01 00 2A */	fadds f0, f1, f0
/* 805CBDD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805CBDD8  C0 1E 07 6C */	lfs f0, 0x76c(r30)
/* 805CBDDC  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805CBDE0  C0 1E 07 70 */	lfs f0, 0x770(r30)
/* 805CBDE4  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805CBDE8  C0 1E 07 74 */	lfs f0, 0x774(r30)
/* 805CBDEC  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805CBDF0  48 00 00 70 */	b lbl_805CBE60
lbl_805CBDF4:
/* 805CBDF4  38 61 00 10 */	addi r3, r1, 0x10
/* 805CBDF8  38 9E 07 60 */	addi r4, r30, 0x760
/* 805CBDFC  3B FE 2B 4C */	addi r31, r30, 0x2b4c
/* 805CBE00  7F E5 FB 78 */	mr r5, r31
/* 805CBE04  4B C9 AD 31 */	bl __mi__4cXyzCFRC3Vec
/* 805CBE08  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CBE0C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805CBE10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CBE14  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805CBE18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805CBE1C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805CBE20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805CBE24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805CBE28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805CBE2C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805CBE30  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805CBE34  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805CBE38  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805CBE3C  C0 03 CA 54 */	lfs f0, lit_3932@l(r3)  /* 0x805DCA54@l */
/* 805CBE40  EC 01 00 2A */	fadds f0, f1, f0
/* 805CBE44  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805CBE48  C0 1E 07 60 */	lfs f0, 0x760(r30)
/* 805CBE4C  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805CBE50  C0 1E 07 64 */	lfs f0, 0x764(r30)
/* 805CBE54  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805CBE58  C0 1E 07 68 */	lfs f0, 0x768(r30)
/* 805CBE5C  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
lbl_805CBE60:
/* 805CBE60  38 00 00 00 */	li r0, 0
/* 805CBE64  B0 01 00 08 */	sth r0, 8(r1)
/* 805CBE68  38 61 00 34 */	addi r3, r1, 0x34
/* 805CBE6C  4B C9 B2 BD */	bl atan2sX_Z__4cXyzCFv
/* 805CBE70  B0 61 00 0A */	sth r3, 0xa(r1)
/* 805CBE74  38 00 00 00 */	li r0, 0
/* 805CBE78  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805CBE7C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805CBE80  80 9E 2C F0 */	lwz r4, 0x2cf0(r30)
/* 805CBE84  38 A0 00 02 */	li r5, 2
/* 805CBE88  38 C0 00 00 */	li r6, 0
/* 805CBE8C  4B AB B6 89 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805CBE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CBE94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CBE98  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805CBE9C  38 80 00 02 */	li r4, 2
/* 805CBEA0  7F C5 F3 78 */	mr r5, r30
/* 805CBEA4  38 C1 00 28 */	addi r6, r1, 0x28
/* 805CBEA8  38 E1 00 08 */	addi r7, r1, 8
/* 805CBEAC  39 00 00 00 */	li r8, 0
/* 805CBEB0  39 20 00 00 */	li r9, 0
/* 805CBEB4  4B A8 03 65 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805CBEB8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805CBEBC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 805CBEC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805CBEC4  7C 08 03 A6 */	mtlr r0
/* 805CBEC8  38 21 00 50 */	addi r1, r1, 0x50
/* 805CBECC  4E 80 00 20 */	blr 
