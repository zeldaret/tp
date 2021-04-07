lbl_80C14CB0:
/* 80C14CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14CB4  7C 08 02 A6 */	mflr r0
/* 80C14CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14CBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C14CC0  7C 7F 1B 78 */	mr r31, r3
/* 80C14CC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C14CC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C14CCC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C14CD0  38 9F 07 D8 */	addi r4, r31, 0x7d8
/* 80C14CD4  4B 46 04 2D */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C14CD8  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80C14CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C14CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14CE4  7C 08 03 A6 */	mtlr r0
/* 80C14CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14CEC  4E 80 00 20 */	blr 
