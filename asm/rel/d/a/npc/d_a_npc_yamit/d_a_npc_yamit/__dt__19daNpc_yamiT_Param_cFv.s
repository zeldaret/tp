lbl_80B4CD38:
/* 80B4CD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4CD3C  7C 08 02 A6 */	mflr r0
/* 80B4CD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4CD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4CD48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4CD4C  41 82 00 1C */	beq lbl_80B4CD68
/* 80B4CD50  3C A0 80 B5 */	lis r5, __vt__19daNpc_yamiT_Param_c@ha
/* 80B4CD54  38 05 D1 E0 */	addi r0, r5, __vt__19daNpc_yamiT_Param_c@l
/* 80B4CD58  90 1F 00 00 */	stw r0, 0(r31)
/* 80B4CD5C  7C 80 07 35 */	extsh. r0, r4
/* 80B4CD60  40 81 00 08 */	ble lbl_80B4CD68
/* 80B4CD64  4B 78 1F D8 */	b __dl__FPv
lbl_80B4CD68:
/* 80B4CD68  7F E3 FB 78 */	mr r3, r31
/* 80B4CD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4CD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4CD74  7C 08 03 A6 */	mtlr r0
/* 80B4CD78  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4CD7C  4E 80 00 20 */	blr 
