lbl_80B93F84:
/* 80B93F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93F88  7C 08 02 A6 */	mflr r0
/* 80B93F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B93F94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B93F98  41 82 00 1C */	beq lbl_80B93FB4
/* 80B93F9C  3C A0 80 BA */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B9B818@ha */
/* 80B93FA0  38 05 B8 18 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B9B818@l */
/* 80B93FA4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B93FA8  7C 80 07 35 */	extsh. r0, r4
/* 80B93FAC  40 81 00 08 */	ble lbl_80B93FB4
/* 80B93FB0  4B 73 AD 8D */	bl __dl__FPv
lbl_80B93FB4:
/* 80B93FB4  7F E3 FB 78 */	mr r3, r31
/* 80B93FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B93FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B93FC0  7C 08 03 A6 */	mtlr r0
/* 80B93FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93FC8  4E 80 00 20 */	blr 
