lbl_8000ECEC:
/* 8000ECEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000ECF0  7C 08 02 A6 */	mflr r0
/* 8000ECF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000ECF8  38 A0 00 01 */	li r5, 1
/* 8000ECFC  48 2C 01 31 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8000ED00  90 6D 86 A4 */	stw r3, DbPrintHeap(r13)
/* 8000ED04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000ED08  7C 08 03 A6 */	mtlr r0
/* 8000ED0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000ED10  4E 80 00 20 */	blr 
