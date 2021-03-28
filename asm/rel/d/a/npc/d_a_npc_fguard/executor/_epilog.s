lbl_809BA46C:
/* 809BA46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BA470  7C 08 02 A6 */	mflr r0
/* 809BA474  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BA478  4B 8A 8C 14 */	b ModuleEpilog
/* 809BA47C  3C 60 80 9C */	lis r3, data_809BB400@ha
/* 809BA480  38 63 B4 00 */	addi r3, r3, data_809BB400@l
/* 809BA484  4B 8A 8D 0C */	b ModuleDestructorsX
/* 809BA488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BA48C  7C 08 03 A6 */	mtlr r0
/* 809BA490  38 21 00 10 */	addi r1, r1, 0x10
/* 809BA494  4E 80 00 20 */	blr 
