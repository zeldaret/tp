lbl_802E5A60:
/* 802E5A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5A64  7C 08 02 A6 */	mflr r0
/* 802E5A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E5A70  83 ED 8F D8 */	lwz r31, sManager__10JUTProcBar(r13)
/* 802E5A74  38 00 00 FF */	li r0, 0xff
/* 802E5A78  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802E5A7C  38 00 00 81 */	li r0, 0x81
/* 802E5A80  98 1F 00 11 */	stb r0, 0x11(r31)
/* 802E5A84  38 00 00 1E */	li r0, 0x1e
/* 802E5A88  98 1F 00 12 */	stb r0, 0x12(r31)
/* 802E5A8C  48 05 CC 89 */	bl OSGetTick
/* 802E5A90  90 7F 00 00 */	stw r3, 0(r31)
/* 802E5A94  83 ED 8F D8 */	lwz r31, sManager__10JUTProcBar(r13)
/* 802E5A98  38 00 00 FF */	li r0, 0xff
/* 802E5A9C  98 1F 00 38 */	stb r0, 0x38(r31)
/* 802E5AA0  38 00 00 81 */	li r0, 0x81
/* 802E5AA4  98 1F 00 39 */	stb r0, 0x39(r31)
/* 802E5AA8  38 00 00 1E */	li r0, 0x1e
/* 802E5AAC  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 802E5AB0  48 05 CC 65 */	bl OSGetTick
/* 802E5AB4  90 7F 00 28 */	stw r3, 0x28(r31)
/* 802E5AB8  83 ED 8F D8 */	lwz r31, sManager__10JUTProcBar(r13)
/* 802E5ABC  38 00 00 FF */	li r0, 0xff
/* 802E5AC0  98 1F 00 24 */	stb r0, 0x24(r31)
/* 802E5AC4  38 00 00 81 */	li r0, 0x81
/* 802E5AC8  98 1F 00 25 */	stb r0, 0x25(r31)
/* 802E5ACC  38 00 00 1E */	li r0, 0x1e
/* 802E5AD0  98 1F 00 26 */	stb r0, 0x26(r31)
/* 802E5AD4  48 05 CC 41 */	bl OSGetTick
/* 802E5AD8  90 7F 00 14 */	stw r3, 0x14(r31)
/* 802E5ADC  83 ED 8F D8 */	lwz r31, sManager__10JUTProcBar(r13)
/* 802E5AE0  38 00 00 FF */	li r0, 0xff
/* 802E5AE4  98 1F 00 60 */	stb r0, 0x60(r31)
/* 802E5AE8  38 00 00 81 */	li r0, 0x81
/* 802E5AEC  98 1F 00 61 */	stb r0, 0x61(r31)
/* 802E5AF0  38 00 00 1E */	li r0, 0x1e
/* 802E5AF4  98 1F 00 62 */	stb r0, 0x62(r31)
/* 802E5AF8  48 05 CC 1D */	bl OSGetTick
/* 802E5AFC  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802E5B00  38 00 00 00 */	li r0, 0
/* 802E5B04  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 802E5B08  90 03 01 04 */	stw r0, 0x104(r3)
/* 802E5B0C  C0 02 C6 D8 */	lfs f0, lit_2258(r2)
/* 802E5B10  D0 0D 83 80 */	stfs f0, oneFrameRate(r13)
/* 802E5B14  C0 02 C6 DC */	lfs f0, lit_2259(r2)
/* 802E5B18  D0 0D 83 84 */	stfs f0, oneFrameRateUser(r13)
/* 802E5B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5B24  7C 08 03 A6 */	mtlr r0
/* 802E5B28  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5B2C  4E 80 00 20 */	blr 
