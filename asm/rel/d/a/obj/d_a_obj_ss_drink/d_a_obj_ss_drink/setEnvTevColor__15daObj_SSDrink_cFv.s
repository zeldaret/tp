lbl_80CE5FE4:
/* 80CE5FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE5FE8  7C 08 02 A6 */	mflr r0
/* 80CE5FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE5FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE5FF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE5FF8  7C 7E 1B 78 */	mr r30, r3
/* 80CE5FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE6000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE6004  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CE6008  7F E3 FB 78 */	mr r3, r31
/* 80CE600C  38 9E 0A 70 */	addi r4, r30, 0xa70
/* 80CE6010  4B 38 EB D8 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80CE6014  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80CE6018  7F E3 FB 78 */	mr r3, r31
/* 80CE601C  38 9E 0A 70 */	addi r4, r30, 0xa70
/* 80CE6020  4B 38 F0 E0 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CE6024  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80CE6028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE602C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE6030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6034  7C 08 03 A6 */	mtlr r0
/* 80CE6038  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE603C  4E 80 00 20 */	blr 
