lbl_80C3359C:
/* 80C3359C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C335A0  7C 08 02 A6 */	mflr r0
/* 80C335A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C335A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C335AC  7C 7F 1B 78 */	mr r31, r3
/* 80C335B0  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80C335B4  90 01 00 08 */	stw r0, 8(r1)
/* 80C335B8  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80C335BC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80C335C0  A8 61 00 0A */	lha r3, 0xa(r1)
/* 80C335C4  A8 1F 0B 74 */	lha r0, 0xb74(r31)
/* 80C335C8  7C 03 02 14 */	add r0, r3, r0
/* 80C335CC  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C335D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C335D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C335D8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C335DC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C335E0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C335E4  4B 71 33 05 */	bl PSMTXTrans
/* 80C335E8  38 61 00 08 */	addi r3, r1, 8
/* 80C335EC  4B 3D 99 59 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C335F0  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80C335F4  4B 3D 98 7D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C335F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C335FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C33600  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C33604  38 84 00 24 */	addi r4, r4, 0x24
/* 80C33608  4B 71 2E A9 */	bl PSMTXCopy
/* 80C3360C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C33610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C33614  7C 08 03 A6 */	mtlr r0
/* 80C33618  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3361C  4E 80 00 20 */	blr 
