lbl_804874EC:
/* 804874EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804874F0  7C 08 02 A6 */	mflr r0
/* 804874F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804874F8  4B DD BB 94 */	b ModuleEpilog
/* 804874FC  3C 60 80 49 */	lis r3, data_804896E0@ha
/* 80487500  38 63 96 E0 */	addi r3, r3, data_804896E0@l
/* 80487504  4B DD BC 8C */	b ModuleDestructorsX
/* 80487508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048750C  7C 08 03 A6 */	mtlr r0
/* 80487510  38 21 00 10 */	addi r1, r1, 0x10
/* 80487514  4E 80 00 20 */	blr 
