lbl_8047814C:
/* 8047814C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80478150  7C 08 02 A6 */	mflr r0
/* 80478154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80478158  38 80 00 0A */	li r4, 0xa
/* 8047815C  4B FF F9 C1 */	bl calc_rot_axis_base__12daObjCarry_cFUc
/* 80478160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80478164  7C 08 03 A6 */	mtlr r0
/* 80478168  38 21 00 10 */	addi r1, r1, 0x10
/* 8047816C  4E 80 00 20 */	blr 
