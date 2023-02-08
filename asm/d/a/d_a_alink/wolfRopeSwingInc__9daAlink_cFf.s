lbl_80131A6C:
/* 80131A6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80131A70  7C 08 02 A6 */	mflr r0
/* 80131A74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80131A78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80131A7C  7C 7F 1B 78 */	mr r31, r3
/* 80131A80  C0 03 34 78 */	lfs f0, 0x3478(r3)
/* 80131A84  EC 00 08 2A */	fadds f0, f0, f1
/* 80131A88  D0 03 34 78 */	stfs f0, 0x3478(r3)
/* 80131A8C  C0 22 94 B8 */	lfs f1, lit_17592(r2)
/* 80131A90  C0 03 34 78 */	lfs f0, 0x3478(r3)
/* 80131A94  EC 21 00 32 */	fmuls f1, f1, f0
/* 80131A98  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 80131A9C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80131AA0  48 23 06 0D */	bl __cvt_fp2unsigned
/* 80131AA4  7C 66 1B 78 */	mr r6, r3
/* 80131AA8  28 06 00 7F */	cmplwi r6, 0x7f
/* 80131AAC  40 81 00 08 */	ble lbl_80131AB4
/* 80131AB0  38 C0 00 7F */	li r6, 0x7f
lbl_80131AB4:
/* 80131AB4  88 FF 2F 9A */	lbz r7, 0x2f9a(r31)
/* 80131AB8  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003F@ha */
/* 80131ABC  38 03 00 3F */	addi r0, r3, 0x003F /* 0x0003003F@l */
/* 80131AC0  90 01 00 08 */	stw r0, 8(r1)
/* 80131AC4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80131AC8  38 81 00 08 */	addi r4, r1, 8
/* 80131ACC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80131AD0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80131AD4  FC 40 08 90 */	fmr f2, f1
/* 80131AD8  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 80131ADC  FC 80 18 90 */	fmr f4, f3
/* 80131AE0  39 00 00 00 */	li r8, 0
/* 80131AE4  48 17 9E A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80131AE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80131AEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80131AF0  7C 08 03 A6 */	mtlr r0
/* 80131AF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80131AF8  4E 80 00 20 */	blr 
