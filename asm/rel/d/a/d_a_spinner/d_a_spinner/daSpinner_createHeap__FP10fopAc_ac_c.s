lbl_804D1A50:
/* 804D1A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1A54  7C 08 02 A6 */	mflr r0
/* 804D1A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1A5C  4B FF FF 31 */	bl createHeap__11daSpinner_cFv
/* 804D1A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1A64  7C 08 03 A6 */	mtlr r0
/* 804D1A68  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1A6C  4E 80 00 20 */	blr 
