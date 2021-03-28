lbl_80C9536C:
/* 80C9536C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95370  7C 08 02 A6 */	mflr r0
/* 80C95374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9537C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C95380  7C 7E 1B 78 */	mr r30, r3
/* 80C95384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C95388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9538C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C95390  7F E3 FB 78 */	mr r3, r31
/* 80C95394  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80C95398  4B 3D F8 50 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80C9539C  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80C953A0  7F E3 FB 78 */	mr r3, r31
/* 80C953A4  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80C953A8  4B 3D FD 58 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C953AC  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80C953B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C953B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C953B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C953BC  7C 08 03 A6 */	mtlr r0
/* 80C953C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C953C4  4E 80 00 20 */	blr 
