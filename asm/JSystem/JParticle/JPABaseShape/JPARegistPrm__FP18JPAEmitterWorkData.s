lbl_80276B90:
/* 80276B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80276B94  7C 08 02 A6 */	mflr r0
/* 80276B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80276B9C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80276BA0  80 05 01 08 */	lwz r0, 0x108(r5)
/* 80276BA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80276BA8  88 81 00 0C */	lbz r4, 0xc(r1)
/* 80276BAC  88 65 00 B8 */	lbz r3, 0xb8(r5)
/* 80276BB0  38 03 00 01 */	addi r0, r3, 1
/* 80276BB4  7C 04 01 D6 */	mullw r0, r4, r0
/* 80276BB8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276BBC  98 01 00 0C */	stb r0, 0xc(r1)
/* 80276BC0  88 81 00 0D */	lbz r4, 0xd(r1)
/* 80276BC4  88 65 00 B9 */	lbz r3, 0xb9(r5)
/* 80276BC8  38 03 00 01 */	addi r0, r3, 1
/* 80276BCC  7C 04 01 D6 */	mullw r0, r4, r0
/* 80276BD0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276BD4  98 01 00 0D */	stb r0, 0xd(r1)
/* 80276BD8  88 81 00 0E */	lbz r4, 0xe(r1)
/* 80276BDC  88 65 00 BA */	lbz r3, 0xba(r5)
/* 80276BE0  38 03 00 01 */	addi r0, r3, 1
/* 80276BE4  7C 04 01 D6 */	mullw r0, r4, r0
/* 80276BE8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276BEC  98 01 00 0E */	stb r0, 0xe(r1)
/* 80276BF0  88 81 00 0F */	lbz r4, 0xf(r1)
/* 80276BF4  88 65 00 BB */	lbz r3, 0xbb(r5)
/* 80276BF8  38 03 00 01 */	addi r0, r3, 1
/* 80276BFC  7C 04 01 D6 */	mullw r0, r4, r0
/* 80276C00  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80276C04  98 01 00 0F */	stb r0, 0xf(r1)
/* 80276C08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80276C0C  90 01 00 08 */	stw r0, 8(r1)
/* 80276C10  38 60 00 01 */	li r3, 1
/* 80276C14  38 81 00 08 */	addi r4, r1, 8
/* 80276C18  48 0E 87 65 */	bl GXSetTevColor
/* 80276C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80276C20  7C 08 03 A6 */	mtlr r0
/* 80276C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80276C28  4E 80 00 20 */	blr 
