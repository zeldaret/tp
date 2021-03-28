lbl_80AF533C:
/* 80AF533C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5340  7C 08 02 A6 */	mflr r0
/* 80AF5344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF534C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF5350  41 82 00 10 */	beq lbl_80AF5360
/* 80AF5354  7C 80 07 35 */	extsh. r0, r4
/* 80AF5358  40 81 00 08 */	ble lbl_80AF5360
/* 80AF535C  4B 7D 99 E0 */	b __dl__FPv
lbl_80AF5360:
/* 80AF5360  7F E3 FB 78 */	mr r3, r31
/* 80AF5364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF5368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF536C  7C 08 03 A6 */	mtlr r0
/* 80AF5370  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5374  4E 80 00 20 */	blr 
