lbl_80D2C7B0:
/* 80D2C7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C7B4  7C 08 02 A6 */	mflr r0
/* 80D2C7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2C7C0  7C 7F 1B 78 */	mr r31, r3
/* 80D2C7C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2C7C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2C7CC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D2C7D0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D2C7D4  C0 1F 0A E0 */	lfs f0, 0xae0(r31)
/* 80D2C7D8  EC 42 00 2A */	fadds f2, f2, f0
/* 80D2C7DC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D2C7E0  4B 61 A1 09 */	bl PSMTXTrans
/* 80D2C7E4  C0 3F 0B 24 */	lfs f1, 0xb24(r31)
/* 80D2C7E8  C0 5F 0B 28 */	lfs f2, 0xb28(r31)
/* 80D2C7EC  C0 7F 0B 2C */	lfs f3, 0xb2c(r31)
/* 80D2C7F0  4B 2E 05 AD */	bl transM__14mDoMtx_stack_cFfff
/* 80D2C7F4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80D2C7F8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D2C7FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D2C800  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D2C804  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D2C808  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D2C80C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D2C810  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2C814  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2C818  80 9F 05 8C */	lwz r4, 0x58c(r31)
/* 80D2C81C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D2C820  4B 61 9C 91 */	bl PSMTXCopy
/* 80D2C824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2C828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C82C  7C 08 03 A6 */	mtlr r0
/* 80D2C830  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C834  4E 80 00 20 */	blr 
