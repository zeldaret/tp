lbl_80CECFE8:
/* 80CECFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECFEC  7C 08 02 A6 */	mflr r0
/* 80CECFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECFF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CECFF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CECFFC  41 82 00 10 */	beq lbl_80CED00C
/* 80CED000  7C 80 07 35 */	extsh. r0, r4
/* 80CED004  40 81 00 08 */	ble lbl_80CED00C
/* 80CED008  4B 5E 1D 34 */	b __dl__FPv
lbl_80CED00C:
/* 80CED00C  7F E3 FB 78 */	mr r3, r31
/* 80CED010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED018  7C 08 03 A6 */	mtlr r0
/* 80CED01C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED020  4E 80 00 20 */	blr 
