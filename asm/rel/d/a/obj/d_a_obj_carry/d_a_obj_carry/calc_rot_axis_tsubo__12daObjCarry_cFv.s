lbl_80477FE0:
/* 80477FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80477FE4  7C 08 02 A6 */	mflr r0
/* 80477FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80477FEC  38 80 00 05 */	li r4, 5
/* 80477FF0  4B FF FB 2D */	bl calc_rot_axis_base__12daObjCarry_cFUc
/* 80477FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80477FF8  7C 08 03 A6 */	mtlr r0
/* 80477FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80478000  4E 80 00 20 */	blr 
