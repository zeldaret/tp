lbl_8000ECC0:
/* 8000ECC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000ECC4  7C 08 02 A6 */	mflr r0
/* 8000ECC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000ECCC  48 2C 26 9D */	bl create__13JKRAssertHeapFP7JKRHeap
/* 8000ECD0  90 6D 86 A0 */	stw r3, AssertHeap(r13)
/* 8000ECD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000ECD8  7C 08 03 A6 */	mtlr r0
/* 8000ECDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8000ECE0  4E 80 00 20 */	blr 
