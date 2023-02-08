lbl_80A5DE54:
/* 80A5DE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5DE58  7C 08 02 A6 */	mflr r0
/* 80A5DE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5DE60  7C 88 23 78 */	mr r8, r4
/* 80A5DE64  7C A0 2B 78 */	mr r0, r5
/* 80A5DE68  7C C7 33 78 */	mr r7, r6
/* 80A5DE6C  90 61 00 08 */	stw r3, 8(r1)
/* 80A5DE70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A5DE74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A5DE78  80 63 00 00 */	lwz r3, 0(r3)
/* 80A5DE7C  38 81 00 08 */	addi r4, r1, 8
/* 80A5DE80  7D 05 43 78 */	mr r5, r8
/* 80A5DE84  7C 06 03 78 */	mr r6, r0
/* 80A5DE88  3D 00 80 A6 */	lis r8, lit_4146@ha /* 0x80A5DF24@ha */
/* 80A5DE8C  C0 28 DF 24 */	lfs f1, lit_4146@l(r8)  /* 0x80A5DF24@l */
/* 80A5DE90  FC 40 08 90 */	fmr f2, f1
/* 80A5DE94  3D 00 80 A6 */	lis r8, lit_4149@ha /* 0x80A5DF30@ha */
/* 80A5DE98  C0 68 DF 30 */	lfs f3, lit_4149@l(r8)  /* 0x80A5DF30@l */
/* 80A5DE9C  FC 80 18 90 */	fmr f4, f3
/* 80A5DEA0  39 00 00 00 */	li r8, 0
/* 80A5DEA4  4B 84 DA E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A5DEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5DEAC  7C 08 03 A6 */	mtlr r0
/* 80A5DEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5DEB4  4E 80 00 20 */	blr 
