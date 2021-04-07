lbl_8001E604:
/* 8001E604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E608  7C 08 02 A6 */	mflr r0
/* 8001E60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E610  7C 66 1B 78 */	mr r6, r3
/* 8001E614  7C 85 23 78 */	mr r5, r4
/* 8001E618  80 0D 80 30 */	lwz r0, l_fopOvlpM_overlap(r13)
/* 8001E61C  28 00 00 00 */	cmplwi r0, 0
/* 8001E620  40 82 00 1C */	bne lbl_8001E63C
/* 8001E624  3C 60 80 3F */	lis r3, l_fopOvlpM_Request@ha /* 0x803F1DE8@ha */
/* 8001E628  38 63 1D E8 */	addi r3, r3, l_fopOvlpM_Request@l /* 0x803F1DE8@l */
/* 8001E62C  7C C4 33 78 */	mr r4, r6
/* 8001E630  48 00 03 25 */	bl fopOvlpReq_Request__FP21overlap_request_classsUs
/* 8001E634  90 6D 80 30 */	stw r3, l_fopOvlpM_overlap(r13)
/* 8001E638  48 00 00 08 */	b lbl_8001E640
lbl_8001E63C:
/* 8001E63C  38 60 00 00 */	li r3, 0
lbl_8001E640:
/* 8001E640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E644  7C 08 03 A6 */	mtlr r0
/* 8001E648  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E64C  4E 80 00 20 */	blr 
