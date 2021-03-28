lbl_804783C0:
/* 804783C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804783C4  7C 08 02 A6 */	mflr r0
/* 804783C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804783CC  38 80 00 05 */	li r4, 5
/* 804783D0  4B FF F7 4D */	bl calc_rot_axis_base__12daObjCarry_cFUc
/* 804783D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804783D8  7C 08 03 A6 */	mtlr r0
/* 804783DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804783E0  4E 80 00 20 */	blr 
