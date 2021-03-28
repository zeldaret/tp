lbl_807C1A40:
/* 807C1A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1A44  7C 08 02 A6 */	mflr r0
/* 807C1A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1A4C  4B FF F9 69 */	bl create__8daE_TT_cFv
/* 807C1A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1A54  7C 08 03 A6 */	mtlr r0
/* 807C1A58  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1A5C  4E 80 00 20 */	blr 
