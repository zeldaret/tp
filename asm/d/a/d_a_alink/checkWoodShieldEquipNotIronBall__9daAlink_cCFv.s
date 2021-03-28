lbl_800DCA2C:
/* 800DCA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DCA30  7C 08 02 A6 */	mflr r0
/* 800DCA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DCA38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DCA3C  93 C1 00 08 */	stw r30, 8(r1)
/* 800DCA40  7C 7E 1B 78 */	mr r30, r3
/* 800DCA44  3B E0 00 00 */	li r31, 0
/* 800DCA48  48 08 29 7D */	bl checkWoodShieldEquip__9daPy_py_cFv
/* 800DCA4C  2C 03 00 00 */	cmpwi r3, 0
/* 800DCA50  41 82 00 14 */	beq lbl_800DCA64
/* 800DCA54  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800DCA58  28 00 00 42 */	cmplwi r0, 0x42
/* 800DCA5C  41 82 00 08 */	beq lbl_800DCA64
/* 800DCA60  3B E0 00 01 */	li r31, 1
lbl_800DCA64:
/* 800DCA64  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DCA68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DCA6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DCA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DCA74  7C 08 03 A6 */	mtlr r0
/* 800DCA78  38 21 00 10 */	addi r1, r1, 0x10
/* 800DCA7C  4E 80 00 20 */	blr 
