lbl_80D3F1AC:
/* 80D3F1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F1B0  7C 08 02 A6 */	mflr r0
/* 80D3F1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F1B8  4B FF FC 9D */	bl setBaseMtx__13daObjZCloth_cFv
/* 80D3F1BC  38 60 00 01 */	li r3, 1
/* 80D3F1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F1C4  7C 08 03 A6 */	mtlr r0
/* 80D3F1C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F1CC  4E 80 00 20 */	blr 
