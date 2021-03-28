lbl_805AEB04:
/* 805AEB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AEB08  7C 08 02 A6 */	mflr r0
/* 805AEB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AEB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AEB14  7C 7F 1B 79 */	or. r31, r3, r3
/* 805AEB18  41 82 00 10 */	beq lbl_805AEB28
/* 805AEB1C  7C 80 07 35 */	extsh. r0, r4
/* 805AEB20  40 81 00 08 */	ble lbl_805AEB28
/* 805AEB24  4B D2 02 18 */	b __dl__FPv
lbl_805AEB28:
/* 805AEB28  7F E3 FB 78 */	mr r3, r31
/* 805AEB2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AEB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AEB34  7C 08 03 A6 */	mtlr r0
/* 805AEB38  38 21 00 10 */	addi r1, r1, 0x10
/* 805AEB3C  4E 80 00 20 */	blr 
