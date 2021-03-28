lbl_80478170:
/* 80478170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80478174  7C 08 02 A6 */	mflr r0
/* 80478178  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047817C  4B FF FE AD */	bl calc_rot_axis_kibako__12daObjCarry_cFv
/* 80478180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80478184  7C 08 03 A6 */	mtlr r0
/* 80478188  38 21 00 10 */	addi r1, r1, 0x10
/* 8047818C  4E 80 00 20 */	blr 
