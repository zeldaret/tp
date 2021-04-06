lbl_80B2BE90:
/* 80B2BE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BE94  7C 08 02 A6 */	mflr r0
/* 80B2BE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2BEA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2BEA4  41 82 00 10 */	beq lbl_80B2BEB4
/* 80B2BEA8  7C 80 07 35 */	extsh. r0, r4
/* 80B2BEAC  40 81 00 08 */	ble lbl_80B2BEB4
/* 80B2BEB0  4B 7A 2E 8D */	bl __dl__FPv
lbl_80B2BEB4:
/* 80B2BEB4  7F E3 FB 78 */	mr r3, r31
/* 80B2BEB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2BEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BEC0  7C 08 03 A6 */	mtlr r0
/* 80B2BEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BEC8  4E 80 00 20 */	blr 
