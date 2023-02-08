lbl_80BCB268:
/* 80BCB268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCB26C  7C 08 02 A6 */	mflr r0
/* 80BCB270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCB274  88 03 09 80 */	lbz r0, 0x980(r3)
/* 80BCB278  2C 00 00 01 */	cmpwi r0, 1
/* 80BCB27C  41 82 00 1C */	beq lbl_80BCB298
/* 80BCB280  40 80 00 1C */	bge lbl_80BCB29C
/* 80BCB284  2C 00 00 00 */	cmpwi r0, 0
/* 80BCB288  40 80 00 08 */	bge lbl_80BCB290
/* 80BCB28C  48 00 00 10 */	b lbl_80BCB29C
lbl_80BCB290:
/* 80BCB290  4B FF F8 C1 */	bl WaitAction__10daObjCHO_cFv
/* 80BCB294  48 00 00 08 */	b lbl_80BCB29C
lbl_80BCB298:
/* 80BCB298  4B FF FC 45 */	bl MoveAction__10daObjCHO_cFv
lbl_80BCB29C:
/* 80BCB29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCB2A0  7C 08 03 A6 */	mtlr r0
/* 80BCB2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCB2A8  4E 80 00 20 */	blr 
