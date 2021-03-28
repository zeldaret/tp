lbl_8099D660:
/* 8099D660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099D664  7C 08 02 A6 */	mflr r0
/* 8099D668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099D66C  3C 60 80 9A */	lis r3, data_809A4EC8@ha
/* 8099D670  38 63 4E C8 */	addi r3, r3, data_809A4EC8@l
/* 8099D674  4B 8C 5A D8 */	b ModuleConstructorsX
/* 8099D678  4B 8C 5A 10 */	b ModuleProlog
/* 8099D67C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099D680  7C 08 03 A6 */	mtlr r0
/* 8099D684  38 21 00 10 */	addi r1, r1, 0x10
/* 8099D688  4E 80 00 20 */	blr 
