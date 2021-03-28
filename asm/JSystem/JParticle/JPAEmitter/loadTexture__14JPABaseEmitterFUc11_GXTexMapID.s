lbl_8027EF50:
/* 8027EF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027EF54  7C 08 02 A6 */	mflr r0
/* 8027EF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027EF5C  80 C3 00 E8 */	lwz r6, 0xe8(r3)
/* 8027EF60  80 C6 00 38 */	lwz r6, 0x38(r6)
/* 8027EF64  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 8027EF68  7C 06 02 2E */	lhzx r0, r6, r0
/* 8027EF6C  80 63 00 E4 */	lwz r3, 0xe4(r3)
/* 8027EF70  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8027EF74  80 63 00 08 */	lwz r3, 8(r3)
/* 8027EF78  80 63 00 08 */	lwz r3, 8(r3)
/* 8027EF7C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8027EF80  7C 63 00 2E */	lwzx r3, r3, r0
/* 8027EF84  38 63 00 04 */	addi r3, r3, 4
/* 8027EF88  7C A4 2B 78 */	mr r4, r5
/* 8027EF8C  48 05 F8 B5 */	bl load__10JUTTextureF11_GXTexMapID
/* 8027EF90  38 60 00 01 */	li r3, 1
/* 8027EF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027EF98  7C 08 03 A6 */	mtlr r0
/* 8027EF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8027EFA0  4E 80 00 20 */	blr 
