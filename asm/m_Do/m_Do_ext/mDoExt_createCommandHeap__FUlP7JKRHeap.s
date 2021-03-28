lbl_8000ED88:
/* 8000ED88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000ED8C  7C 08 02 A6 */	mflr r0
/* 8000ED90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000ED94  38 A0 00 01 */	li r5, 1
/* 8000ED98  48 2C 00 95 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8000ED9C  90 6D 86 B0 */	stw r3, commandHeap(r13)
/* 8000EDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EDA4  7C 08 03 A6 */	mtlr r0
/* 8000EDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EDAC  4E 80 00 20 */	blr 
