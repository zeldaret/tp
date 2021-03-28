lbl_804A8EF8:
/* 804A8EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8EFC  7C 08 02 A6 */	mflr r0
/* 804A8F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8F04  4B DB A1 8C */	b ModuleUnresolved
/* 804A8F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8F0C  7C 08 03 A6 */	mtlr r0
/* 804A8F10  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8F14  4E 80 00 20 */	blr 
