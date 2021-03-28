lbl_80BDD418:
/* 80BDD418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD41C  7C 08 02 A6 */	mflr r0
/* 80BDD420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD428  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDD42C  41 82 00 1C */	beq lbl_80BDD448
/* 80BDD430  3C A0 80 BE */	lis r5, __vt__8cM3dGCyl@ha
/* 80BDD434  38 05 D7 C8 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BDD438  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BDD43C  7C 80 07 35 */	extsh. r0, r4
/* 80BDD440  40 81 00 08 */	ble lbl_80BDD448
/* 80BDD444  4B 6F 18 F8 */	b __dl__FPv
lbl_80BDD448:
/* 80BDD448  7F E3 FB 78 */	mr r3, r31
/* 80BDD44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD454  7C 08 03 A6 */	mtlr r0
/* 80BDD458  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD45C  4E 80 00 20 */	blr 
