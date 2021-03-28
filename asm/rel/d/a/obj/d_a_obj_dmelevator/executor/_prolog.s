lbl_80BDD880:
/* 80BDD880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD884  7C 08 02 A6 */	mflr r0
/* 80BDD888  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD88C  3C 60 80 BE */	lis r3, data_80BDF860@ha
/* 80BDD890  38 63 F8 60 */	addi r3, r3, data_80BDF860@l
/* 80BDD894  4B 68 58 B8 */	b ModuleConstructorsX
/* 80BDD898  4B 68 57 F0 */	b ModuleProlog
/* 80BDD89C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD8A0  7C 08 03 A6 */	mtlr r0
/* 80BDD8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD8A8  4E 80 00 20 */	blr 
