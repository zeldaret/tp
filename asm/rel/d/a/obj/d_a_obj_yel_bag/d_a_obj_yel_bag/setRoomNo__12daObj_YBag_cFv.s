lbl_80D3D4C4:
/* 80D3D4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3D4C8  7C 08 02 A6 */	mflr r0
/* 80D3D4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3D4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3D4D4  7C 7F 1B 78 */	mr r31, r3
/* 80D3D4D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3D4DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3D4E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D3D4E4  38 9F 09 2C */	addi r4, r31, 0x92c
/* 80D3D4E8  4B 33 7C 18 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80D3D4EC  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80D3D4F0  98 7F 07 82 */	stb r3, 0x782(r31)
/* 80D3D4F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3D4F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3D4FC  7C 08 03 A6 */	mtlr r0
/* 80D3D500  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3D504  4E 80 00 20 */	blr 
