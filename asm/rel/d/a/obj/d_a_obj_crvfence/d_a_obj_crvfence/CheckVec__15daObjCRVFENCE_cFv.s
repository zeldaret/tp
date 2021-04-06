lbl_80BCEC98:
/* 80BCEC98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BCEC9C  7C 08 02 A6 */	mflr r0
/* 80BCECA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BCECA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCECA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCECAC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BCECB0  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80BCECB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCECB8  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80BCECBC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCECC0  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80BCECC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCECC8  80 63 06 5C */	lwz r3, 0x65c(r3)
/* 80BCECCC  38 63 00 24 */	addi r3, r3, 0x24
/* 80BCECD0  38 81 00 14 */	addi r4, r1, 0x14
/* 80BCECD4  4B 77 78 DD */	bl PSMTXInverse
/* 80BCECD8  38 61 00 14 */	addi r3, r1, 0x14
/* 80BCECDC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCECE0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCECE4  4B 77 77 CD */	bl PSMTXCopy
/* 80BCECE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCECEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCECF0  38 81 00 08 */	addi r4, r1, 8
/* 80BCECF4  7C 85 23 78 */	mr r5, r4
/* 80BCECF8  4B 77 80 75 */	bl PSMTXMultVec
/* 80BCECFC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80BCED00  3C 60 80 BD */	lis r3, lit_3685@ha /* 0x80BD0188@ha */
/* 80BCED04  C0 03 01 88 */	lfs f0, lit_3685@l(r3)  /* 0x80BD0188@l */
/* 80BCED08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCED0C  7C 00 00 26 */	mfcr r0
/* 80BCED10  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80BCED14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BCED18  7C 08 03 A6 */	mtlr r0
/* 80BCED1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80BCED20  4E 80 00 20 */	blr 
