lbl_80478190:
/* 80478190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80478194  7C 08 02 A6 */	mflr r0
/* 80478198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047819C  38 80 00 05 */	li r4, 5
/* 804781A0  4B FF F9 7D */	bl calc_rot_axis_base__12daObjCarry_cFUc
/* 804781A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804781A8  7C 08 03 A6 */	mtlr r0
/* 804781AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804781B0  4E 80 00 20 */	blr 
