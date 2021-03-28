lbl_805AA7B8:
/* 805AA7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA7BC  7C 08 02 A6 */	mflr r0
/* 805AA7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA7C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AA7C8  7C 7F 1B 78 */	mr r31, r3
/* 805AA7CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AA7D0  4B A6 25 94 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805AA7D4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805AA7D8  4B A6 27 6C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805AA7DC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805AA7E0  80 83 00 04 */	lwz r4, 4(r3)
/* 805AA7E4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805AA7E8  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 805AA7EC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805AA7F0  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 805AA7F4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 805AA7F8  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 805AA7FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805AA800  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805AA804  38 84 00 24 */	addi r4, r4, 0x24
/* 805AA808  4B D9 BC A8 */	b PSMTXCopy
/* 805AA80C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805AA810  4B A6 69 DC */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805AA814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AA818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA81C  7C 08 03 A6 */	mtlr r0
/* 805AA820  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA824  4E 80 00 20 */	blr 
