lbl_80CB7924:
/* 80CB7924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB7928  7C 08 02 A6 */	mflr r0
/* 80CB792C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB7930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB7934  7C 7F 1B 78 */	mr r31, r3
/* 80CB7938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB793C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB7940  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB7944  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80CB7948  4B 3B D7 B9 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CB794C  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80CB7950  98 7F 07 72 */	stb r3, 0x772(r31)
/* 80CB7954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB7958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB795C  7C 08 03 A6 */	mtlr r0
/* 80CB7960  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB7964  4E 80 00 20 */	blr 
