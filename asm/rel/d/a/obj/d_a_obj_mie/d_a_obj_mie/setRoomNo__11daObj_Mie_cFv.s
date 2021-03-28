lbl_80C953C8:
/* 80C953C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C953CC  7C 08 02 A6 */	mflr r0
/* 80C953D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C953D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C953D8  7C 7F 1B 78 */	mr r31, r3
/* 80C953DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C953E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C953E4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C953E8  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80C953EC  4B 3D FD 14 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C953F0  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80C953F4  98 7F 07 72 */	stb r3, 0x772(r31)
/* 80C953F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C953FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95400  7C 08 03 A6 */	mtlr r0
/* 80C95404  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95408  4E 80 00 20 */	blr 
