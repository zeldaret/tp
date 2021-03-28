lbl_80ACCE58:
/* 80ACCE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACCE5C  7C 08 02 A6 */	mflr r0
/* 80ACCE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACCE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACCE68  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACCE6C  7C 7E 1B 78 */	mr r30, r3
/* 80ACCE70  3B E0 00 00 */	li r31, 0
/* 80ACCE74  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80ACCE78  28 00 00 00 */	cmplwi r0, 0
/* 80ACCE7C  40 82 00 1C */	bne lbl_80ACCE98
/* 80ACCE80  4B 56 2B D4 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80ACCE84  2C 03 00 00 */	cmpwi r3, 0
/* 80ACCE88  40 82 00 14 */	bne lbl_80ACCE9C
/* 80ACCE8C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80ACCE90  28 00 00 00 */	cmplwi r0, 0
/* 80ACCE94  41 82 00 08 */	beq lbl_80ACCE9C
lbl_80ACCE98:
/* 80ACCE98  3B E0 00 01 */	li r31, 1
lbl_80ACCE9C:
/* 80ACCE9C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80ACCEA0  40 82 00 10 */	bne lbl_80ACCEB0
/* 80ACCEA4  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80ACCEA8  28 00 00 00 */	cmplwi r0, 0
/* 80ACCEAC  41 82 00 0C */	beq lbl_80ACCEB8
lbl_80ACCEB0:
/* 80ACCEB0  38 00 00 00 */	li r0, 0
/* 80ACCEB4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80ACCEB8:
/* 80ACCEB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACCEBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACCEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACCEC4  7C 08 03 A6 */	mtlr r0
/* 80ACCEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACCECC  4E 80 00 20 */	blr 
