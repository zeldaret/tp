lbl_80969B68:
/* 80969B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80969B6C  7C 08 02 A6 */	mflr r0
/* 80969B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80969B74  4B FF F4 71 */	bl CreateHeap__13daNpcBlueNS_cFv
/* 80969B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80969B7C  7C 08 03 A6 */	mtlr r0
/* 80969B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80969B84  4E 80 00 20 */	blr 
