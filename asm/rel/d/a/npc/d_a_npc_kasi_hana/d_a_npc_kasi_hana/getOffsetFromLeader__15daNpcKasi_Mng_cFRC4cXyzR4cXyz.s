lbl_80A1B35C:
/* 80A1B35C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1B360  7C 08 02 A6 */	mflr r0
/* 80A1B364  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1B368  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1B36C  7C BF 2B 78 */	mr r31, r5
/* 80A1B370  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A1B374  D0 05 00 00 */	stfs f0, 0(r5)
/* 80A1B378  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A1B37C  D0 05 00 04 */	stfs f0, 4(r5)
/* 80A1B380  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A1B384  D0 05 00 08 */	stfs f0, 8(r5)
/* 80A1B388  4B 73 53 64 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B38C  28 03 00 00 */	cmplwi r3, 0
/* 80A1B390  41 82 00 30 */	beq lbl_80A1B3C0
/* 80A1B394  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80A1B398  90 01 00 08 */	stw r0, 8(r1)
/* 80A1B39C  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80A1B3A0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A1B3A4  38 61 00 08 */	addi r3, r1, 8
/* 80A1B3A8  4B 5F 1B 64 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80A1B3AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A1B3B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A1B3B4  7F E4 FB 78 */	mr r4, r31
/* 80A1B3B8  7F E5 FB 78 */	mr r5, r31
/* 80A1B3BC  4B 92 B9 B0 */	b PSMTXMultVec
lbl_80A1B3C0:
/* 80A1B3C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1B3C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1B3C8  7C 08 03 A6 */	mtlr r0
/* 80A1B3CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1B3D0  4E 80 00 20 */	blr 
