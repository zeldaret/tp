lbl_8001EA88:
/* 8001EA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EA8C  7C 08 02 A6 */	mflr r0
/* 8001EA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EA94  4B FF FC 59 */	bl fopOvlpReq_phase_Done__FP21overlap_request_class
/* 8001EA98  20 03 00 02 */	subfic r0, r3, 2
/* 8001EA9C  7C 00 00 34 */	cntlzw r0, r0
/* 8001EAA0  54 03 D9 7E */	srwi r3, r0, 5
/* 8001EAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EAA8  7C 08 03 A6 */	mtlr r0
/* 8001EAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EAB0  4E 80 00 20 */	blr 
