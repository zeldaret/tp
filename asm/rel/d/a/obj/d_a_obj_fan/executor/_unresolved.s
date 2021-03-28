lbl_80BE4C18:
/* 80BE4C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4C1C  7C 08 02 A6 */	mflr r0
/* 80BE4C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4C24  4B 67 E4 6C */	b ModuleUnresolved
/* 80BE4C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4C2C  7C 08 03 A6 */	mtlr r0
/* 80BE4C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4C34  4E 80 00 20 */	blr 
