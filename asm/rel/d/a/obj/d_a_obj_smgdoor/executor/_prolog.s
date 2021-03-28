lbl_80CDBAC0:
/* 80CDBAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBAC4  7C 08 02 A6 */	mflr r0
/* 80CDBAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBACC  3C 60 80 CE */	lis r3, data_80CDCBEC@ha
/* 80CDBAD0  38 63 CB EC */	addi r3, r3, data_80CDCBEC@l
/* 80CDBAD4  4B 58 76 78 */	b ModuleConstructorsX
/* 80CDBAD8  4B 58 75 B0 */	b ModuleProlog
/* 80CDBADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBAE0  7C 08 03 A6 */	mtlr r0
/* 80CDBAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBAE8  4E 80 00 20 */	blr 
