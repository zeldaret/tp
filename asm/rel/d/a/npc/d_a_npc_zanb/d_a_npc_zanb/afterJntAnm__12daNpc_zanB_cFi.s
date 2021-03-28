lbl_80B69A3C:
/* 80B69A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B69A40  7C 08 02 A6 */	mflr r0
/* 80B69A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B69A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B69A4C  7C 7F 1B 78 */	mr r31, r3
/* 80B69A50  2C 04 00 01 */	cmpwi r4, 1
/* 80B69A54  40 82 00 30 */	bne lbl_80B69A84
/* 80B69A58  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B69A5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B69A60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B69A64  4B 4A 29 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 80B69A68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B69A6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B69A70  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B69A74  7C 00 00 D0 */	neg r0, r0
/* 80B69A78  7C 04 07 34 */	extsh r4, r0
/* 80B69A7C  4B 4A 2A 50 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B69A80  48 00 00 34 */	b lbl_80B69AB4
lbl_80B69A84:
/* 80B69A84  2C 04 00 03 */	cmpwi r4, 3
/* 80B69A88  40 82 00 2C */	bne lbl_80B69AB4
/* 80B69A8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B69A90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B69A94  A8 1F 0D 0C */	lha r0, 0xd0c(r31)
/* 80B69A98  7C 00 00 D0 */	neg r0, r0
/* 80B69A9C  7C 04 07 34 */	extsh r4, r0
/* 80B69AA0  4B 4A 29 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80B69AA4  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B69AA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B69AAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B69AB0  4B 4A 2A 1C */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B69AB4:
/* 80B69AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B69AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B69ABC  7C 08 03 A6 */	mtlr r0
/* 80B69AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B69AC4  4E 80 00 20 */	blr 
