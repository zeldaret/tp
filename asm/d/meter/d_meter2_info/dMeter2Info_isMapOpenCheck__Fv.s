lbl_8021E668:
/* 8021E668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021E66C  7C 08 02 A6 */	mflr r0
/* 8021E670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021E674  4B FE F2 8D */	bl isMapOpenCheck__11dMeterMap_cFv
/* 8021E678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021E67C  7C 08 03 A6 */	mtlr r0
/* 8021E680  38 21 00 10 */	addi r1, r1, 0x10
/* 8021E684  4E 80 00 20 */	blr 
