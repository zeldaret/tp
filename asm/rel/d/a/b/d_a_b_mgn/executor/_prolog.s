lbl_80605640:
/* 80605640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80605644  7C 08 02 A6 */	mflr r0
/* 80605648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060564C  3C 60 80 61 */	lis r3, data_8060FDCC@ha
/* 80605650  38 63 FD CC */	addi r3, r3, data_8060FDCC@l
/* 80605654  4B C5 DA F8 */	b ModuleConstructorsX
/* 80605658  4B C5 DA 30 */	b ModuleProlog
/* 8060565C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80605660  7C 08 03 A6 */	mtlr r0
/* 80605664  38 21 00 10 */	addi r1, r1, 0x10
/* 80605668  4E 80 00 20 */	blr 
