lbl_8002F24C:
/* 8002F24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F250  7C 08 02 A6 */	mflr r0
/* 8002F254  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F25C  7C 7F 1B 78 */	mr r31, r3
/* 8002F260  7C 8C 23 78 */	mr r12, r4
/* 8002F264  7C AB 2B 78 */	mr r11, r5
/* 8002F268  7C CA 33 78 */	mr r10, r6
/* 8002F26C  7C E0 3B 78 */	mr r0, r7
/* 8002F270  7D 09 43 78 */	mr r9, r8
/* 8002F274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F27C  38 63 00 80 */	addi r3, r3, 0x80
/* 8002F280  7F E4 FB 78 */	mr r4, r31
/* 8002F284  7D 85 63 78 */	mr r5, r12
/* 8002F288  7D 66 5B 78 */	mr r6, r11
/* 8002F28C  7D 47 53 78 */	mr r7, r10
/* 8002F290  7C 08 03 78 */	mr r8, r0
/* 8002F294  48 00 3C 99 */	bl setWarpItemData__27dSv_player_last_mark_info_cFPCcRC4cXyzsScUcUc
/* 8002F298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F2A0  7C 08 03 A6 */	mtlr r0
/* 8002F2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F2A8  4E 80 00 20 */	blr 
