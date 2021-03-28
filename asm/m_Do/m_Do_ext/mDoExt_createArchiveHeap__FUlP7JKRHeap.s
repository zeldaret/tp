lbl_8000EDB8:
/* 8000EDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000EDBC  7C 08 02 A6 */	mflr r0
/* 8000EDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000EDC4  38 A0 00 01 */	li r5, 1
/* 8000EDC8  48 2C 00 65 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8000EDCC  90 6D 86 B4 */	stw r3, archiveHeap(r13)
/* 8000EDD0  38 00 00 01 */	li r0, 1
/* 8000EDD4  98 03 00 6C */	stb r0, 0x6c(r3)
/* 8000EDD8  80 6D 86 B4 */	lwz r3, archiveHeap(r13)
/* 8000EDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EDE0  7C 08 03 A6 */	mtlr r0
/* 8000EDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EDE8  4E 80 00 20 */	blr 
