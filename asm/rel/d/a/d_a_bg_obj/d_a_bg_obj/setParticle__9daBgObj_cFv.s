lbl_8045B17C:
/* 8045B17C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8045B180  7C 08 02 A6 */	mflr r0
/* 8045B184  90 01 00 64 */	stw r0, 0x64(r1)
/* 8045B188  39 61 00 60 */	addi r11, r1, 0x60
/* 8045B18C  4B F0 70 3C */	b _savegpr_24
/* 8045B190  7C 79 1B 78 */	mr r25, r3
/* 8045B194  3C 60 80 46 */	lis r3, l_cyl_src@ha
/* 8045B198  3B C3 C9 B8 */	addi r30, r3, l_cyl_src@l
/* 8045B19C  83 99 0C D4 */	lwz r28, 0xcd4(r25)
/* 8045B1A0  83 79 0C D8 */	lwz r27, 0xcd8(r25)
/* 8045B1A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045B1A8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8045B1AC  3F BF 00 02 */	addis r29, r31, 2
/* 8045B1B0  3B 7B 00 04 */	addi r27, r27, 4
/* 8045B1B4  3B BD C2 F8 */	addi r29, r29, -15624
/* 8045B1B8  48 00 01 C8 */	b lbl_8045B380
lbl_8045B1BC:
/* 8045B1BC  80 BB 00 00 */	lwz r5, 0(r27)
/* 8045B1C0  80 1B 00 04 */	lwz r0, 4(r27)
/* 8045B1C4  54 1A 04 3E */	clrlwi r26, r0, 0x10
/* 8045B1C8  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 8045B1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B1D0  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 8045B1D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8045B1D8  39 40 00 FF */	li r10, 0xff
/* 8045B1DC  38 00 00 00 */	li r0, 0
/* 8045B1E0  38 80 00 00 */	li r4, 0
/* 8045B1E4  38 C0 00 00 */	li r6, 0
/* 8045B1E8  54 A3 00 01 */	rlwinm. r3, r5, 0, 0, 0
/* 8045B1EC  41 82 00 20 */	beq lbl_8045B20C
/* 8045B1F0  88 7B 00 09 */	lbz r3, 9(r27)
/* 8045B1F4  98 61 00 24 */	stb r3, 0x24(r1)
/* 8045B1F8  88 7B 00 0A */	lbz r3, 0xa(r27)
/* 8045B1FC  98 61 00 25 */	stb r3, 0x25(r1)
/* 8045B200  88 7B 00 0B */	lbz r3, 0xb(r27)
/* 8045B204  98 61 00 26 */	stb r3, 0x26(r1)
/* 8045B208  38 C0 00 01 */	li r6, 1
lbl_8045B20C:
/* 8045B20C  54 A3 00 43 */	rlwinm. r3, r5, 0, 1, 1
/* 8045B210  41 82 00 08 */	beq lbl_8045B218
/* 8045B214  89 5B 00 08 */	lbz r10, 8(r27)
lbl_8045B218:
/* 8045B218  54 A3 00 85 */	rlwinm. r3, r5, 0, 2, 2
/* 8045B21C  41 82 00 28 */	beq lbl_8045B244
/* 8045B220  88 7B 00 0C */	lbz r3, 0xc(r27)
/* 8045B224  98 61 00 23 */	stb r3, 0x23(r1)
/* 8045B228  88 7B 00 0D */	lbz r3, 0xd(r27)
/* 8045B22C  98 61 00 20 */	stb r3, 0x20(r1)
/* 8045B230  88 7B 00 0E */	lbz r3, 0xe(r27)
/* 8045B234  98 61 00 21 */	stb r3, 0x21(r1)
/* 8045B238  88 7B 00 0F */	lbz r3, 0xf(r27)
/* 8045B23C  98 61 00 22 */	stb r3, 0x22(r1)
/* 8045B240  38 C0 00 01 */	li r6, 1
lbl_8045B244:
/* 8045B244  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8045B248  54 C3 06 3F */	clrlwi. r3, r6, 0x18
/* 8045B24C  41 82 00 10 */	beq lbl_8045B25C
/* 8045B250  38 01 00 24 */	addi r0, r1, 0x24
/* 8045B254  38 81 00 20 */	addi r4, r1, 0x20
/* 8045B258  C0 3E 00 54 */	lfs f1, 0x54(r30)
lbl_8045B25C:
/* 8045B25C  54 A3 67 3F */	rlwinm. r3, r5, 0xc, 0x1c, 0x1f
/* 8045B260  41 82 00 C8 */	beq lbl_8045B328
/* 8045B264  3B 00 00 00 */	li r24, 0
/* 8045B268  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8045B26C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8045B270  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8045B274  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8045B278  2C 03 00 01 */	cmpwi r3, 1
/* 8045B27C  41 82 00 08 */	beq lbl_8045B284
/* 8045B280  48 00 00 34 */	b lbl_8045B2B4
lbl_8045B284:
/* 8045B284  3C 60 80 46 */	lis r3, struct_8045CA20+0x0@ha
/* 8045B288  38 83 CA 20 */	addi r4, r3, struct_8045CA20+0x0@l
/* 8045B28C  38 64 00 8A */	addi r3, r4, 0x8a
/* 8045B290  38 84 00 91 */	addi r4, r4, 0x91
/* 8045B294  7F A5 EB 78 */	mr r5, r29
/* 8045B298  38 C0 00 80 */	li r6, 0x80
/* 8045B29C  4B BE 10 E0 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045B2A0  7C 78 1B 78 */	mr r24, r3
/* 8045B2A4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8045B2A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8045B2AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8045B2B0  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_8045B2B4:
/* 8045B2B4  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8045B2B8  7C 05 07 74 */	extsb r5, r0
/* 8045B2BC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8045B2C0  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha
/* 8045B2C4  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l
/* 8045B2C8  90 01 00 08 */	stw r0, 8(r1)
/* 8045B2CC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8045B2D0  38 00 00 00 */	li r0, 0
/* 8045B2D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8045B2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045B2DC  38 01 00 28 */	addi r0, r1, 0x28
/* 8045B2E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045B2E4  38 80 00 00 */	li r4, 0
/* 8045B2E8  7F 45 D3 78 */	mr r5, r26
/* 8045B2EC  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 8045B2F0  38 E0 00 00 */	li r7, 0
/* 8045B2F4  39 19 0C F4 */	addi r8, r25, 0xcf4
/* 8045B2F8  39 20 00 00 */	li r9, 0
/* 8045B2FC  39 40 00 FF */	li r10, 0xff
/* 8045B300  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8045B304  4B BF 17 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8045B308  7F 04 C3 78 */	mr r4, r24
/* 8045B30C  38 B9 01 0C */	addi r5, r25, 0x10c
/* 8045B310  38 C0 00 03 */	li r6, 3
/* 8045B314  38 E0 00 00 */	li r7, 0
/* 8045B318  39 00 00 00 */	li r8, 0
/* 8045B31C  39 20 00 00 */	li r9, 0
/* 8045B320  4B BE F8 E0 */	b setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 8045B324  48 00 00 54 */	b lbl_8045B378
lbl_8045B328:
/* 8045B328  88 79 04 E2 */	lbz r3, 0x4e2(r25)
/* 8045B32C  7C 66 07 74 */	extsb r6, r3
/* 8045B330  1C A6 04 04 */	mulli r5, r6, 0x404
/* 8045B334  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 8045B338  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l
/* 8045B33C  7C 63 2A 14 */	add r3, r3, r5
/* 8045B340  38 E3 00 6C */	addi r7, r3, 0x6c
/* 8045B344  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8045B348  38 A0 00 00 */	li r5, 0
/* 8045B34C  90 A1 00 08 */	stw r5, 8(r1)
/* 8045B350  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8045B354  90 01 00 10 */	stw r0, 0x10(r1)
/* 8045B358  90 81 00 14 */	stw r4, 0x14(r1)
/* 8045B35C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8045B360  38 80 00 00 */	li r4, 0
/* 8045B364  7F 45 D3 78 */	mr r5, r26
/* 8045B368  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 8045B36C  39 19 0C F4 */	addi r8, r25, 0xcf4
/* 8045B370  39 20 00 00 */	li r9, 0
/* 8045B374  4B BF 17 1C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8045B378:
/* 8045B378  3B 7B 00 10 */	addi r27, r27, 0x10
/* 8045B37C  3B 9C FF FF */	addi r28, r28, -1
lbl_8045B380:
/* 8045B380  28 1C 00 00 */	cmplwi r28, 0
/* 8045B384  40 82 FE 38 */	bne lbl_8045B1BC
/* 8045B388  39 61 00 60 */	addi r11, r1, 0x60
/* 8045B38C  4B F0 6E 88 */	b _restgpr_24
/* 8045B390  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8045B394  7C 08 03 A6 */	mtlr r0
/* 8045B398  38 21 00 60 */	addi r1, r1, 0x60
/* 8045B39C  4E 80 00 20 */	blr 
