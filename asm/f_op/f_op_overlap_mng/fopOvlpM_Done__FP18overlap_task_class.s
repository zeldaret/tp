lbl_8001E51C:
/* 8001E51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E520  7C 08 02 A6 */	mflr r0
/* 8001E524  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E528  38 63 00 C4 */	addi r3, r3, 0xc4
/* 8001E52C  48 24 82 D5 */	bl cReq_Done__FP18request_base_class
/* 8001E530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E534  7C 08 03 A6 */	mtlr r0
/* 8001E538  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E53C  4E 80 00 20 */	blr 
