lbl_80A810A4:
/* 80A810A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A810A8  7C 08 02 A6 */	mflr r0
/* 80A810AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A810B0  4B FF BD F1 */	bl Draw__11daNpcMoiR_cFv
/* 80A810B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A810B8  7C 08 03 A6 */	mtlr r0
/* 80A810BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A810C0  4E 80 00 20 */	blr 
