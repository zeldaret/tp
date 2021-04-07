lbl_80AFD1A8:
/* 80AFD1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD1AC  7C 08 02 A6 */	mflr r0
/* 80AFD1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD1B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFD1B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFD1BC  41 82 00 10 */	beq lbl_80AFD1CC
/* 80AFD1C0  7C 80 07 35 */	extsh. r0, r4
/* 80AFD1C4  40 81 00 08 */	ble lbl_80AFD1CC
/* 80AFD1C8  4B 7D 1B 75 */	bl __dl__FPv
lbl_80AFD1CC:
/* 80AFD1CC  7F E3 FB 78 */	mr r3, r31
/* 80AFD1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFD1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD1D8  7C 08 03 A6 */	mtlr r0
/* 80AFD1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD1E0  4E 80 00 20 */	blr 
