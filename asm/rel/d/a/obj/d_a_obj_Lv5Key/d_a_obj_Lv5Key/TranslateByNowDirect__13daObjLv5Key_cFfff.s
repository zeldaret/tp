lbl_80B9C3B0:
/* 80B9C3B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9C3B4  7C 08 02 A6 */	mflr r0
/* 80B9C3B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9C3BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9C3C0  7C 7F 1B 78 */	mr r31, r3
/* 80B9C3C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B9C3C8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B9C3CC  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80B9C3D0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B9C3D4  4B 47 0B 39 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B9C3D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B9C3DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B9C3E0  38 81 00 08 */	addi r4, r1, 8
/* 80B9C3E4  7C 85 23 78 */	mr r5, r4
/* 80B9C3E8  4B 7A A9 85 */	bl PSMTXMultVec
/* 80B9C3EC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B9C3F0  38 81 00 08 */	addi r4, r1, 8
/* 80B9C3F4  7C 65 1B 78 */	mr r5, r3
/* 80B9C3F8  4B 7A AC 99 */	bl PSVECAdd
/* 80B9C3FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9C400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9C404  7C 08 03 A6 */	mtlr r0
/* 80B9C408  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9C40C  4E 80 00 20 */	blr 
