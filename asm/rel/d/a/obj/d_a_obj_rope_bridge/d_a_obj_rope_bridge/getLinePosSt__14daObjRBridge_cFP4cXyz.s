lbl_80596768:
/* 80596768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059676C  7C 08 02 A6 */	mflr r0
/* 80596770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80596774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80596778  93 C1 00 08 */	stw r30, 8(r1)
/* 8059677C  7C 7E 1B 78 */	mr r30, r3
/* 80596780  7C 9F 23 78 */	mr r31, r4
/* 80596784  3C 60 80 59 */	lis r3, l_rope_offsetSt@ha
/* 80596788  C4 03 7E C0 */	lfsu f0, l_rope_offsetSt@l(r3)
/* 8059678C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80596790  C0 03 00 04 */	lfs f0, 4(r3)
/* 80596794  D0 04 00 04 */	stfs f0, 4(r4)
/* 80596798  C0 03 00 08 */	lfs f0, 8(r3)
/* 8059679C  D0 04 00 08 */	stfs f0, 8(r4)
/* 805967A0  38 7E 0B 0C */	addi r3, r30, 0xb0c
/* 805967A4  4B A7 65 C0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805967A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805967AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805967B0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 805967B4  4B A7 5C 80 */	b mDoMtx_YrotM__FPA4_fs
/* 805967B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805967BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805967C0  7F E4 FB 78 */	mr r4, r31
/* 805967C4  7F E5 FB 78 */	mr r5, r31
/* 805967C8  4B DB 05 A4 */	b PSMTXMultVec
/* 805967CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805967D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805967D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805967D8  7C 08 03 A6 */	mtlr r0
/* 805967DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805967E0  4E 80 00 20 */	blr 
