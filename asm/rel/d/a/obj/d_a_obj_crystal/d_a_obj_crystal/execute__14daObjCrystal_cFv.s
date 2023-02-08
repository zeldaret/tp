lbl_80BD6718:
/* 80BD6718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD671C  7C 08 02 A6 */	mflr r0
/* 80BD6720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6724  4B FF FC ED */	bl setBaseMtx__14daObjCrystal_cFv
/* 80BD6728  38 60 00 01 */	li r3, 1
/* 80BD672C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6730  7C 08 03 A6 */	mtlr r0
/* 80BD6734  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6738  4E 80 00 20 */	blr 
