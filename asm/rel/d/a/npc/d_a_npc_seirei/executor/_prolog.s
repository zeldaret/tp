lbl_80AD5640:
/* 80AD5640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD5644  7C 08 02 A6 */	mflr r0
/* 80AD5648  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD564C  3C 60 80 AD */	lis r3, data_80AD7C94@ha
/* 80AD5650  38 63 7C 94 */	addi r3, r3, data_80AD7C94@l
/* 80AD5654  4B 78 DA F8 */	b ModuleConstructorsX
/* 80AD5658  4B 78 DA 30 */	b ModuleProlog
/* 80AD565C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD5660  7C 08 03 A6 */	mtlr r0
/* 80AD5664  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD5668  4E 80 00 20 */	blr 
