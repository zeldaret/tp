lbl_80D6021C:
/* 80D6021C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60220  7C 08 02 A6 */	mflr r0
/* 80D60224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60228  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D6022C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D60230  98 03 05 68 */	stb r0, 0x568(r3)
/* 80D60234  4B FF FF C5 */	bl initBaseMtx__14daTagSetBall_cFv
/* 80D60238  38 60 00 01 */	li r3, 1
/* 80D6023C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60240  7C 08 03 A6 */	mtlr r0
/* 80D60244  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60248  4E 80 00 20 */	blr 
