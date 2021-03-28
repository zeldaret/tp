lbl_804A2DEC:
/* 804A2DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2DF0  7C 08 02 A6 */	mflr r0
/* 804A2DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2DF8  4B DC 02 94 */	b ModuleEpilog
/* 804A2DFC  3C 60 80 4A */	lis r3, data_804A40E8@ha
/* 804A2E00  38 63 40 E8 */	addi r3, r3, data_804A40E8@l
/* 804A2E04  4B DC 03 8C */	b ModuleDestructorsX
/* 804A2E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2E0C  7C 08 03 A6 */	mtlr r0
/* 804A2E10  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2E14  4E 80 00 20 */	blr 
