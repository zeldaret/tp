lbl_80156D1C:
/* 80156D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156D20  7C 08 02 A6 */	mflr r0
/* 80156D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156D2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80156D30  7C 7E 1B 78 */	mr r30, r3
/* 80156D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80156D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80156D3C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80156D40  7F E3 FB 78 */	mr r3, r31
/* 80156D44  38 9E 07 24 */	addi r4, r30, 0x724
/* 80156D48  4B F1 DE A1 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80156D4C  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80156D50  7F E3 FB 78 */	mr r3, r31
/* 80156D54  38 9E 07 24 */	addi r4, r30, 0x724
/* 80156D58  4B F1 E3 A9 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80156D5C  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80156D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80156D64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80156D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156D6C  7C 08 03 A6 */	mtlr r0
/* 80156D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80156D74  4E 80 00 20 */	blr 
