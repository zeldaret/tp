lbl_807E288C:
/* 807E288C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2890  7C 08 02 A6 */	mflr r0
/* 807E2894  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E2898  7C 64 1B 78 */	mr r4, r3
/* 807E289C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807E28A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807E28A4  4B 82 9B 38 */	b mDoMtx_YrotS__FPA4_fs
/* 807E28A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E28AC  7C 08 03 A6 */	mtlr r0
/* 807E28B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807E28B4  4E 80 00 20 */	blr 
