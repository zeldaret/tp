lbl_80C5775C:
/* 80C5775C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57760  7C 08 02 A6 */	mflr r0
/* 80C57764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57768  4B FF F6 AD */	bl create__12daLv1Cdl01_cFv
/* 80C5776C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57770  7C 08 03 A6 */	mtlr r0
/* 80C57774  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57778  4E 80 00 20 */	blr 
