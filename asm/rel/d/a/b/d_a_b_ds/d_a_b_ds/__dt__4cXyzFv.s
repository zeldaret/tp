lbl_805DC968:
/* 805DC968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC96C  7C 08 02 A6 */	mflr r0
/* 805DC970  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC978  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DC97C  41 82 00 10 */	beq lbl_805DC98C
/* 805DC980  7C 80 07 35 */	extsh. r0, r4
/* 805DC984  40 81 00 08 */	ble lbl_805DC98C
/* 805DC988  4B CF 23 B5 */	bl __dl__FPv
lbl_805DC98C:
/* 805DC98C  7F E3 FB 78 */	mr r3, r31
/* 805DC990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC998  7C 08 03 A6 */	mtlr r0
/* 805DC99C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC9A0  4E 80 00 20 */	blr 
