lbl_8003EB10:
/* 8003EB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003EB14  7C 08 02 A6 */	mflr r0
/* 8003EB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003EB1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003EB20  93 C1 00 08 */	stw r30, 8(r1)
/* 8003EB24  7C 7E 1B 79 */	or. r30, r3, r3
/* 8003EB28  7C 9F 23 78 */	mr r31, r4
/* 8003EB2C  41 82 00 28 */	beq lbl_8003EB54
/* 8003EB30  80 7E 00 00 */	lwz r3, 0(r30)
/* 8003EB34  28 03 00 00 */	cmplwi r3, 0
/* 8003EB38  41 82 00 0C */	beq lbl_8003EB44
/* 8003EB3C  38 80 00 01 */	li r4, 1
/* 8003EB40  48 00 00 31 */	bl __dt__22fmpTresTypeGroupData_cFv
lbl_8003EB44:
/* 8003EB44  7F E0 07 35 */	extsh. r0, r31
/* 8003EB48  40 81 00 0C */	ble lbl_8003EB54
/* 8003EB4C  7F C3 F3 78 */	mr r3, r30
/* 8003EB50  48 29 01 ED */	bl __dl__FPv
lbl_8003EB54:
/* 8003EB54  7F C3 F3 78 */	mr r3, r30
/* 8003EB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003EB5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003EB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003EB64  7C 08 03 A6 */	mtlr r0
/* 8003EB68  38 21 00 10 */	addi r1, r1, 0x10
/* 8003EB6C  4E 80 00 20 */	blr 
