lbl_80C60B00:
/* 80C60B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60B04  7C 08 02 A6 */	mflr r0
/* 80C60B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C60B10  7C 7F 1B 78 */	mr r31, r3
/* 80C60B14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C60B18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C60B1C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C60B20  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C60B24  C0 1F 09 50 */	lfs f0, 0x950(r31)
/* 80C60B28  EC 42 00 2A */	fadds f2, f2, f0
/* 80C60B2C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C60B30  4B 6E 5D B8 */	b PSMTXTrans
/* 80C60B34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C60B38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C60B3C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C60B40  4B 3A B8 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80C60B44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C60B48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C60B4C  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80C60B50  38 84 00 24 */	addi r4, r4, 0x24
/* 80C60B54  4B 6E 59 5C */	b PSMTXCopy
/* 80C60B58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C60B5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C60B60  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C60B64  4B 6E 59 4C */	b PSMTXCopy
/* 80C60B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C60B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60B70  7C 08 03 A6 */	mtlr r0
/* 80C60B74  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60B78  4E 80 00 20 */	blr 
