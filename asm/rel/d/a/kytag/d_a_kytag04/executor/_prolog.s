lbl_8046CAE0:
/* 8046CAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046CAE4  7C 08 02 A6 */	mflr r0
/* 8046CAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046CAEC  3C 60 80 47 */	lis r3, data_8046DA10@ha
/* 8046CAF0  38 63 DA 10 */	addi r3, r3, data_8046DA10@l
/* 8046CAF4  4B DF 66 58 */	b ModuleConstructorsX
/* 8046CAF8  4B DF 65 90 */	b ModuleProlog
/* 8046CAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046CB00  7C 08 03 A6 */	mtlr r0
/* 8046CB04  38 21 00 10 */	addi r1, r1, 0x10
/* 8046CB08  4E 80 00 20 */	blr 
