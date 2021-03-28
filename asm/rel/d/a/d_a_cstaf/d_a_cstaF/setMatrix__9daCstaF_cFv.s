lbl_804DE5F0:
/* 804DE5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE5F4  7C 08 02 A6 */	mflr r0
/* 804DE5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE5FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE600  7C 7F 1B 78 */	mr r31, r3
/* 804DE604  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804DE608  4B B2 E7 5C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804DE60C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804DE610  4B B2 E9 34 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804DE614  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804DE618  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804DE61C  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 804DE620  38 84 00 24 */	addi r4, r4, 0x24
/* 804DE624  4B E6 7E 8C */	b PSMTXCopy
/* 804DE628  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 804DE62C  4B B3 2B C0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 804DE630  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804DE634  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804DE638  3C 60 80 4E */	lis r3, fieldLocalBallPos@ha
/* 804DE63C  38 83 F9 3C */	addi r4, r3, fieldLocalBallPos@l
/* 804DE640  C0 04 00 04 */	lfs f0, 4(r4)
/* 804DE644  EC 21 00 2A */	fadds f1, f1, f0
/* 804DE648  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804DE64C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804DE650  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 804DE654  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 804DE658  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 804DE65C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804DE660  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804DE664  38 BF 0B 2C */	addi r5, r31, 0xb2c
/* 804DE668  4B E6 87 04 */	b PSMTXMultVec
/* 804DE66C  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 804DE670  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804DE674  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 804DE678  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804DE67C  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 804DE680  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804DE684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE68C  7C 08 03 A6 */	mtlr r0
/* 804DE690  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE694  4E 80 00 20 */	blr 
