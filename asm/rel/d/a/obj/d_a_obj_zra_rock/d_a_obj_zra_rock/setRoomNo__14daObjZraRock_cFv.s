lbl_80D44E28:
/* 80D44E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44E2C  7C 08 02 A6 */	mflr r0
/* 80D44E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D44E38  7C 7F 1B 78 */	mr r31, r3
/* 80D44E3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D44E40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D44E44  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D44E48  38 9F 07 F4 */	addi r4, r31, 0x7f4
/* 80D44E4C  4B 33 02 B5 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80D44E50  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80D44E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D44E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44E5C  7C 08 03 A6 */	mtlr r0
/* 80D44E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44E64  4E 80 00 20 */	blr 
