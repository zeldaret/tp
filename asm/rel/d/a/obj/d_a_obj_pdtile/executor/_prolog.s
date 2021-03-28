lbl_80CAAC40:
/* 80CAAC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAAC44  7C 08 02 A6 */	mflr r0
/* 80CAAC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAAC4C  3C 60 80 CB */	lis r3, data_80CAC504@ha
/* 80CAAC50  38 63 C5 04 */	addi r3, r3, data_80CAC504@l
/* 80CAAC54  4B 5B 84 F8 */	b ModuleConstructorsX
/* 80CAAC58  4B 5B 84 30 */	b ModuleProlog
/* 80CAAC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAC60  7C 08 03 A6 */	mtlr r0
/* 80CAAC64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAC68  4E 80 00 20 */	blr 
