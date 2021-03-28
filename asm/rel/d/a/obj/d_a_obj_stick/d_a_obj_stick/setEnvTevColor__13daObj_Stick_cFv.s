lbl_80599B8C:
/* 80599B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599B90  7C 08 02 A6 */	mflr r0
/* 80599B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599B9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80599BA0  7C 7E 1B 78 */	mr r30, r3
/* 80599BA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80599BA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80599BAC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80599BB0  7F E3 FB 78 */	mr r3, r31
/* 80599BB4  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80599BB8  4B AD B0 30 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80599BBC  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80599BC0  7F E3 FB 78 */	mr r3, r31
/* 80599BC4  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80599BC8  4B AD B5 38 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80599BCC  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80599BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599BD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80599BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599BDC  7C 08 03 A6 */	mtlr r0
/* 80599BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80599BE4  4E 80 00 20 */	blr 
