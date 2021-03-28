lbl_803088B4:
/* 803088B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803088B8  7C 08 02 A6 */	mflr r0
/* 803088BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803088C0  80 63 01 38 */	lwz r3, 0x138(r3)
/* 803088C4  28 03 00 00 */	cmplwi r3, 0
/* 803088C8  41 82 00 08 */	beq lbl_803088D0
/* 803088CC  4B FE 1F D1 */	bl setAnimation__11J2DMaterialFP11J2DAnmColor
lbl_803088D0:
/* 803088D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803088D4  7C 08 03 A6 */	mtlr r0
/* 803088D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803088DC  4E 80 00 20 */	blr 
