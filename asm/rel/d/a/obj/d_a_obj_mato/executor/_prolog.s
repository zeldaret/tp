lbl_80C91AE0:
/* 80C91AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91AE4  7C 08 02 A6 */	mflr r0
/* 80C91AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91AEC  3C 60 80 C9 */	lis r3, data_80C92C48@ha
/* 80C91AF0  38 63 2C 48 */	addi r3, r3, data_80C92C48@l
/* 80C91AF4  4B 5D 16 58 */	b ModuleConstructorsX
/* 80C91AF8  4B 5D 15 90 */	b ModuleProlog
/* 80C91AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91B00  7C 08 03 A6 */	mtlr r0
/* 80C91B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91B08  4E 80 00 20 */	blr 
