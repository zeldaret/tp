lbl_80CC9678:
/* 80CC9678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC967C  7C 08 02 A6 */	mflr r0
/* 80CC9680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9684  48 00 12 49 */	bl createHeap__14daSCannonCrs_cFv
/* 80CC9688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC968C  7C 08 03 A6 */	mtlr r0
/* 80CC9690  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9694  4E 80 00 20 */	blr 
