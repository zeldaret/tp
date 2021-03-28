lbl_80C6D3B0:
/* 80C6D3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D3B4  7C 08 02 A6 */	mflr r0
/* 80C6D3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D3BC  4B FF F7 59 */	bl create__12daLv5SwIce_cFv
/* 80C6D3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D3C4  7C 08 03 A6 */	mtlr r0
/* 80C6D3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D3CC  4E 80 00 20 */	blr 
