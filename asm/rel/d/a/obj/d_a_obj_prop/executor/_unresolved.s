lbl_80CB51B8:
/* 80CB51B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB51BC  7C 08 02 A6 */	mflr r0
/* 80CB51C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB51C4  4B 5A DE CC */	b ModuleUnresolved
/* 80CB51C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB51CC  7C 08 03 A6 */	mtlr r0
/* 80CB51D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB51D4  4E 80 00 20 */	blr 
