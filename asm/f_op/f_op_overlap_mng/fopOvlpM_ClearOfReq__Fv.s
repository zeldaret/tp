lbl_8001E5D0:
/* 8001E5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E5D4  7C 08 02 A6 */	mflr r0
/* 8001E5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E5DC  80 6D 80 30 */	lwz r3, l_fopOvlpM_overlap(r13)
/* 8001E5E0  28 03 00 00 */	cmplwi r3, 0
/* 8001E5E4  41 82 00 0C */	beq lbl_8001E5F0
/* 8001E5E8  48 00 04 F1 */	bl fopOvlpReq_OverlapClr__FP21overlap_request_class
/* 8001E5EC  48 00 00 08 */	b lbl_8001E5F4
lbl_8001E5F0:
/* 8001E5F0  38 60 00 00 */	li r3, 0
lbl_8001E5F4:
/* 8001E5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E5F8  7C 08 03 A6 */	mtlr r0
/* 8001E5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E600  4E 80 00 20 */	blr 
