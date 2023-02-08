lbl_8067CB68:
/* 8067CB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067CB6C  7C 08 02 A6 */	mflr r0
/* 8067CB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067CB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067CB78  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067CB7C  41 82 00 10 */	beq lbl_8067CB8C
/* 8067CB80  7C 80 07 35 */	extsh. r0, r4
/* 8067CB84  40 81 00 08 */	ble lbl_8067CB8C
/* 8067CB88  4B C5 21 B5 */	bl __dl__FPv
lbl_8067CB8C:
/* 8067CB8C  7F E3 FB 78 */	mr r3, r31
/* 8067CB90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067CB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067CB98  7C 08 03 A6 */	mtlr r0
/* 8067CB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8067CBA0  4E 80 00 20 */	blr 
