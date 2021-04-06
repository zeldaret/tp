lbl_80C79344:
/* 80C79344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C79348  7C 08 02 A6 */	mflr r0
/* 80C7934C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C79350  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C79354  7C 7F 1B 78 */	mr r31, r3
/* 80C79358  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C7935C  7C 03 07 74 */	extsb r3, r0
/* 80C79360  4B 3B 3D 0D */	bl dComIfGp_getReverb__Fi
/* 80C79364  7C 67 1B 78 */	mr r7, r3
/* 80C79368  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021F@ha */
/* 80C7936C  38 03 02 1F */	addi r0, r3, 0x021F /* 0x0008021F@l */
/* 80C79370  90 01 00 08 */	stw r0, 8(r1)
/* 80C79374  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C79378  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7937C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C79380  38 81 00 08 */	addi r4, r1, 8
/* 80C79384  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C79388  38 C0 00 00 */	li r6, 0
/* 80C7938C  3D 00 80 C8 */	lis r8, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C79390  C0 28 9A D0 */	lfs f1, lit_4110@l(r8)  /* 0x80C79AD0@l */
/* 80C79394  FC 40 08 90 */	fmr f2, f1
/* 80C79398  3D 00 80 C8 */	lis r8, lit_4157@ha /* 0x80C79AD8@ha */
/* 80C7939C  C0 68 9A D8 */	lfs f3, lit_4157@l(r8)  /* 0x80C79AD8@l */
/* 80C793A0  FC 80 18 90 */	fmr f4, f3
/* 80C793A4  39 00 00 00 */	li r8, 0
/* 80C793A8  4B 63 25 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C793AC  38 00 00 05 */	li r0, 5
/* 80C793B0  98 1F 05 D8 */	stb r0, 0x5d8(r31)
/* 80C793B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C793B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C793BC  7C 08 03 A6 */	mtlr r0
/* 80C793C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C793C4  4E 80 00 20 */	blr 
