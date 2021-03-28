lbl_804D5318:
/* 804D5318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D531C  7C 08 02 A6 */	mflr r0
/* 804D5320  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5324  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 804D5328  54 00 C7 FE */	rlwinm r0, r0, 0x18, 0x1f, 0x1f
/* 804D532C  3C 80 80 4D */	lis r4, l_dist_tbl@ha
/* 804D5330  38 84 57 24 */	addi r4, r4, l_dist_tbl@l
/* 804D5334  7C 04 00 AE */	lbzx r0, r4, r0
/* 804D5338  98 03 05 44 */	stb r0, 0x544(r3)
/* 804D533C  48 00 00 71 */	bl execute__8daAttp_cFv
/* 804D5340  38 60 00 01 */	li r3, 1
/* 804D5344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5348  7C 08 03 A6 */	mtlr r0
/* 804D534C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5350  4E 80 00 20 */	blr 
