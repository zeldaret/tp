lbl_80A2245C:
/* 80A2245C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A22460  7C 08 02 A6 */	mflr r0
/* 80A22464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A22468  4B FF FC 39 */	bl CreateHeap__14daNpcKasiKyu_cFv
/* 80A2246C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A22470  7C 08 03 A6 */	mtlr r0
/* 80A22474  38 21 00 10 */	addi r1, r1, 0x10
/* 80A22478  4E 80 00 20 */	blr 
