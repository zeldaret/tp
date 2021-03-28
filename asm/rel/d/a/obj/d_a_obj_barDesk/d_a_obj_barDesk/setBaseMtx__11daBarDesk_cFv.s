lbl_80BA9200:
/* 80BA9200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9204  7C 08 02 A6 */	mflr r0
/* 80BA9208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA920C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9210  7C 7F 1B 78 */	mr r31, r3
/* 80BA9214  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA9218  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA921C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BA9220  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BA9224  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BA9228  4B 79 D6 C0 */	b PSMTXTrans
/* 80BA922C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA9230  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA9234  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BA9238  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BA923C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BA9240  4B 46 30 60 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80BA9244  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BA9248  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BA924C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BA9250  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BA9254  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BA9258  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BA925C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BA9260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA9264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA9268  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BA926C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BA9270  4B 79 D2 40 */	b PSMTXCopy
/* 80BA9274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA9278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA927C  7C 08 03 A6 */	mtlr r0
/* 80BA9280  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9284  4E 80 00 20 */	blr 
