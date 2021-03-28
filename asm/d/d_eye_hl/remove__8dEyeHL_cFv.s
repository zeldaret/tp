lbl_8009CA28:
/* 8009CA28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009CA2C  7C 08 02 A6 */	mflr r0
/* 8009CA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009CA34  48 00 01 01 */	bl remove__12dEyeHL_mng_cFP8dEyeHL_c
/* 8009CA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009CA3C  7C 08 03 A6 */	mtlr r0
/* 8009CA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8009CA44  4E 80 00 20 */	blr 
