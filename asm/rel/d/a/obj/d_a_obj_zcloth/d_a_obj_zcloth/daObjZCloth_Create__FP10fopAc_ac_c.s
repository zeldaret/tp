lbl_80D3F29C:
/* 80D3F29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F2A0  7C 08 02 A6 */	mflr r0
/* 80D3F2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F2A8  4B FF FC 65 */	bl create__13daObjZCloth_cFv
/* 80D3F2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F2B0  7C 08 03 A6 */	mtlr r0
/* 80D3F2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F2B8  4E 80 00 20 */	blr 
