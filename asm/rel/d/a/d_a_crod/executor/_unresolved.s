lbl_804A2E18:
/* 804A2E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2E1C  7C 08 02 A6 */	mflr r0
/* 804A2E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2E24  4B DC 02 6C */	b ModuleUnresolved
/* 804A2E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2E2C  7C 08 03 A6 */	mtlr r0
/* 804A2E30  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2E34  4E 80 00 20 */	blr 
