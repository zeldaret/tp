lbl_80CC6424:
/* 80CC6424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6428  7C 08 02 A6 */	mflr r0
/* 80CC642C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC6434  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC6438  41 82 00 10 */	beq lbl_80CC6448
/* 80CC643C  7C 80 07 35 */	extsh. r0, r4
/* 80CC6440  40 81 00 08 */	ble lbl_80CC6448
/* 80CC6444  4B 60 88 F9 */	bl __dl__FPv
lbl_80CC6448:
/* 80CC6448  7F E3 FB 78 */	mr r3, r31
/* 80CC644C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC6450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6454  7C 08 03 A6 */	mtlr r0
/* 80CC6458  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC645C  4E 80 00 20 */	blr 
