lbl_80BADF90:
/* 80BADF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADF94  7C 08 02 A6 */	mflr r0
/* 80BADF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADFA0  7C 7F 1B 78 */	mr r31, r3
/* 80BADFA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BADFA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BADFAC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BADFB0  38 9F 07 A4 */	addi r4, r31, 0x7a4
/* 80BADFB4  4B 4C 71 4C */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80BADFB8  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80BADFBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADFC4  7C 08 03 A6 */	mtlr r0
/* 80BADFC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADFCC  4E 80 00 20 */	blr 
