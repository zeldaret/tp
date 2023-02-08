lbl_80BD0D90:
/* 80BD0D90  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BD0D94  7C 08 02 A6 */	mflr r0
/* 80BD0D98  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BD0D9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD0DA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD0DA4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BD0DA8  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80BD0DAC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD0DB0  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80BD0DB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BD0DB8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80BD0DBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD0DC0  80 63 06 74 */	lwz r3, 0x674(r3)
/* 80BD0DC4  38 63 00 24 */	addi r3, r3, 0x24
/* 80BD0DC8  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD0DCC  4B 77 57 E5 */	bl PSMTXInverse
/* 80BD0DD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80BD0DD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD0DD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD0DDC  4B 77 56 D5 */	bl PSMTXCopy
/* 80BD0DE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD0DE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD0DE8  38 81 00 08 */	addi r4, r1, 8
/* 80BD0DEC  7C 85 23 78 */	mr r5, r4
/* 80BD0DF0  4B 77 5F 7D */	bl PSMTXMultVec
/* 80BD0DF4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80BD0DF8  3C 60 80 BD */	lis r3, lit_3794@ha /* 0x80BD3108@ha */
/* 80BD0DFC  C0 03 31 08 */	lfs f0, lit_3794@l(r3)  /* 0x80BD3108@l */
/* 80BD0E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD0E04  7C 00 00 26 */	mfcr r0
/* 80BD0E08  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80BD0E0C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BD0E10  7C 08 03 A6 */	mtlr r0
/* 80BD0E14  38 21 00 50 */	addi r1, r1, 0x50
/* 80BD0E18  4E 80 00 20 */	blr 
