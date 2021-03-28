lbl_80103F94:
/* 80103F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80103F98  7C 08 02 A6 */	mflr r0
/* 80103F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80103FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80103FA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80103FA8  7C 7E 1B 78 */	mr r30, r3
/* 80103FAC  3B E0 00 00 */	li r31, 0
/* 80103FB0  4B FF FF 75 */	bl checkSwimButtonMove__9daAlink_cFv
/* 80103FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80103FB8  40 82 00 10 */	bne lbl_80103FC8
/* 80103FBC  A8 1E 30 00 */	lha r0, 0x3000(r30)
/* 80103FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80103FC4  41 82 00 08 */	beq lbl_80103FCC
lbl_80103FC8:
/* 80103FC8  3B E0 00 01 */	li r31, 1
lbl_80103FCC:
/* 80103FCC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80103FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80103FD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80103FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80103FDC  7C 08 03 A6 */	mtlr r0
/* 80103FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80103FE4  4E 80 00 20 */	blr 
