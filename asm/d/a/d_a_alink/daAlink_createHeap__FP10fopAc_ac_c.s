lbl_800A48F0:
/* 800A48F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A48F4  7C 08 02 A6 */	mflr r0
/* 800A48F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A48FC  4B FF F7 6D */	bl createHeap__9daAlink_cFv
/* 800A4900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4904  7C 08 03 A6 */	mtlr r0
/* 800A4908  38 21 00 10 */	addi r1, r1, 0x10
/* 800A490C  4E 80 00 20 */	blr 
