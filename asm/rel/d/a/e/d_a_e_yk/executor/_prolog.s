lbl_80804740:
/* 80804740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80804744  7C 08 02 A6 */	mflr r0
/* 80804748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080474C  3C 60 80 80 */	lis r3, data_80807C88@ha
/* 80804750  38 63 7C 88 */	addi r3, r3, data_80807C88@l
/* 80804754  4B A5 E9 F8 */	b ModuleConstructorsX
/* 80804758  4B A5 E9 30 */	b ModuleProlog
/* 8080475C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80804760  7C 08 03 A6 */	mtlr r0
/* 80804764  38 21 00 10 */	addi r1, r1, 0x10
/* 80804768  4E 80 00 20 */	blr 
