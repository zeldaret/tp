lbl_80D44DCC:
/* 80D44DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44DD0  7C 08 02 A6 */	mflr r0
/* 80D44DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D44DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D44DE0  7C 7E 1B 78 */	mr r30, r3
/* 80D44DE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D44DE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D44DEC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80D44DF0  7F E3 FB 78 */	mr r3, r31
/* 80D44DF4  38 9E 07 F4 */	addi r4, r30, 0x7f4
/* 80D44DF8  4B 32 FD F1 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80D44DFC  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80D44E00  7F E3 FB 78 */	mr r3, r31
/* 80D44E04  38 9E 07 F4 */	addi r4, r30, 0x7f4
/* 80D44E08  4B 33 02 F9 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80D44E0C  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80D44E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D44E14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D44E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44E1C  7C 08 03 A6 */	mtlr r0
/* 80D44E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44E24  4E 80 00 20 */	blr 
