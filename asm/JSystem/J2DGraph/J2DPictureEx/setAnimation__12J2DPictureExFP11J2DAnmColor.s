lbl_80306AC4:
/* 80306AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306AC8  7C 08 02 A6 */	mflr r0
/* 80306ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306AD0  80 63 01 50 */	lwz r3, 0x150(r3)
/* 80306AD4  28 03 00 00 */	cmplwi r3, 0
/* 80306AD8  41 82 00 08 */	beq lbl_80306AE0
/* 80306ADC  4B FE 3D C1 */	bl setAnimation__11J2DMaterialFP11J2DAnmColor
lbl_80306AE0:
/* 80306AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306AE4  7C 08 03 A6 */	mtlr r0
/* 80306AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80306AEC  4E 80 00 20 */	blr 
