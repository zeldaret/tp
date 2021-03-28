lbl_805A5640:
/* 805A5640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5644  7C 08 02 A6 */	mflr r0
/* 805A5648  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A564C  3C 60 80 5A */	lis r3, data_805A602C@ha
/* 805A5650  38 63 60 2C */	addi r3, r3, data_805A602C@l
/* 805A5654  4B CB DA F8 */	b ModuleConstructorsX
/* 805A5658  4B CB DA 30 */	b ModuleProlog
/* 805A565C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5660  7C 08 03 A6 */	mtlr r0
/* 805A5664  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5668  4E 80 00 20 */	blr 
