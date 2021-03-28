lbl_80A24E44:
/* 80A24E44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A24E48  7C 08 02 A6 */	mflr r0
/* 80A24E4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A24E50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A24E54  7C BF 2B 78 */	mr r31, r5
/* 80A24E58  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A24E5C  D0 05 00 00 */	stfs f0, 0(r5)
/* 80A24E60  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A24E64  D0 05 00 04 */	stfs f0, 4(r5)
/* 80A24E68  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A24E6C  D0 05 00 08 */	stfs f0, 8(r5)
/* 80A24E70  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80A24E74  90 01 00 08 */	stw r0, 8(r1)
/* 80A24E78  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80A24E7C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A24E80  38 61 00 08 */	addi r3, r1, 8
/* 80A24E84  4B 5E 80 88 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80A24E88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A24E8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A24E90  7F E4 FB 78 */	mr r4, r31
/* 80A24E94  7F E5 FB 78 */	mr r5, r31
/* 80A24E98  4B 92 1E D4 */	b PSMTXMultVec
/* 80A24E9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A24EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A24EA4  7C 08 03 A6 */	mtlr r0
/* 80A24EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A24EAC  4E 80 00 20 */	blr 
