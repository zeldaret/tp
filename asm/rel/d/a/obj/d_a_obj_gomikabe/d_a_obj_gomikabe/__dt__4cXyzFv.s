lbl_80BFE3FC:
/* 80BFE3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFE400  7C 08 02 A6 */	mflr r0
/* 80BFE404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFE408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFE40C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFE410  41 82 00 10 */	beq lbl_80BFE420
/* 80BFE414  7C 80 07 35 */	extsh. r0, r4
/* 80BFE418  40 81 00 08 */	ble lbl_80BFE420
/* 80BFE41C  4B 6D 09 20 */	b __dl__FPv
lbl_80BFE420:
/* 80BFE420  7F E3 FB 78 */	mr r3, r31
/* 80BFE424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFE428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFE42C  7C 08 03 A6 */	mtlr r0
/* 80BFE430  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFE434  4E 80 00 20 */	blr 
