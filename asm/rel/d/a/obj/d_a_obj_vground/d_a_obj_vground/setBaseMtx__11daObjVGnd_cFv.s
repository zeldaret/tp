lbl_80D21448:
/* 80D21448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2144C  7C 08 02 A6 */	mflr r0
/* 80D21450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21458  7C 7F 1B 78 */	mr r31, r3
/* 80D2145C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D21460  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D21464  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D21468  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D2146C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D21470  4B 62 54 78 */	b PSMTXTrans
/* 80D21474  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D21478  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2147C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D21480  4B 2E AF B4 */	b mDoMtx_YrotM__FPA4_fs
/* 80D21484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D21488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2148C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D21490  38 84 00 24 */	addi r4, r4, 0x24
/* 80D21494  4B 62 50 1C */	b PSMTXCopy
/* 80D21498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2149C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D214A0  7C 08 03 A6 */	mtlr r0
/* 80D214A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D214A8  4E 80 00 20 */	blr 
