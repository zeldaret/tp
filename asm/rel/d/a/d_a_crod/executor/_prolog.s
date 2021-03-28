lbl_804A2DC0:
/* 804A2DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2DC4  7C 08 02 A6 */	mflr r0
/* 804A2DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2DCC  3C 60 80 4A */	lis r3, data_804A40E4@ha
/* 804A2DD0  38 63 40 E4 */	addi r3, r3, data_804A40E4@l
/* 804A2DD4  4B DC 03 78 */	b ModuleConstructorsX
/* 804A2DD8  4B DC 02 B0 */	b ModuleProlog
/* 804A2DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2DE0  7C 08 03 A6 */	mtlr r0
/* 804A2DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2DE8  4E 80 00 20 */	blr 
