lbl_80A46124:
/* 80A46124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A46128  7C 08 02 A6 */	mflr r0
/* 80A4612C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A46130  4B FF FC 95 */	bl CreateHeap__14daNpc_Kolinb_cFv
/* 80A46134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A46138  7C 08 03 A6 */	mtlr r0
/* 80A4613C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A46140  4E 80 00 20 */	blr 
