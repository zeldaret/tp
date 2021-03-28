lbl_8000ED1C:
/* 8000ED1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000ED20  7C 08 02 A6 */	mflr r0
/* 8000ED24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000ED28  38 A0 00 01 */	li r5, 1
/* 8000ED2C  48 2C 01 01 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8000ED30  90 6D 86 A8 */	stw r3, gameHeap(r13)
/* 8000ED34  38 00 00 01 */	li r0, 1
/* 8000ED38  98 03 00 6C */	stb r0, 0x6c(r3)
/* 8000ED3C  80 6D 86 A8 */	lwz r3, gameHeap(r13)
/* 8000ED40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000ED44  7C 08 03 A6 */	mtlr r0
/* 8000ED48  38 21 00 10 */	addi r1, r1, 0x10
/* 8000ED4C  4E 80 00 20 */	blr 
