lbl_8002B2C8:
/* 8002B2C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002B2CC  7C 08 02 A6 */	mflr r0
/* 8002B2D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002B2D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002B2D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8002B2DC  7C 7E 1B 78 */	mr r30, r3
/* 8002B2E0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8002B2E4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8002B2E8  48 1F 0B 81 */	bl init__13dMeter2Info_cFv
/* 8002B2EC  83 FE 4F 84 */	lwz r31, 0x4f84(r30)
/* 8002B2F0  38 7E 4E 84 */	addi r3, r30, 0x4e84
/* 8002B2F4  38 80 00 00 */	li r4, 0
/* 8002B2F8  38 A0 01 2C */	li r5, 0x12c
/* 8002B2FC  4B FD 81 5D */	bl memset
/* 8002B300  93 FE 4F 84 */	stw r31, 0x4f84(r30)
/* 8002B304  38 00 02 58 */	li r0, 0x258
/* 8002B308  90 1E 4E A8 */	stw r0, 0x4ea8(r30)
/* 8002B30C  90 1E 4E AC */	stw r0, 0x4eac(r30)
/* 8002B310  90 1E 4E B0 */	stw r0, 0x4eb0(r30)
/* 8002B314  38 60 00 3E */	li r3, 0x3e
/* 8002B318  48 00 31 B5 */	bl dComIfGs_checkGetItem__FUc
/* 8002B31C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002B320  41 82 00 10 */	beq lbl_8002B330
/* 8002B324  38 00 00 00 */	li r0, 0
/* 8002B328  98 1E 4F 4B */	stb r0, 0x4f4b(r30)
/* 8002B32C  48 00 00 0C */	b lbl_8002B338
lbl_8002B330:
/* 8002B330  38 00 00 15 */	li r0, 0x15
/* 8002B334  98 1E 4F 4B */	stb r0, 0x4f4b(r30)
lbl_8002B338:
/* 8002B338  38 00 00 07 */	li r0, 7
/* 8002B33C  98 1E 4F 4C */	stb r0, 0x4f4c(r30)
/* 8002B340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002B344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002B348  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8002B34C  48 00 93 49 */	bl getVibration__19dSv_player_config_cFv
/* 8002B350  98 7E 4F 5A */	stb r3, 0x4f5a(r30)
/* 8002B354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002B358  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002B35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002B360  7C 08 03 A6 */	mtlr r0
/* 8002B364  38 21 00 10 */	addi r1, r1, 0x10
/* 8002B368  4E 80 00 20 */	blr 
