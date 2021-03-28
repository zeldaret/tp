lbl_8054A3B4:
/* 8054A3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A3B8  7C 08 02 A6 */	mflr r0
/* 8054A3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A3C0  7C 88 23 78 */	mr r8, r4
/* 8054A3C4  7C A0 2B 78 */	mr r0, r5
/* 8054A3C8  7C C7 33 78 */	mr r7, r6
/* 8054A3CC  90 61 00 08 */	stw r3, 8(r1)
/* 8054A3D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8054A3D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8054A3D8  80 63 00 00 */	lwz r3, 0(r3)
/* 8054A3DC  38 81 00 08 */	addi r4, r1, 8
/* 8054A3E0  7D 05 43 78 */	mr r5, r8
/* 8054A3E4  7C 06 03 78 */	mr r6, r0
/* 8054A3E8  3D 00 80 55 */	lis r8, lit_3905@ha
/* 8054A3EC  C0 28 A9 64 */	lfs f1, lit_3905@l(r8)
/* 8054A3F0  FC 40 08 90 */	fmr f2, f1
/* 8054A3F4  3D 00 80 55 */	lis r8, lit_3922@ha
/* 8054A3F8  C0 68 A9 74 */	lfs f3, lit_3922@l(r8)
/* 8054A3FC  FC 80 18 90 */	fmr f4, f3
/* 8054A400  39 00 00 00 */	li r8, 0
/* 8054A404  4B D6 15 80 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8054A408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A40C  7C 08 03 A6 */	mtlr r0
/* 8054A410  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A414  4E 80 00 20 */	blr 
