lbl_8054C268:
/* 8054C268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054C26C  7C 08 02 A6 */	mflr r0
/* 8054C270  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054C274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054C278  93 C1 00 08 */	stw r30, 8(r1)
/* 8054C27C  7C 7E 1B 78 */	mr r30, r3
/* 8054C280  3B E0 00 00 */	li r31, 0
/* 8054C284  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 8054C288  28 00 00 00 */	cmplwi r0, 0
/* 8054C28C  40 82 00 1C */	bne lbl_8054C2A8
/* 8054C290  4B AE 37 C4 */	b dComIfGs_wolfeye_effect_check__Fv
/* 8054C294  2C 03 00 00 */	cmpwi r3, 0
/* 8054C298  40 82 00 14 */	bne lbl_8054C2AC
/* 8054C29C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8054C2A0  28 00 00 00 */	cmplwi r0, 0
/* 8054C2A4  41 82 00 08 */	beq lbl_8054C2AC
lbl_8054C2A8:
/* 8054C2A8  3B E0 00 01 */	li r31, 1
lbl_8054C2AC:
/* 8054C2AC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8054C2B0  40 82 00 10 */	bne lbl_8054C2C0
/* 8054C2B4  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 8054C2B8  28 00 00 00 */	cmplwi r0, 0
/* 8054C2BC  41 82 00 0C */	beq lbl_8054C2C8
lbl_8054C2C0:
/* 8054C2C0  38 00 00 00 */	li r0, 0
/* 8054C2C4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8054C2C8:
/* 8054C2C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054C2CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054C2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054C2D4  7C 08 03 A6 */	mtlr r0
/* 8054C2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054C2DC  4E 80 00 20 */	blr 
