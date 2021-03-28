lbl_80C21E24:
/* 80C21E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21E28  7C 08 02 A6 */	mflr r0
/* 80C21E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C21E34  7C 7F 1B 78 */	mr r31, r3
/* 80C21E38  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C21E3C  4B 3E AF 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C21E40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C21E44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C21E48  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C21E4C  4B 3E A5 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C21E50  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C21E54  28 04 00 00 */	cmplwi r4, 0
/* 80C21E58  41 82 00 14 */	beq lbl_80C21E6C
/* 80C21E5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C21E60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C21E64  38 84 00 24 */	addi r4, r4, 0x24
/* 80C21E68  4B 72 46 48 */	b PSMTXCopy
lbl_80C21E6C:
/* 80C21E6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C21E70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C21E74  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80C21E78  38 84 00 24 */	addi r4, r4, 0x24
/* 80C21E7C  4B 72 46 34 */	b PSMTXCopy
/* 80C21E80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C21E84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C21E88  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C21E8C  4B 72 46 24 */	b PSMTXCopy
/* 80C21E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C21E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21E98  7C 08 03 A6 */	mtlr r0
/* 80C21E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21EA0  4E 80 00 20 */	blr 
