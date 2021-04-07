lbl_80321F84:
/* 80321F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321F88  7C 08 02 A6 */	mflr r0
/* 80321F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80321F94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80321F98  41 82 00 30 */	beq lbl_80321FC8
/* 80321F9C  3C 60 80 3D */	lis r3, __vt__13J3DTevBlock16@ha /* 0x803CE0E8@ha */
/* 80321FA0  38 03 E0 E8 */	addi r0, r3, __vt__13J3DTevBlock16@l /* 0x803CE0E8@l */
/* 80321FA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80321FA8  41 82 00 10 */	beq lbl_80321FB8
/* 80321FAC  3C 60 80 3D */	lis r3, __vt__11J3DTevBlock@ha /* 0x803CE958@ha */
/* 80321FB0  38 03 E9 58 */	addi r0, r3, __vt__11J3DTevBlock@l /* 0x803CE958@l */
/* 80321FB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80321FB8:
/* 80321FB8  7C 80 07 35 */	extsh. r0, r4
/* 80321FBC  40 81 00 0C */	ble lbl_80321FC8
/* 80321FC0  7F E3 FB 78 */	mr r3, r31
/* 80321FC4  4B FA CD 79 */	bl __dl__FPv
lbl_80321FC8:
/* 80321FC8  7F E3 FB 78 */	mr r3, r31
/* 80321FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80321FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321FD4  7C 08 03 A6 */	mtlr r0
/* 80321FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80321FDC  4E 80 00 20 */	blr 
