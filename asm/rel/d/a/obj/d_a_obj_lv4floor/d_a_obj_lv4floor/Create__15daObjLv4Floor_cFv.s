lbl_80C678B0:
/* 80C678B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C678B4  7C 08 02 A6 */	mflr r0
/* 80C678B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C678BC  4B FF FF 3D */	bl initBaseMtx__15daObjLv4Floor_cFv
/* 80C678C0  38 60 00 01 */	li r3, 1
/* 80C678C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C678C8  7C 08 03 A6 */	mtlr r0
/* 80C678CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C678D0  4E 80 00 20 */	blr 
