lbl_8001E41C:
/* 8001E41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E420  7C 08 02 A6 */	mflr r0
/* 8001E424  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E42C  93 C1 00 08 */	stw r30, 8(r1)
/* 8001E430  7C 7F 1B 78 */	mr r31, r3
/* 8001E434  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8001E438  7C 00 07 75 */	extsb. r0, r0
/* 8001E43C  40 82 00 24 */	bne lbl_8001E460
/* 8001E440  83 DF 00 10 */	lwz r30, 0x10(r31)
/* 8001E444  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8001E448  38 80 00 01 */	li r4, 1
/* 8001E44C  48 24 84 05 */	bl cReq_Create__FP18request_base_classUc
/* 8001E450  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8001E454  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8001E458  38 00 FF FF */	li r0, -1
/* 8001E45C  90 1F 00 C8 */	stw r0, 0xc8(r31)
lbl_8001E460:
/* 8001E460  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 8001E464  7F E4 FB 78 */	mr r4, r31
/* 8001E468  48 00 40 65 */	bl fpcMtd_Create__FP20process_method_classPv
/* 8001E46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E470  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001E474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E478  7C 08 03 A6 */	mtlr r0
/* 8001E47C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E480  4E 80 00 20 */	blr 
