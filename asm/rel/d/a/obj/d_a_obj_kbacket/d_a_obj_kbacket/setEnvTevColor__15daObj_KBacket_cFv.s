lbl_805875C0:
/* 805875C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805875C4  7C 08 02 A6 */	mflr r0
/* 805875C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805875CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805875D0  93 C1 00 08 */	stw r30, 8(r1)
/* 805875D4  7C 7E 1B 78 */	mr r30, r3
/* 805875D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805875DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805875E0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 805875E4  7F E3 FB 78 */	mr r3, r31
/* 805875E8  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 805875EC  4B AE D5 FC */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 805875F0  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 805875F4  7F E3 FB 78 */	mr r3, r31
/* 805875F8  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 805875FC  4B AE DB 04 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80587600  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80587604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80587608  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058760C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587610  7C 08 03 A6 */	mtlr r0
/* 80587614  38 21 00 10 */	addi r1, r1, 0x10
/* 80587618  4E 80 00 20 */	blr 
