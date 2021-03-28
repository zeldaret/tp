lbl_80BA6F14:
/* 80BA6F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6F18  7C 08 02 A6 */	mflr r0
/* 80BA6F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA6F24  7C 7F 1B 78 */	mr r31, r3
/* 80BA6F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6F30  3C 80 80 BA */	lis r4, lit_3663@ha
/* 80BA6F34  C0 24 7D 1C */	lfs f1, lit_3663@l(r4)
/* 80BA6F38  FC 40 08 90 */	fmr f2, f1
/* 80BA6F3C  FC 60 08 90 */	fmr f3, f1
/* 80BA6F40  4B 79 F9 A8 */	b PSMTXTrans
/* 80BA6F44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6F48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6F4C  38 80 00 00 */	li r4, 0
/* 80BA6F50  4B 46 54 E4 */	b mDoMtx_YrotM__FPA4_fs
/* 80BA6F54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6F58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6F5C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BA6F60  38 84 00 24 */	addi r4, r4, 0x24
/* 80BA6F64  4B 79 F5 4C */	b PSMTXCopy
/* 80BA6F68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6F6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6F70  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BA6F74  4B 79 F5 3C */	b PSMTXCopy
/* 80BA6F78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6F7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6F80  3C 80 80 BA */	lis r4, lit_3663@ha
/* 80BA6F84  C0 24 7D 1C */	lfs f1, lit_3663@l(r4)
/* 80BA6F88  C0 5F 05 E4 */	lfs f2, 0x5e4(r31)
/* 80BA6F8C  FC 60 08 90 */	fmr f3, f1
/* 80BA6F90  4B 79 F9 58 */	b PSMTXTrans
/* 80BA6F94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6F98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6F9C  38 80 00 00 */	li r4, 0
/* 80BA6FA0  4B 46 54 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80BA6FA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA6FA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA6FAC  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80BA6FB0  4B 79 F5 00 */	b PSMTXCopy
/* 80BA6FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA6FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6FBC  7C 08 03 A6 */	mtlr r0
/* 80BA6FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6FC4  4E 80 00 20 */	blr 
