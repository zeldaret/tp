lbl_80CAD2F8:
/* 80CAD2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD2FC  7C 08 02 A6 */	mflr r0
/* 80CAD300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD304  48 00 06 05 */	bl createHeap__14daObjPicture_cFv
/* 80CAD308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD30C  7C 08 03 A6 */	mtlr r0
/* 80CAD310  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD314  4E 80 00 20 */	blr 
