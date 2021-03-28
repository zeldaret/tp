lbl_80459D3C:
/* 80459D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459D40  7C 08 02 A6 */	mflr r0
/* 80459D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80459D4C  7C 7F 1B 78 */	mr r31, r3
/* 80459D50  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80459D54  4B BB 30 10 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80459D58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80459D5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80459D60  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80459D64  4B BB 26 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 80459D68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80459D6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80459D70  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80459D74  4B EE C7 3C */	b PSMTXCopy
/* 80459D78  7F E3 FB 78 */	mr r3, r31
/* 80459D7C  48 00 00 19 */	bl setBaseMtx__9daBgObj_cFv
/* 80459D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80459D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459D88  7C 08 03 A6 */	mtlr r0
/* 80459D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80459D90  4E 80 00 20 */	blr 
