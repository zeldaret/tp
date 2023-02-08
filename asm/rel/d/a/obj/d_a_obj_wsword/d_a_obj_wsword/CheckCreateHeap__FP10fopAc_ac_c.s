lbl_80D3B978:
/* 80D3B978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B97C  7C 08 02 A6 */	mflr r0
/* 80D3B980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B984  48 00 01 35 */	bl CreateHeap__13daObjWSword_cFv
/* 80D3B988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B98C  7C 08 03 A6 */	mtlr r0
/* 80D3B990  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B994  4E 80 00 20 */	blr 
