lbl_8001E574:
/* 8001E574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E578  7C 08 02 A6 */	mflr r0
/* 8001E57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E580  80 6D 80 30 */	lwz r3, l_fopOvlpM_overlap(r13)
/* 8001E584  28 03 00 00 */	cmplwi r3, 0
/* 8001E588  41 82 00 0C */	beq lbl_8001E594
/* 8001E58C  48 24 82 49 */	bl cReq_Is_Done__FP18request_base_class
/* 8001E590  48 00 00 08 */	b lbl_8001E598
lbl_8001E594:
/* 8001E594  38 60 00 00 */	li r3, 0
lbl_8001E598:
/* 8001E598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E59C  7C 08 03 A6 */	mtlr r0
/* 8001E5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E5A4  4E 80 00 20 */	blr 
