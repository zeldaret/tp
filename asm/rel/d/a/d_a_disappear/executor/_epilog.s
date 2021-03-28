lbl_804A8ECC:
/* 804A8ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8ED0  7C 08 02 A6 */	mflr r0
/* 804A8ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8ED8  4B DB A1 B4 */	b ModuleEpilog
/* 804A8EDC  3C 60 80 4B */	lis r3, data_804A945C@ha
/* 804A8EE0  38 63 94 5C */	addi r3, r3, data_804A945C@l
/* 804A8EE4  4B DB A2 AC */	b ModuleDestructorsX
/* 804A8EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8EEC  7C 08 03 A6 */	mtlr r0
/* 804A8EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8EF4  4E 80 00 20 */	blr 
