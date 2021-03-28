lbl_80670F08:
/* 80670F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670F0C  7C 08 02 A6 */	mflr r0
/* 80670F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80670F18  7C 7F 1B 78 */	mr r31, r3
/* 80670F1C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80670F20  4B 99 BE 44 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80670F24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80670F28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80670F2C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80670F30  4B 99 B5 04 */	b mDoMtx_YrotM__FPA4_fs
/* 80670F34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80670F38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80670F3C  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80670F40  38 84 00 24 */	addi r4, r4, 0x24
/* 80670F44  4B CD 55 6C */	b PSMTXCopy
/* 80670F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80670F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670F50  7C 08 03 A6 */	mtlr r0
/* 80670F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80670F58  4E 80 00 20 */	blr 
