lbl_800EDE8C:
/* 800EDE8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EDE90  7C 08 02 A6 */	mflr r0
/* 800EDE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EDE98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EDE9C  93 C1 00 08 */	stw r30, 8(r1)
/* 800EDEA0  7C 7E 1B 78 */	mr r30, r3
/* 800EDEA4  3B E0 00 00 */	li r31, 0
/* 800EDEA8  38 80 00 51 */	li r4, 0x51
/* 800EDEAC  4B FB E6 AD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EDEB0  2C 03 00 00 */	cmpwi r3, 0
/* 800EDEB4  40 82 00 18 */	bne lbl_800EDECC
/* 800EDEB8  7F C3 F3 78 */	mr r3, r30
/* 800EDEBC  38 80 00 52 */	li r4, 0x52
/* 800EDEC0  4B FB E6 99 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EDEC4  2C 03 00 00 */	cmpwi r3, 0
/* 800EDEC8  41 82 00 08 */	beq lbl_800EDED0
lbl_800EDECC:
/* 800EDECC  3B E0 00 01 */	li r31, 1
lbl_800EDED0:
/* 800EDED0  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800EDED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EDED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EDEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EDEE0  7C 08 03 A6 */	mtlr r0
/* 800EDEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800EDEE8  4E 80 00 20 */	blr 
