lbl_805DE320:
/* 805DE320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE324  7C 08 02 A6 */	mflr r0
/* 805DE328  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE32C  3C 60 80 5F */	lis r3, data_805ED04C@ha
/* 805DE330  38 63 D0 4C */	addi r3, r3, data_805ED04C@l
/* 805DE334  4B C8 4E 18 */	b ModuleConstructorsX
/* 805DE338  4B C8 4D 50 */	b ModuleProlog
/* 805DE33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE340  7C 08 03 A6 */	mtlr r0
/* 805DE344  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE348  4E 80 00 20 */	blr 
