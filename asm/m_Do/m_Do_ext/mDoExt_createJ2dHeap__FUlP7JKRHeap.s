lbl_8000EDFC:
/* 8000EDFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000EE00  7C 08 02 A6 */	mflr r0
/* 8000EE04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000EE08  38 A0 00 01 */	li r5, 1
/* 8000EE0C  48 2C 00 21 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8000EE10  90 6D 86 B8 */	stw r3, j2dHeap(r13)
/* 8000EE14  38 00 00 01 */	li r0, 1
/* 8000EE18  98 03 00 6C */	stb r0, 0x6c(r3)
/* 8000EE1C  80 6D 86 B8 */	lwz r3, j2dHeap(r13)
/* 8000EE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EE24  7C 08 03 A6 */	mtlr r0
/* 8000EE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EE2C  4E 80 00 20 */	blr 
