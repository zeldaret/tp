lbl_8067B2B0:
/* 8067B2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067B2B4  7C 08 02 A6 */	mflr r0
/* 8067B2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067B2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067B2C0  7C 7F 1B 78 */	mr r31, r3
/* 8067B2C4  4B FF E2 31 */	bl player_way_check__10e_ai_classFv
/* 8067B2C8  2C 03 00 00 */	cmpwi r3, 0
/* 8067B2CC  41 82 00 24 */	beq lbl_8067B2F0
/* 8067B2D0  80 1F 0C 64 */	lwz r0, 0xc64(r31)
/* 8067B2D4  60 00 00 01 */	ori r0, r0, 1
/* 8067B2D8  90 1F 0C 64 */	stw r0, 0xc64(r31)
/* 8067B2DC  38 00 00 02 */	li r0, 2
/* 8067B2E0  98 1F 0C 82 */	stb r0, 0xc82(r31)
/* 8067B2E4  38 00 00 01 */	li r0, 1
/* 8067B2E8  98 1F 0D 28 */	stb r0, 0xd28(r31)
/* 8067B2EC  48 00 00 1C */	b lbl_8067B308
lbl_8067B2F0:
/* 8067B2F0  80 1F 0C 64 */	lwz r0, 0xc64(r31)
/* 8067B2F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8067B2F8  90 1F 0C 64 */	stw r0, 0xc64(r31)
/* 8067B2FC  38 00 00 00 */	li r0, 0
/* 8067B300  98 1F 0C 82 */	stb r0, 0xc82(r31)
/* 8067B304  98 1F 0D 28 */	stb r0, 0xd28(r31)
lbl_8067B308:
/* 8067B308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067B30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067B310  7C 08 03 A6 */	mtlr r0
/* 8067B314  38 21 00 10 */	addi r1, r1, 0x10
/* 8067B318  4E 80 00 20 */	blr 
