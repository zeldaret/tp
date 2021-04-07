lbl_80CA7318:
/* 80CA7318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA731C  7C 08 02 A6 */	mflr r0
/* 80CA7320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7328  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA732C  7C 7E 1B 78 */	mr r30, r3
/* 80CA7330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA7334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA7338  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CA733C  7F E3 FB 78 */	mr r3, r31
/* 80CA7340  38 9E 0A 70 */	addi r4, r30, 0xa70
/* 80CA7344  4B 3C D8 A5 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80CA7348  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80CA734C  7F E3 FB 78 */	mr r3, r31
/* 80CA7350  38 9E 0A 70 */	addi r4, r30, 0xa70
/* 80CA7354  4B 3C DD AD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CA7358  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80CA735C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7360  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA7364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7368  7C 08 03 A6 */	mtlr r0
/* 80CA736C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7370  4E 80 00 20 */	blr 
