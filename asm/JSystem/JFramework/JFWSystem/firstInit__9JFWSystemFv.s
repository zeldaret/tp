lbl_80271CD0:
/* 80271CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80271CD4  7C 08 02 A6 */	mflr r0
/* 80271CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271CDC  48 0C 82 85 */	bl OSInit
/* 80271CE0  48 0D 74 11 */	bl DVDInit
/* 80271CE4  80 6D 81 F0 */	lwz r3, maxStdHeaps__Q29JFWSystem11CSetUpParam(r13)
/* 80271CE8  38 80 00 00 */	li r4, 0
/* 80271CEC  48 05 D0 C9 */	bl createRoot__10JKRExpHeapFib
/* 80271CF0  7C 64 1B 78 */	mr r4, r3
/* 80271CF4  90 8D 8C 20 */	stw r4, rootHeap__9JFWSystem(r13)
/* 80271CF8  80 6D 81 F4 */	lwz r3, sysHeapSize__Q29JFWSystem11CSetUpParam(r13)
/* 80271CFC  38 A0 00 00 */	li r5, 0
/* 80271D00  48 05 D1 2D */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 80271D04  90 6D 8C 24 */	stw r3, systemHeap__9JFWSystem(r13)
/* 80271D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80271D0C  7C 08 03 A6 */	mtlr r0
/* 80271D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80271D14  4E 80 00 20 */	blr 
