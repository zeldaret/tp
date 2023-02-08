lbl_804C7304:
/* 804C7304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C7308  7C 08 02 A6 */	mflr r0
/* 804C730C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7310  4B FF FE 05 */	bl createHeap__9daNbomb_cFv
/* 804C7314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7318  7C 08 03 A6 */	mtlr r0
/* 804C731C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7320  4E 80 00 20 */	blr 
