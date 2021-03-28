lbl_8059F580:
/* 8059F580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F584  7C 08 02 A6 */	mflr r0
/* 8059F588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F58C  3C 60 80 5A */	lis r3, data_805A1144@ha
/* 8059F590  38 63 11 44 */	addi r3, r3, data_805A1144@l
/* 8059F594  4B CC 3B B8 */	b ModuleConstructorsX
/* 8059F598  4B CC 3A F0 */	b ModuleProlog
/* 8059F59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F5A0  7C 08 03 A6 */	mtlr r0
/* 8059F5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F5A8  4E 80 00 20 */	blr 
