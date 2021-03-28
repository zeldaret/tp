lbl_80D39E18:
/* 80D39E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39E1C  7C 08 02 A6 */	mflr r0
/* 80D39E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39E24  4B 52 92 6C */	b ModuleUnresolved
/* 80D39E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39E2C  7C 08 03 A6 */	mtlr r0
/* 80D39E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39E34  4E 80 00 20 */	blr 
