lbl_800215CC:
/* 800215CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800215D0  7C 08 02 A6 */	mflr r0
/* 800215D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800215D8  48 00 21 B1 */	bl fpcMtdTg_Do__FP24process_method_tag_class
/* 800215DC  20 03 00 01 */	subfic r0, r3, 1
/* 800215E0  7C 00 00 34 */	cntlzw r0, r0
/* 800215E4  54 03 D9 7E */	srwi r3, r0, 5
/* 800215E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800215EC  7C 08 03 A6 */	mtlr r0
/* 800215F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800215F4  4E 80 00 20 */	blr 
