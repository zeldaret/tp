lbl_80021588:
/* 80021588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002158C  7C 08 02 A6 */	mflr r0
/* 80021590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021594  48 00 22 45 */	bl fpcMtdTg_MethodQTo__FP24process_method_tag_class
/* 80021598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002159C  7C 08 03 A6 */	mtlr r0
/* 800215A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800215A4  4E 80 00 20 */	blr 
