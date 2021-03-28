lbl_807BD718:
/* 807BD718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD71C  7C 08 02 A6 */	mflr r0
/* 807BD720  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD724  4B AA 59 6C */	b ModuleUnresolved
/* 807BD728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD72C  7C 08 03 A6 */	mtlr r0
/* 807BD730  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD734  4E 80 00 20 */	blr 
