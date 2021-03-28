lbl_80AC801C:
/* 80AC801C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8020  7C 08 02 A6 */	mflr r0
/* 80AC8024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC802C  7C 7F 1B 78 */	mr r31, r3
/* 80AC8030  4B 68 11 60 */	b setMtx__8daNpcT_cFv
/* 80AC8034  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AC8038  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80AC803C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AC8040  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80AC8044  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AC8048  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80AC804C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AC8050  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80AC8054  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AC8058  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80AC805C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AC8060  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80AC8064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC806C  7C 08 03 A6 */	mtlr r0
/* 80AC8070  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8074  4E 80 00 20 */	blr 
