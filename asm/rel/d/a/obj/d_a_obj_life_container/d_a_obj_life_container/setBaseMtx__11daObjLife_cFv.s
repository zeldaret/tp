lbl_804CCC04:
/* 804CCC04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CCC08  7C 08 02 A6 */	mflr r0
/* 804CCC0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCC10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CCC14  7C 7F 1B 78 */	mr r31, r3
/* 804CCC18  80 63 05 74 */	lwz r3, 0x574(r3)
/* 804CCC1C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804CCC20  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804CCC24  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 804CCC28  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804CCC2C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 804CCC30  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804CCC34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804CCC38  4B B4 01 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804CCC3C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804CCC40  4B B4 03 05 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804CCC44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CCC48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CCC4C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804CCC50  38 84 00 24 */	addi r4, r4, 0x24
/* 804CCC54  4B E7 98 5D */	bl PSMTXCopy
/* 804CCC58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CCC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CCC60  7C 08 03 A6 */	mtlr r0
/* 804CCC64  38 21 00 10 */	addi r1, r1, 0x10
/* 804CCC68  4E 80 00 20 */	blr 
