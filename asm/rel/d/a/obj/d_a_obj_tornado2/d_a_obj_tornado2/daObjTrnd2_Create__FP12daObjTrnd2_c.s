lbl_80D1D390:
/* 80D1D390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D394  7C 08 02 A6 */	mflr r0
/* 80D1D398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D39C  4B FF F8 E5 */	bl create__12daObjTrnd2_cFv
/* 80D1D3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D3A4  7C 08 03 A6 */	mtlr r0
/* 80D1D3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D3AC  4E 80 00 20 */	blr 
