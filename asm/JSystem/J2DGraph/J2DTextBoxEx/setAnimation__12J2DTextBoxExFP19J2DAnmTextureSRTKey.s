lbl_803088E0:
/* 803088E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803088E4  7C 08 02 A6 */	mflr r0
/* 803088E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803088EC  80 63 01 38 */	lwz r3, 0x138(r3)
/* 803088F0  28 03 00 00 */	cmplwi r3, 0
/* 803088F4  41 82 00 08 */	beq lbl_803088FC
/* 803088F8  4B FE 20 55 */	bl setAnimation__11J2DMaterialFP19J2DAnmTextureSRTKey
lbl_803088FC:
/* 803088FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80308900  7C 08 03 A6 */	mtlr r0
/* 80308904  38 21 00 10 */	addi r1, r1, 0x10
/* 80308908  4E 80 00 20 */	blr 
