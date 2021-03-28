lbl_8001EE64:
/* 8001EE64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EE68  7C 08 02 A6 */	mflr r0
/* 8001EE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EE70  48 00 3B 69 */	bl fpcNdRq_Execute__FP19node_create_request
/* 8001EE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EE78  7C 08 03 A6 */	mtlr r0
/* 8001EE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EE80  4E 80 00 20 */	blr 
