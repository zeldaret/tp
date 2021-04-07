lbl_80B6BB88:
/* 80B6BB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6BB8C  7C 08 02 A6 */	mflr r0
/* 80B6BB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6BB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6BB98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6BB9C  41 82 00 1C */	beq lbl_80B6BBB8
/* 80B6BBA0  3C A0 80 B7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B6BFC0@ha */
/* 80B6BBA4  38 05 BF C0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B6BFC0@l */
/* 80B6BBA8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B6BBAC  7C 80 07 35 */	extsh. r0, r4
/* 80B6BBB0  40 81 00 08 */	ble lbl_80B6BBB8
/* 80B6BBB4  4B 76 31 89 */	bl __dl__FPv
lbl_80B6BBB8:
/* 80B6BBB8  7F E3 FB 78 */	mr r3, r31
/* 80B6BBBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6BBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6BBC4  7C 08 03 A6 */	mtlr r0
/* 80B6BBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6BBCC  4E 80 00 20 */	blr 
