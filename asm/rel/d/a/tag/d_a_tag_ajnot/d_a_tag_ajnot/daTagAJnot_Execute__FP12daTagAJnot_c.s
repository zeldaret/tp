lbl_805A2850:
/* 805A2850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2854  7C 08 02 A6 */	mflr r0
/* 805A2858  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A285C  4B FF FE E9 */	bl execute__12daTagAJnot_cFv
/* 805A2860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2864  7C 08 03 A6 */	mtlr r0
/* 805A2868  38 21 00 10 */	addi r1, r1, 0x10
/* 805A286C  4E 80 00 20 */	blr 
