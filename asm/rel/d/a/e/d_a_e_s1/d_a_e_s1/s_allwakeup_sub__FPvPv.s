lbl_8077CAD0:
/* 8077CAD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077CAD4  7C 08 02 A6 */	mflr r0
/* 8077CAD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077CADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077CAE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8077CAE4  7C 7E 1B 78 */	mr r30, r3
/* 8077CAE8  7C 9F 23 78 */	mr r31, r4
/* 8077CAEC  4B 89 C1 F5 */	bl fopAc_IsActor__FPv
/* 8077CAF0  2C 03 00 00 */	cmpwi r3, 0
/* 8077CAF4  41 82 00 58 */	beq lbl_8077CB4C
/* 8077CAF8  A8 1E 00 08 */	lha r0, 8(r30)
/* 8077CAFC  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 8077CB00  40 82 00 4C */	bne lbl_8077CB4C
/* 8077CB04  7C 1E F8 40 */	cmplw r30, r31
/* 8077CB08  41 82 00 44 */	beq lbl_8077CB4C
/* 8077CB0C  88 7E 05 B6 */	lbz r3, 0x5b6(r30)
/* 8077CB10  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 8077CB14  7C 03 00 40 */	cmplw r3, r0
/* 8077CB18  40 82 00 34 */	bne lbl_8077CB4C
/* 8077CB1C  38 00 00 0C */	li r0, 0xc
/* 8077CB20  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077CB24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077CB28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077CB2C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8077CB30  28 00 00 00 */	cmplwi r0, 0
/* 8077CB34  41 82 00 10 */	beq lbl_8077CB44
/* 8077CB38  38 00 00 32 */	li r0, 0x32
/* 8077CB3C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8077CB40  48 00 00 0C */	b lbl_8077CB4C
lbl_8077CB44:
/* 8077CB44  38 00 00 00 */	li r0, 0
/* 8077CB48  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_8077CB4C:
/* 8077CB4C  38 60 00 00 */	li r3, 0
/* 8077CB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8077CB54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8077CB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077CB5C  7C 08 03 A6 */	mtlr r0
/* 8077CB60  38 21 00 10 */	addi r1, r1, 0x10
/* 8077CB64  4E 80 00 20 */	blr 
