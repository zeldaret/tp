lbl_800F3F38:
/* 800F3F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F3F3C  7C 08 02 A6 */	mflr r0
/* 800F3F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F3F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F3F48  93 C1 00 08 */	stw r30, 8(r1)
/* 800F3F4C  7C 7E 1B 78 */	mr r30, r3
/* 800F3F50  3B E0 00 00 */	li r31, 0
/* 800F3F54  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800F3F58  28 00 01 05 */	cmplwi r0, 0x105
/* 800F3F5C  40 82 00 4C */	bne lbl_800F3FA8
/* 800F3F60  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800F3F64  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800F3F68  7D 89 03 A6 */	mtctr r12
/* 800F3F6C  4E 80 04 21 */	bctrl 
/* 800F3F70  28 03 00 00 */	cmplwi r3, 0
/* 800F3F74  41 82 00 34 */	beq lbl_800F3FA8
/* 800F3F78  7F C3 F3 78 */	mr r3, r30
/* 800F3F7C  4B FC 53 C5 */	bl checkEquipAnime__9daAlink_cCFv
/* 800F3F80  2C 03 00 00 */	cmpwi r3, 0
/* 800F3F84  40 82 00 20 */	bne lbl_800F3FA4
/* 800F3F88  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800F3F8C  28 00 00 92 */	cmplwi r0, 0x92
/* 800F3F90  41 82 00 14 */	beq lbl_800F3FA4
/* 800F3F94  28 00 00 93 */	cmplwi r0, 0x93
/* 800F3F98  41 82 00 0C */	beq lbl_800F3FA4
/* 800F3F9C  28 00 00 94 */	cmplwi r0, 0x94
/* 800F3FA0  40 82 00 08 */	bne lbl_800F3FA8
lbl_800F3FA4:
/* 800F3FA4  3B E0 00 01 */	li r31, 1
lbl_800F3FA8:
/* 800F3FA8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800F3FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F3FB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F3FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F3FB8  7C 08 03 A6 */	mtlr r0
/* 800F3FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F3FC0  4E 80 00 20 */	blr 
