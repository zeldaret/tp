lbl_80AF5A68:
/* 80AF5A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5A6C  7C 08 02 A6 */	mflr r0
/* 80AF5A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF5A78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF5A7C  41 82 00 1C */	beq lbl_80AF5A98
/* 80AF5A80  3C A0 80 AF */	lis r5, __vt__22daNpc_SoldierB_Param_c@ha /* 0x80AF5E18@ha */
/* 80AF5A84  38 05 5E 18 */	addi r0, r5, __vt__22daNpc_SoldierB_Param_c@l /* 0x80AF5E18@l */
/* 80AF5A88  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF5A8C  7C 80 07 35 */	extsh. r0, r4
/* 80AF5A90  40 81 00 08 */	ble lbl_80AF5A98
/* 80AF5A94  4B 7D 92 A9 */	bl __dl__FPv
lbl_80AF5A98:
/* 80AF5A98  7F E3 FB 78 */	mr r3, r31
/* 80AF5A9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF5AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5AA4  7C 08 03 A6 */	mtlr r0
/* 80AF5AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5AAC  4E 80 00 20 */	blr 
