lbl_80CB1AE4:
/* 80CB1AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1AE8  7C 08 02 A6 */	mflr r0
/* 80CB1AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1AF4  7C 7F 1B 78 */	mr r31, r3
/* 80CB1AF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB1AFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB1B00  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB1B04  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB1B08  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB1B0C  4B 69 4D DC */	b PSMTXTrans
/* 80CB1B10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB1B14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB1B18  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80CB1B1C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80CB1B20  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80CB1B24  4B 35 A7 7C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CB1B28  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80CB1B2C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB1B30  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB1B34  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB1B38  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB1B3C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB1B40  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CB1B44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB1B48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB1B4C  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80CB1B50  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB1B54  4B 69 49 5C */	b PSMTXCopy
/* 80CB1B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1B60  7C 08 03 A6 */	mtlr r0
/* 80CB1B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1B68  4E 80 00 20 */	blr 
