lbl_80D3DAC0:
/* 80D3DAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3DAC4  7C 08 02 A6 */	mflr r0
/* 80D3DAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3DACC  4B FF EB 45 */	bl create__12daObj_YBag_cFv
/* 80D3DAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3DAD4  7C 08 03 A6 */	mtlr r0
/* 80D3DAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3DADC  4E 80 00 20 */	blr 
