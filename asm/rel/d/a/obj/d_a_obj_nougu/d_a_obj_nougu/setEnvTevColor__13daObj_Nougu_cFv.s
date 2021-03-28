lbl_80CA4708:
/* 80CA4708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA470C  7C 08 02 A6 */	mflr r0
/* 80CA4710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA4718  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA471C  7C 7E 1B 78 */	mr r30, r3
/* 80CA4720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA4724  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA4728  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CA472C  7F E3 FB 78 */	mr r3, r31
/* 80CA4730  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CA4734  4B 3D 04 B4 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80CA4738  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80CA473C  7F E3 FB 78 */	mr r3, r31
/* 80CA4740  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CA4744  4B 3D 09 BC */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CA4748  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80CA474C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA4750  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA4754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4758  7C 08 03 A6 */	mtlr r0
/* 80CA475C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4760  4E 80 00 20 */	blr 
