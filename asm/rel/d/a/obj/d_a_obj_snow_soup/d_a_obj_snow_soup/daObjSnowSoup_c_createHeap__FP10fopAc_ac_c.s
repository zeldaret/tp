lbl_80CDF858:
/* 80CDF858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF85C  7C 08 02 A6 */	mflr r0
/* 80CDF860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF864  48 00 01 2D */	bl createHeap__15daObjSnowSoup_cFv
/* 80CDF868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF86C  7C 08 03 A6 */	mtlr r0
/* 80CDF870  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF874  4E 80 00 20 */	blr 
