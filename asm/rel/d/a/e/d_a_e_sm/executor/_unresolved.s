lbl_80792198:
/* 80792198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079219C  7C 08 02 A6 */	mflr r0
/* 807921A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807921A4  4B AD 0E EC */	b ModuleUnresolved
/* 807921A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807921AC  7C 08 03 A6 */	mtlr r0
/* 807921B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807921B4  4E 80 00 20 */	blr 
