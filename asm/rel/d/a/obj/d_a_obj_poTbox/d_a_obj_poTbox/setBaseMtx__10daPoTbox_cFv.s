lbl_80CB42C8:
/* 80CB42C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB42CC  7C 08 02 A6 */	mflr r0
/* 80CB42D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB42D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB42D8  7C 7F 1B 78 */	mr r31, r3
/* 80CB42DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB42E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB42E4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB42E8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB42EC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB42F0  4B 69 25 F9 */	bl PSMTXTrans
/* 80CB42F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB42F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB42FC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CB4300  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CB4304  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CB4308  4B 35 7F 99 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CB430C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CB4310  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB4314  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB4318  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB431C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB4320  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB4324  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CB4328  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB432C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB4330  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CB4334  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB4338  4B 69 21 79 */	bl PSMTXCopy
/* 80CB433C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CB4340  28 03 00 00 */	cmplwi r3, 0
/* 80CB4344  41 82 00 30 */	beq lbl_80CB4374
/* 80CB4348  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB434C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB4350  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB4354  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB4358  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB435C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CB4360  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB4364  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB4368  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CB436C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB4370  4B 69 21 41 */	bl PSMTXCopy
lbl_80CB4374:
/* 80CB4374  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CB4378  28 03 00 00 */	cmplwi r3, 0
/* 80CB437C  41 82 00 30 */	beq lbl_80CB43AC
/* 80CB4380  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80CB4384  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CB4388  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80CB438C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB4390  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80CB4394  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CB4398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB439C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB43A0  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80CB43A4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB43A8  4B 69 21 09 */	bl PSMTXCopy
lbl_80CB43AC:
/* 80CB43AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB43B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB43B4  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CB43B8  4B 69 20 F9 */	bl PSMTXCopy
/* 80CB43BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB43C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB43C4  7C 08 03 A6 */	mtlr r0
/* 80CB43C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB43CC  4E 80 00 20 */	blr 
