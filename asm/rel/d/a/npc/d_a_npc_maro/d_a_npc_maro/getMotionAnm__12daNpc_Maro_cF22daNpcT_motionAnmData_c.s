lbl_8055DB64:
/* 8055DB64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055DB68  38 E1 00 04 */	addi r7, r1, 4
/* 8055DB6C  38 C5 FF FC */	addi r6, r5, -4
/* 8055DB70  38 00 00 03 */	li r0, 3
/* 8055DB74  7C 09 03 A6 */	mtctr r0
lbl_8055DB78:
/* 8055DB78  80 A6 00 04 */	lwz r5, 4(r6)
/* 8055DB7C  84 06 00 08 */	lwzu r0, 8(r6)
/* 8055DB80  90 A7 00 04 */	stw r5, 4(r7)
/* 8055DB84  94 07 00 08 */	stwu r0, 8(r7)
/* 8055DB88  42 00 FF F0 */	bdnz lbl_8055DB78
/* 8055DB8C  80 06 00 04 */	lwz r0, 4(r6)
/* 8055DB90  90 07 00 04 */	stw r0, 4(r7)
/* 8055DB94  88 04 0A 89 */	lbz r0, 0xa89(r4)
/* 8055DB98  28 00 00 00 */	cmplwi r0, 0
/* 8055DB9C  41 82 00 20 */	beq lbl_8055DBBC
/* 8055DBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055DBA4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8055DBA8  40 82 00 14 */	bne lbl_8055DBBC
/* 8055DBAC  38 00 00 08 */	li r0, 8
/* 8055DBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055DBB4  38 00 00 02 */	li r0, 2
/* 8055DBB8  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_8055DBBC:
/* 8055DBBC  38 A3 FF FC */	addi r5, r3, -4
/* 8055DBC0  38 81 00 04 */	addi r4, r1, 4
/* 8055DBC4  38 00 00 03 */	li r0, 3
/* 8055DBC8  7C 09 03 A6 */	mtctr r0
lbl_8055DBCC:
/* 8055DBCC  80 64 00 04 */	lwz r3, 4(r4)
/* 8055DBD0  84 04 00 08 */	lwzu r0, 8(r4)
/* 8055DBD4  90 65 00 04 */	stw r3, 4(r5)
/* 8055DBD8  94 05 00 08 */	stwu r0, 8(r5)
/* 8055DBDC  42 00 FF F0 */	bdnz lbl_8055DBCC
/* 8055DBE0  80 04 00 04 */	lwz r0, 4(r4)
/* 8055DBE4  90 05 00 04 */	stw r0, 4(r5)
/* 8055DBE8  38 21 00 30 */	addi r1, r1, 0x30
/* 8055DBEC  4E 80 00 20 */	blr 
