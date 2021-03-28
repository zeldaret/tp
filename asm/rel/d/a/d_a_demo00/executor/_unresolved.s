lbl_804A4278:
/* 804A4278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A427C  7C 08 02 A6 */	mflr r0
/* 804A4280  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A4284  4B DB EE 0C */	b ModuleUnresolved
/* 804A4288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A428C  7C 08 03 A6 */	mtlr r0
/* 804A4290  38 21 00 10 */	addi r1, r1, 0x10
/* 804A4294  4E 80 00 20 */	blr 
