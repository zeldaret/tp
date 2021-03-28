lbl_80A05310:
/* 80A05310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05314  7C 08 02 A6 */	mflr r0
/* 80A05318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0531C  4B FF C3 3D */	bl create__11daNpc_Hoz_cFv
/* 80A05320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05324  7C 08 03 A6 */	mtlr r0
/* 80A05328  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0532C  4E 80 00 20 */	blr 
