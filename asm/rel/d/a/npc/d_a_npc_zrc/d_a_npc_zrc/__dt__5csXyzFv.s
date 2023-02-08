lbl_80B92A78:
/* 80B92A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92A7C  7C 08 02 A6 */	mflr r0
/* 80B92A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B92A88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B92A8C  41 82 00 10 */	beq lbl_80B92A9C
/* 80B92A90  7C 80 07 35 */	extsh. r0, r4
/* 80B92A94  40 81 00 08 */	ble lbl_80B92A9C
/* 80B92A98  4B 73 C2 A5 */	bl __dl__FPv
lbl_80B92A9C:
/* 80B92A9C  7F E3 FB 78 */	mr r3, r31
/* 80B92AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B92AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92AA8  7C 08 03 A6 */	mtlr r0
/* 80B92AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92AB0  4E 80 00 20 */	blr 
