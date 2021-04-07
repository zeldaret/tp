lbl_80BF5B74:
/* 80BF5B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF5B78  7C 08 02 A6 */	mflr r0
/* 80BF5B7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF5B80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BF5B84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BF5B88  7C 7E 1B 78 */	mr r30, r3
/* 80BF5B8C  7C 9F 23 78 */	mr r31, r4
/* 80BF5B90  80 63 05 AC */	lwz r3, 0x5ac(r3)
/* 80BF5B94  4B 41 78 95 */	bl play__14mDoExt_baseAnmFv
/* 80BF5B98  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BF5B9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF5BA0  7F C3 F3 78 */	mr r3, r30
/* 80BF5BA4  4B FF FC 71 */	bl setBaseMtx__13daObjGWall2_cFv
/* 80BF5BA8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008031D@ha */
/* 80BF5BAC  38 03 03 1D */	addi r0, r3, 0x031D /* 0x0008031D@l */
/* 80BF5BB0  90 01 00 08 */	stw r0, 8(r1)
/* 80BF5BB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF5BB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BF5BBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF5BC0  38 81 00 08 */	addi r4, r1, 8
/* 80BF5BC4  38 BE 05 B4 */	addi r5, r30, 0x5b4
/* 80BF5BC8  38 C0 00 00 */	li r6, 0
/* 80BF5BCC  38 E0 00 00 */	li r7, 0
/* 80BF5BD0  3D 00 80 BF */	lis r8, lit_3702@ha /* 0x80BF61D8@ha */
/* 80BF5BD4  C0 28 61 D8 */	lfs f1, lit_3702@l(r8)  /* 0x80BF61D8@l */
/* 80BF5BD8  FC 40 08 90 */	fmr f2, f1
/* 80BF5BDC  3D 00 80 BF */	lis r8, lit_3737@ha /* 0x80BF61DC@ha */
/* 80BF5BE0  C0 68 61 DC */	lfs f3, lit_3737@l(r8)  /* 0x80BF61DC@l */
/* 80BF5BE4  FC 80 18 90 */	fmr f4, f3
/* 80BF5BE8  39 00 00 00 */	li r8, 0
/* 80BF5BEC  4B 6B 69 21 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF5BF0  38 60 00 01 */	li r3, 1
/* 80BF5BF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BF5BF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BF5BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF5C00  7C 08 03 A6 */	mtlr r0
/* 80BF5C04  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF5C08  4E 80 00 20 */	blr 
