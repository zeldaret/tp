lbl_80D61AFC:
/* 80D61AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61B00  7C 08 02 A6 */	mflr r0
/* 80D61B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61B08  4B FF FE 6D */	bl create__14daTagSpinner_cFv
/* 80D61B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61B10  7C 08 03 A6 */	mtlr r0
/* 80D61B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61B18  4E 80 00 20 */	blr 
