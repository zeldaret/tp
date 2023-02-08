lbl_80A1F318:
/* 80A1F318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1F31C  7C 08 02 A6 */	mflr r0
/* 80A1F320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1F324  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1F328  7C BF 2B 78 */	mr r31, r5
/* 80A1F32C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A1F330  D0 05 00 00 */	stfs f0, 0(r5)
/* 80A1F334  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A1F338  D0 05 00 04 */	stfs f0, 4(r5)
/* 80A1F33C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A1F340  D0 05 00 08 */	stfs f0, 8(r5)
/* 80A1F344  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80A1F348  90 01 00 08 */	stw r0, 8(r1)
/* 80A1F34C  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80A1F350  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A1F354  38 61 00 08 */	addi r3, r1, 8
/* 80A1F358  4B 5E DB B5 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80A1F35C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A1F360  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1F364  7F E4 FB 78 */	mr r4, r31
/* 80A1F368  7F E5 FB 78 */	mr r5, r31
/* 80A1F36C  4B 92 7A 01 */	bl PSMTXMultVec
/* 80A1F370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1F374  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1F378  7C 08 03 A6 */	mtlr r0
/* 80A1F37C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1F380  4E 80 00 20 */	blr 
