lbl_80CDEFC0:
/* 80CDEFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDEFC4  7C 08 02 A6 */	mflr r0
/* 80CDEFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDEFCC  3C 60 80 CE */	lis r3, data_80CDF70C@ha
/* 80CDEFD0  38 63 F7 0C */	addi r3, r3, data_80CDF70C@l
/* 80CDEFD4  4B 58 41 78 */	b ModuleConstructorsX
/* 80CDEFD8  4B 58 40 B0 */	b ModuleProlog
/* 80CDEFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDEFE0  7C 08 03 A6 */	mtlr r0
/* 80CDEFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDEFE8  4E 80 00 20 */	blr 
