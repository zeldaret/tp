lbl_8003F7E8:
/* 8003F7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F7EC  7C 08 02 A6 */	mflr r0
/* 8003F7F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F7F4  38 60 02 00 */	li r3, 0x200
/* 8003F7F8  48 28 F4 55 */	bl __nw__FUl
/* 8003F7FC  90 6D 88 E4 */	stw r3, mLayerList__8dMpath_c(r13)
/* 8003F800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F804  7C 08 03 A6 */	mtlr r0
/* 8003F808  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F80C  4E 80 00 20 */	blr 
