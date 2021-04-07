lbl_80034644:
/* 80034644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034648  7C 08 02 A6 */	mflr r0
/* 8003464C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034650  80 0D 8F 60 */	lwz r0, sRumbleSupported__10JUTGamePad(r13)
/* 80034654  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80034658  41 82 00 18 */	beq lbl_80034670
/* 8003465C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80034660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80034664  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80034668  4B FF 6D 49 */	bl getNowVibration__14dComIfG_play_cFv
/* 8003466C  48 00 00 08 */	b lbl_80034674
lbl_80034670:
/* 80034670  38 60 00 00 */	li r3, 0
lbl_80034674:
/* 80034674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034678  7C 08 03 A6 */	mtlr r0
/* 8003467C  38 21 00 10 */	addi r1, r1, 0x10
/* 80034680  4E 80 00 20 */	blr 
