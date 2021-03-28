lbl_80592E98:
/* 80592E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592E9C  7C 08 02 A6 */	mflr r0
/* 80592EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592EA4  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80592EA8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80592EAC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80592EB0  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80592EB4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80592EB8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80592EBC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80592EC0  48 00 00 15 */	bl setBaseMtx__11daObjMBox_cFv
/* 80592EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592EC8  7C 08 03 A6 */	mtlr r0
/* 80592ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80592ED0  4E 80 00 20 */	blr 
