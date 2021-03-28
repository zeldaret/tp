lbl_80A2C484:
/* 80A2C484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2C488  7C 08 02 A6 */	mflr r0
/* 80A2C48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2C490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2C494  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2C498  7C 7E 1B 78 */	mr r30, r3
/* 80A2C49C  3B E0 00 00 */	li r31, 0
/* 80A2C4A0  88 03 0E 2C */	lbz r0, 0xe2c(r3)
/* 80A2C4A4  28 00 00 00 */	cmplwi r0, 0
/* 80A2C4A8  40 82 00 1C */	bne lbl_80A2C4C4
/* 80A2C4AC  4B 60 35 A8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A2C4B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A2C4B4  40 82 00 14 */	bne lbl_80A2C4C8
/* 80A2C4B8  88 1E 0A BD */	lbz r0, 0xabd(r30)
/* 80A2C4BC  28 00 00 00 */	cmplwi r0, 0
/* 80A2C4C0  41 82 00 08 */	beq lbl_80A2C4C8
lbl_80A2C4C4:
/* 80A2C4C4  3B E0 00 01 */	li r31, 1
lbl_80A2C4C8:
/* 80A2C4C8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A2C4CC  40 82 00 10 */	bne lbl_80A2C4DC
/* 80A2C4D0  88 1E 0E 32 */	lbz r0, 0xe32(r30)
/* 80A2C4D4  28 00 00 00 */	cmplwi r0, 0
/* 80A2C4D8  41 82 00 0C */	beq lbl_80A2C4E4
lbl_80A2C4DC:
/* 80A2C4DC  38 00 00 00 */	li r0, 0
/* 80A2C4E0  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A2C4E4:
/* 80A2C4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2C4E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2C4EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2C4F0  7C 08 03 A6 */	mtlr r0
/* 80A2C4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2C4F8  4E 80 00 20 */	blr 
