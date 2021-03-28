lbl_806E5E30:
/* 806E5E30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E5E34  7C 08 02 A6 */	mflr r0
/* 806E5E38  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E5E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 806E5E40  4B C7 C3 98 */	b _savegpr_28
/* 806E5E44  7C 7C 1B 78 */	mr r28, r3
/* 806E5E48  7C BD 2B 78 */	mr r29, r5
/* 806E5E4C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 806E5E50  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806E5E54  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806E5E58  1F DF 00 30 */	mulli r30, r31, 0x30
/* 806E5E5C  7C 60 F2 14 */	add r3, r0, r30
/* 806E5E60  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806E5E64  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806E5E68  4B C6 06 48 */	b PSMTXCopy
/* 806E5E6C  2C 1F 00 08 */	cmpwi r31, 8
/* 806E5E70  41 82 00 08 */	beq lbl_806E5E78
/* 806E5E74  48 00 00 14 */	b lbl_806E5E88
lbl_806E5E78:
/* 806E5E78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E5E7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E5E80  A8 9C 07 AA */	lha r4, 0x7aa(r28)
/* 806E5E84  4B 92 65 18 */	b mDoMtx_XrotM__FPA4_fs
lbl_806E5E88:
/* 806E5E88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E5E8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E5E90  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 806E5E94  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806E5E98  7C 80 F2 14 */	add r4, r0, r30
/* 806E5E9C  4B C6 06 14 */	b PSMTXCopy
/* 806E5EA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E5EA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E5EA8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806E5EAC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806E5EB0  4B C6 06 00 */	b PSMTXCopy
/* 806E5EB4  38 60 00 01 */	li r3, 1
/* 806E5EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 806E5EBC  4B C7 C3 68 */	b _restgpr_28
/* 806E5EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E5EC4  7C 08 03 A6 */	mtlr r0
/* 806E5EC8  38 21 00 20 */	addi r1, r1, 0x20
/* 806E5ECC  4E 80 00 20 */	blr 
