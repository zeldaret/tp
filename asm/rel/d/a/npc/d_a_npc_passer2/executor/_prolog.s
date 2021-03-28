lbl_80AA7460:
/* 80AA7460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA7464  7C 08 02 A6 */	mflr r0
/* 80AA7468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA746C  3C 60 80 AB */	lis r3, data_80AA8A0C@ha
/* 80AA7470  38 63 8A 0C */	addi r3, r3, data_80AA8A0C@l
/* 80AA7474  4B 7B BC D8 */	b ModuleConstructorsX
/* 80AA7478  4B 7B BC 10 */	b ModuleProlog
/* 80AA747C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA7480  7C 08 03 A6 */	mtlr r0
/* 80AA7484  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA7488  4E 80 00 20 */	blr 
