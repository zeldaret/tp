lbl_805CA924:
/* 805CA924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CA928  7C 08 02 A6 */	mflr r0
/* 805CA92C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CA930  4B FF F8 29 */	bl Execute__9daB_DRE_cFv
/* 805CA934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CA938  7C 08 03 A6 */	mtlr r0
/* 805CA93C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CA940  4E 80 00 20 */	blr 
