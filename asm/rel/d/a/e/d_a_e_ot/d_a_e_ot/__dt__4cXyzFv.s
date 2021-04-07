lbl_8073CE58:
/* 8073CE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073CE5C  7C 08 02 A6 */	mflr r0
/* 8073CE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073CE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073CE68  7C 7F 1B 79 */	or. r31, r3, r3
/* 8073CE6C  41 82 00 10 */	beq lbl_8073CE7C
/* 8073CE70  7C 80 07 35 */	extsh. r0, r4
/* 8073CE74  40 81 00 08 */	ble lbl_8073CE7C
/* 8073CE78  4B B9 1E C5 */	bl __dl__FPv
lbl_8073CE7C:
/* 8073CE7C  7F E3 FB 78 */	mr r3, r31
/* 8073CE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073CE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073CE88  7C 08 03 A6 */	mtlr r0
/* 8073CE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8073CE90  4E 80 00 20 */	blr 
