lbl_80B9DB90:
/* 80B9DB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9DB94  7C 08 02 A6 */	mflr r0
/* 80B9DB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9DB9C  80 03 07 D4 */	lwz r0, 0x7d4(r3)
/* 80B9DBA0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80B9DBA4  41 82 00 1C */	beq lbl_80B9DBC0
/* 80B9DBA8  88 03 09 8C */	lbz r0, 0x98c(r3)
/* 80B9DBAC  28 00 00 00 */	cmplwi r0, 0
/* 80B9DBB0  40 82 00 0C */	bne lbl_80B9DBBC
/* 80B9DBB4  48 00 04 C5 */	bl init_modeDropEnd2__10daTurara_cFv
/* 80B9DBB8  48 00 00 08 */	b lbl_80B9DBC0
lbl_80B9DBBC:
/* 80B9DBBC  48 00 00 15 */	bl init_modeDropEnd__10daTurara_cFv
lbl_80B9DBC0:
/* 80B9DBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9DBC4  7C 08 03 A6 */	mtlr r0
/* 80B9DBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9DBCC  4E 80 00 20 */	blr 
