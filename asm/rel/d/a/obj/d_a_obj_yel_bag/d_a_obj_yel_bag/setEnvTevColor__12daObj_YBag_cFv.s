lbl_80D3D468:
/* 80D3D468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3D46C  7C 08 02 A6 */	mflr r0
/* 80D3D470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3D474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3D478  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3D47C  7C 7E 1B 78 */	mr r30, r3
/* 80D3D480  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3D484  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3D488  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80D3D48C  7F E3 FB 78 */	mr r3, r31
/* 80D3D490  38 9E 09 2C */	addi r4, r30, 0x92c
/* 80D3D494  4B 33 77 54 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80D3D498  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80D3D49C  7F E3 FB 78 */	mr r3, r31
/* 80D3D4A0  38 9E 09 2C */	addi r4, r30, 0x92c
/* 80D3D4A4  4B 33 7C 5C */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80D3D4A8  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80D3D4AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3D4B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3D4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3D4B8  7C 08 03 A6 */	mtlr r0
/* 80D3D4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3D4C0  4E 80 00 20 */	blr 
