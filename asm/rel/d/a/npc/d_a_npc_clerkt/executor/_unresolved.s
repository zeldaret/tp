lbl_8099A0B8:
/* 8099A0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099A0BC  7C 08 02 A6 */	mflr r0
/* 8099A0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099A0C4  4B 8C 8F CC */	b ModuleUnresolved
/* 8099A0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099A0CC  7C 08 03 A6 */	mtlr r0
/* 8099A0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8099A0D4  4E 80 00 20 */	blr 
