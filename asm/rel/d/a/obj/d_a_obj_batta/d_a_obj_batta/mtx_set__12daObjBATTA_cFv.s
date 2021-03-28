lbl_80BAC00C:
/* 80BAC00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC010  7C 08 02 A6 */	mflr r0
/* 80BAC014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC01C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BAC020  7C 7E 1B 78 */	mr r30, r3
/* 80BAC024  80 63 06 20 */	lwz r3, 0x620(r3)
/* 80BAC028  83 E3 00 04 */	lwz r31, 4(r3)
/* 80BAC02C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BAC030  4B 46 0D 34 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BAC034  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BAC038  4B 46 0F 0C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BAC03C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80BAC040  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80BAC044  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80BAC048  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80BAC04C  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80BAC050  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80BAC054  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAC058  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAC05C  38 9F 00 24 */	addi r4, r31, 0x24
/* 80BAC060  4B 79 A4 50 */	b PSMTXCopy
/* 80BAC064  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80BAC068  4B 46 51 84 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80BAC06C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC070  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BAC074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC078  7C 08 03 A6 */	mtlr r0
/* 80BAC07C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC080  4E 80 00 20 */	blr 
