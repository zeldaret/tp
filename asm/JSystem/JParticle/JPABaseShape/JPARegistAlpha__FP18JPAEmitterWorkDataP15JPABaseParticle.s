lbl_80276DB0:
/* 80276DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80276DB4  7C 08 02 A6 */	mflr r0
/* 80276DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80276DBC  80 C3 00 00 */	lwz r6, 0(r3)
/* 80276DC0  80 06 01 08 */	lwz r0, 0x108(r6)
/* 80276DC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80276DC8  88 A1 00 0C */	lbz r5, 0xc(r1)
/* 80276DCC  88 66 00 B8 */	lbz r3, 0xb8(r6)
/* 80276DD0  38 03 00 01 */	addi r0, r3, 1
/* 80276DD4  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276DD8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276DDC  98 01 00 0C */	stb r0, 0xc(r1)
/* 80276DE0  88 A1 00 0D */	lbz r5, 0xd(r1)
/* 80276DE4  88 66 00 B9 */	lbz r3, 0xb9(r6)
/* 80276DE8  38 03 00 01 */	addi r0, r3, 1
/* 80276DEC  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276DF0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276DF4  98 01 00 0D */	stb r0, 0xd(r1)
/* 80276DF8  88 A1 00 0E */	lbz r5, 0xe(r1)
/* 80276DFC  88 66 00 BA */	lbz r3, 0xba(r6)
/* 80276E00  38 03 00 01 */	addi r0, r3, 1
/* 80276E04  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276E08  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276E0C  98 01 00 0E */	stb r0, 0xe(r1)
/* 80276E10  88 A1 00 0F */	lbz r5, 0xf(r1)
/* 80276E14  88 66 00 BB */	lbz r3, 0xbb(r6)
/* 80276E18  38 03 00 01 */	addi r0, r3, 1
/* 80276E1C  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276E20  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 80276E24  98 A1 00 0F */	stb r5, 0xf(r1)
/* 80276E28  88 64 00 96 */	lbz r3, 0x96(r4)
/* 80276E2C  38 03 00 01 */	addi r0, r3, 1
/* 80276E30  7C 05 01 D6 */	mullw r0, r5, r0
/* 80276E34  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276E38  98 01 00 0F */	stb r0, 0xf(r1)
/* 80276E3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80276E40  90 01 00 08 */	stw r0, 8(r1)
/* 80276E44  38 60 00 01 */	li r3, 1
/* 80276E48  38 81 00 08 */	addi r4, r1, 8
/* 80276E4C  48 0E 85 31 */	bl GXSetTevColor
/* 80276E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80276E54  7C 08 03 A6 */	mtlr r0
/* 80276E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80276E5C  4E 80 00 20 */	blr 
