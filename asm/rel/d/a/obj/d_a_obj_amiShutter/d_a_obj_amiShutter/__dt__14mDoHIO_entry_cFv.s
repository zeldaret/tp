lbl_80BA1514:
/* 80BA1514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1518  7C 08 02 A6 */	mflr r0
/* 80BA151C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1524  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA1528  41 82 00 1C */	beq lbl_80BA1544
/* 80BA152C  3C A0 80 BA */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80BA1530  38 05 25 48 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80BA1534  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA1538  7C 80 07 35 */	extsh. r0, r4
/* 80BA153C  40 81 00 08 */	ble lbl_80BA1544
/* 80BA1540  4B 72 D7 FC */	b __dl__FPv
lbl_80BA1544:
/* 80BA1544  7F E3 FB 78 */	mr r3, r31
/* 80BA1548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA154C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1550  7C 08 03 A6 */	mtlr r0
/* 80BA1554  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1558  4E 80 00 20 */	blr 
