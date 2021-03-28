lbl_8000ED58:
/* 8000ED58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000ED5C  7C 08 02 A6 */	mflr r0
/* 8000ED60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000ED64  38 A0 00 01 */	li r5, 1
/* 8000ED68  48 2C 00 C5 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8000ED6C  90 6D 86 AC */	stw r3, zeldaHeap(r13)
/* 8000ED70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000ED74  7C 08 03 A6 */	mtlr r0
/* 8000ED78  38 21 00 10 */	addi r1, r1, 0x10
/* 8000ED7C  4E 80 00 20 */	blr 
