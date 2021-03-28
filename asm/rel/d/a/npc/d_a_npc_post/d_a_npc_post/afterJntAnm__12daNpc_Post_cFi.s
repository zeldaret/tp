lbl_80AA99F0:
/* 80AA99F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA99F4  7C 08 02 A6 */	mflr r0
/* 80AA99F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA99FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA9A00  7C 7F 1B 78 */	mr r31, r3
/* 80AA9A04  2C 04 00 01 */	cmpwi r4, 1
/* 80AA9A08  40 82 00 30 */	bne lbl_80AA9A38
/* 80AA9A0C  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80AA9A10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AA9A14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AA9A18  4B 56 2A 1C */	b mDoMtx_YrotM__FPA4_fs
/* 80AA9A1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AA9A20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AA9A24  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80AA9A28  7C 00 00 D0 */	neg r0, r0
/* 80AA9A2C  7C 04 07 34 */	extsh r4, r0
/* 80AA9A30  4B 56 2A 9C */	b mDoMtx_ZrotM__FPA4_fs
/* 80AA9A34  48 00 00 34 */	b lbl_80AA9A68
lbl_80AA9A38:
/* 80AA9A38  2C 04 00 04 */	cmpwi r4, 4
/* 80AA9A3C  40 82 00 2C */	bne lbl_80AA9A68
/* 80AA9A40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AA9A44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AA9A48  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80AA9A4C  7C 00 00 D0 */	neg r0, r0
/* 80AA9A50  7C 04 07 34 */	extsh r4, r0
/* 80AA9A54  4B 56 29 E0 */	b mDoMtx_YrotM__FPA4_fs
/* 80AA9A58  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80AA9A5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AA9A60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AA9A64  4B 56 2A 68 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80AA9A68:
/* 80AA9A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA9A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA9A70  7C 08 03 A6 */	mtlr r0
/* 80AA9A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9A78  4E 80 00 20 */	blr 
