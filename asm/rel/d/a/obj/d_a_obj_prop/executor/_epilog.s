lbl_80CB518C:
/* 80CB518C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5190  7C 08 02 A6 */	mflr r0
/* 80CB5194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5198  4B 5A DE F4 */	b ModuleEpilog
/* 80CB519C  3C 60 80 CB */	lis r3, data_80CB5610@ha
/* 80CB51A0  38 63 56 10 */	addi r3, r3, data_80CB5610@l
/* 80CB51A4  4B 5A DF EC */	b ModuleDestructorsX
/* 80CB51A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB51AC  7C 08 03 A6 */	mtlr r0
/* 80CB51B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB51B4  4E 80 00 20 */	blr 
