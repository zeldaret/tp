lbl_80B77E84:
/* 80B77E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B77E88  7C 08 02 A6 */	mflr r0
/* 80B77E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B77E94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B77E98  41 82 00 1C */	beq lbl_80B77EB4
/* 80B77E9C  3C A0 80 B8 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B78320@ha */
/* 80B77EA0  38 05 83 20 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B78320@l */
/* 80B77EA4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B77EA8  7C 80 07 35 */	extsh. r0, r4
/* 80B77EAC  40 81 00 08 */	ble lbl_80B77EB4
/* 80B77EB0  4B 75 6E 8D */	bl __dl__FPv
lbl_80B77EB4:
/* 80B77EB4  7F E3 FB 78 */	mr r3, r31
/* 80B77EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B77EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B77EC0  7C 08 03 A6 */	mtlr r0
/* 80B77EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B77EC8  4E 80 00 20 */	blr 
