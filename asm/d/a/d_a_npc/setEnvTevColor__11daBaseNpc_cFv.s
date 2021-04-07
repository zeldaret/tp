lbl_8014F0A0:
/* 8014F0A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014F0A4  7C 08 02 A6 */	mflr r0
/* 8014F0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014F0AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014F0B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8014F0B4  7C 7E 1B 78 */	mr r30, r3
/* 8014F0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014F0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014F0C0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8014F0C4  7F E3 FB 78 */	mr r3, r31
/* 8014F0C8  38 9E 09 E8 */	addi r4, r30, 0x9e8
/* 8014F0CC  4B F2 5B 1D */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 8014F0D0  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 8014F0D4  7F E3 FB 78 */	mr r3, r31
/* 8014F0D8  38 9E 09 E8 */	addi r4, r30, 0x9e8
/* 8014F0DC  4B F2 60 25 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8014F0E0  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 8014F0E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014F0E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014F0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014F0F0  7C 08 03 A6 */	mtlr r0
/* 8014F0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014F0F8  4E 80 00 20 */	blr 
