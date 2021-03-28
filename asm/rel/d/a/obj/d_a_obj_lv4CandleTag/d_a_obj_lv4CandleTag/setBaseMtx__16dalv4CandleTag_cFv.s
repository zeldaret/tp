lbl_80C5D4B8:
/* 80C5D4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D4BC  7C 08 02 A6 */	mflr r0
/* 80C5D4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D4C4  7C 64 1B 78 */	mr r4, r3
/* 80C5D4C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5D4CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5D4D0  C0 24 04 D0 */	lfs f1, 0x4d0(r4)
/* 80C5D4D4  C0 44 04 D4 */	lfs f2, 0x4d4(r4)
/* 80C5D4D8  C0 64 04 D8 */	lfs f3, 0x4d8(r4)
/* 80C5D4DC  4B 6E 94 0C */	b PSMTXTrans
/* 80C5D4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D4E4  7C 08 03 A6 */	mtlr r0
/* 80C5D4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D4EC  4E 80 00 20 */	blr 
