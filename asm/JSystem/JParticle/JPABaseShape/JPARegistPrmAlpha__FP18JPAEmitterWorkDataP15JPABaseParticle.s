lbl_80276E60:
/* 80276E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80276E64  7C 08 02 A6 */	mflr r0
/* 80276E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80276E6C  80 C3 00 00 */	lwz r6, 0(r3)
/* 80276E70  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 80276E74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80276E78  88 A1 00 0C */	lbz r5, 0xc(r1)
/* 80276E7C  88 66 00 B8 */	lbz r3, 0xb8(r6)
/* 80276E80  38 03 00 01 */	addi r0, r3, 1
/* 80276E84  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276E88  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276E8C  98 01 00 0C */	stb r0, 0xc(r1)
/* 80276E90  88 A1 00 0D */	lbz r5, 0xd(r1)
/* 80276E94  88 66 00 B9 */	lbz r3, 0xb9(r6)
/* 80276E98  38 03 00 01 */	addi r0, r3, 1
/* 80276E9C  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276EA0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276EA4  98 01 00 0D */	stb r0, 0xd(r1)
/* 80276EA8  88 A1 00 0E */	lbz r5, 0xe(r1)
/* 80276EAC  88 66 00 BA */	lbz r3, 0xba(r6)
/* 80276EB0  38 03 00 01 */	addi r0, r3, 1
/* 80276EB4  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276EB8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276EBC  98 01 00 0E */	stb r0, 0xe(r1)
/* 80276EC0  88 A1 00 0F */	lbz r5, 0xf(r1)
/* 80276EC4  88 66 00 BB */	lbz r3, 0xbb(r6)
/* 80276EC8  38 03 00 01 */	addi r0, r3, 1
/* 80276ECC  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276ED0  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 80276ED4  98 A1 00 0F */	stb r5, 0xf(r1)
/* 80276ED8  88 64 00 96 */	lbz r3, 0x96(r4)
/* 80276EDC  38 03 00 01 */	addi r0, r3, 1
/* 80276EE0  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276EE4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276EE8  98 01 00 0F */	stb r0, 0xf(r1)
/* 80276EEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80276EF0  90 01 00 08 */	stw r0, 8(r1)
/* 80276EF4  38 60 00 01 */	li r3, 1
/* 80276EF8  38 81 00 08 */	addi r4, r1, 8
/* 80276EFC  48 0E 84 81 */	bl GXSetTevColor
/* 80276F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80276F04  7C 08 03 A6 */	mtlr r0
/* 80276F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80276F0C  4E 80 00 20 */	blr 
