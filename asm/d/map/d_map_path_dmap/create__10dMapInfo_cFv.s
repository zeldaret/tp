lbl_8003F734:
/* 8003F734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F738  7C 08 02 A6 */	mflr r0
/* 8003F73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F740  4B FF FF BD */	bl init__10dMapInfo_cFv
/* 8003F744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F748  7C 08 03 A6 */	mtlr r0
/* 8003F74C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F750  4E 80 00 20 */	blr 
