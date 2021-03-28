lbl_802CEC4C:
/* 802CEC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEC50  7C 08 02 A6 */	mflr r0
/* 802CEC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEC58  38 80 00 04 */	li r4, 4
/* 802CEC5C  38 A0 00 00 */	li r5, 0
/* 802CEC60  4B FF F8 15 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802CEC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEC68  7C 08 03 A6 */	mtlr r0
/* 802CEC6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEC70  4E 80 00 20 */	blr 
