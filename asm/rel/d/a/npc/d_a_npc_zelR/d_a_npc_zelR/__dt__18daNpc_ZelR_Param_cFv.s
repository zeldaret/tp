lbl_80B71A74:
/* 80B71A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71A78  7C 08 02 A6 */	mflr r0
/* 80B71A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B71A84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B71A88  41 82 00 1C */	beq lbl_80B71AA4
/* 80B71A8C  3C A0 80 B7 */	lis r5, __vt__18daNpc_ZelR_Param_c@ha /* 0x80B71E98@ha */
/* 80B71A90  38 05 1E 98 */	addi r0, r5, __vt__18daNpc_ZelR_Param_c@l /* 0x80B71E98@l */
/* 80B71A94  90 1F 00 00 */	stw r0, 0(r31)
/* 80B71A98  7C 80 07 35 */	extsh. r0, r4
/* 80B71A9C  40 81 00 08 */	ble lbl_80B71AA4
/* 80B71AA0  4B 75 D2 9D */	bl __dl__FPv
lbl_80B71AA4:
/* 80B71AA4  7F E3 FB 78 */	mr r3, r31
/* 80B71AA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B71AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B71AB0  7C 08 03 A6 */	mtlr r0
/* 80B71AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B71AB8  4E 80 00 20 */	blr 
