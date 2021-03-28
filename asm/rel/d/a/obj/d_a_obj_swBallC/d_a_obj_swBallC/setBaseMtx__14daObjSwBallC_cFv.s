lbl_80CF5CF4:
/* 80CF5CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5CF8  7C 08 02 A6 */	mflr r0
/* 80CF5CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF5D04  7C 7F 1B 78 */	mr r31, r3
/* 80CF5D08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF5D0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF5D10  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CF5D14  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CF5D18  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CF5D1C  4B 65 0B CC */	b PSMTXTrans
/* 80CF5D20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF5D24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF5D28  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CF5D2C  4B 31 67 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80CF5D30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF5D34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF5D38  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CF5D3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF5D40  4B 65 07 70 */	b PSMTXCopy
/* 80CF5D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF5D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5D4C  7C 08 03 A6 */	mtlr r0
/* 80CF5D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5D54  4E 80 00 20 */	blr 
