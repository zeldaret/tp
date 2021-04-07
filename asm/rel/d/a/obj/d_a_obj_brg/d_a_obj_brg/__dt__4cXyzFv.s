lbl_80BBCCFC:
/* 80BBCCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBCD00  7C 08 02 A6 */	mflr r0
/* 80BBCD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBCD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBCD0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BBCD10  41 82 00 10 */	beq lbl_80BBCD20
/* 80BBCD14  7C 80 07 35 */	extsh. r0, r4
/* 80BBCD18  40 81 00 08 */	ble lbl_80BBCD20
/* 80BBCD1C  4B 71 20 21 */	bl __dl__FPv
lbl_80BBCD20:
/* 80BBCD20  7F E3 FB 78 */	mr r3, r31
/* 80BBCD24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBCD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBCD2C  7C 08 03 A6 */	mtlr r0
/* 80BBCD30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBCD34  4E 80 00 20 */	blr 
