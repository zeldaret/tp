lbl_8072EA58:
/* 8072EA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072EA5C  7C 08 02 A6 */	mflr r0
/* 8072EA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072EA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072EA68  7C 7F 1B 78 */	mr r31, r3
/* 8072EA6C  4B FF FA BD */	bl setWaitSound__8daE_OC_cFv
/* 8072EA70  7F E3 FB 78 */	mr r3, r31
/* 8072EA74  4B FF FB 31 */	bl setWalkSound__8daE_OC_cFv
/* 8072EA78  7F E3 FB 78 */	mr r3, r31
/* 8072EA7C  4B FF FB F5 */	bl setWalkStSound__8daE_OC_cFv
/* 8072EA80  7F E3 FB 78 */	mr r3, r31
/* 8072EA84  4B FF FD 05 */	bl setDashSound__8daE_OC_cFv
/* 8072EA88  7F E3 FB 78 */	mr r3, r31
/* 8072EA8C  4B FF FE 85 */	bl setWaitStSound__8daE_OC_cFv
/* 8072EA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072EA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072EA98  7C 08 03 A6 */	mtlr r0
/* 8072EA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8072EAA0  4E 80 00 20 */	blr 
