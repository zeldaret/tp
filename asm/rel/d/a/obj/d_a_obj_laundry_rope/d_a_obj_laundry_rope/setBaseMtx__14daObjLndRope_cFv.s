lbl_80C52890:
/* 80C52890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52894  7C 08 02 A6 */	mflr r0
/* 80C52898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5289C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C528A0  7C 7F 1B 78 */	mr r31, r3
/* 80C528A4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C528A8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C528AC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C528B0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C528B4  4B 6F 40 35 */	bl PSMTXTrans
/* 80C528B8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C528BC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C528C0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C528C4  38 C0 00 00 */	li r6, 0
/* 80C528C8  4B 3B 99 D9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C528CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C528D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C528D4  7C 08 03 A6 */	mtlr r0
/* 80C528D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C528DC  4E 80 00 20 */	blr 
