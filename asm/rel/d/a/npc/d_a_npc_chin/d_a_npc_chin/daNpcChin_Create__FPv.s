lbl_80990E14:
/* 80990E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990E18  7C 08 02 A6 */	mflr r0
/* 80990E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990E20  4B FF B6 F1 */	bl Create__11daNpcChin_cFv
/* 80990E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990E28  7C 08 03 A6 */	mtlr r0
/* 80990E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80990E30  4E 80 00 20 */	blr 
