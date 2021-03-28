lbl_80CB2A0C:
/* 80CB2A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2A10  7C 08 02 A6 */	mflr r0
/* 80CB2A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2A1C  7C 7F 1B 78 */	mr r31, r3
/* 80CB2A20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB2A24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB2A28  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB2A2C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB2A30  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB2A34  4B 69 3E B4 */	b PSMTXTrans
/* 80CB2A38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB2A3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB2A40  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CB2A44  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CB2A48  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CB2A4C  4B 35 98 54 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CB2A50  C0 3F 05 F8 */	lfs f1, 0x5f8(r31)
/* 80CB2A54  C0 5F 05 FC */	lfs f2, 0x5fc(r31)
/* 80CB2A58  C0 7F 06 00 */	lfs f3, 0x600(r31)
/* 80CB2A5C  4B 35 A3 40 */	b transM__14mDoMtx_stack_cFfff
/* 80CB2A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2A68  7C 08 03 A6 */	mtlr r0
/* 80CB2A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2A70  4E 80 00 20 */	blr 
