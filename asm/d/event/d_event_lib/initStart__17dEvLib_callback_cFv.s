lbl_80048A50:
/* 80048A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80048A54  7C 08 02 A6 */	mflr r0
/* 80048A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80048A5C  48 00 00 15 */	bl executeStart__17dEvLib_callback_cFv
/* 80048A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048A64  7C 08 03 A6 */	mtlr r0
/* 80048A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80048A6C  4E 80 00 20 */	blr 
