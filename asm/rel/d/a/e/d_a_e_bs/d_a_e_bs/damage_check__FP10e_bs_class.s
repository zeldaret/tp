lbl_8068F208:
/* 8068F208  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8068F20C  7C 08 02 A6 */	mflr r0
/* 8068F210  90 01 00 54 */	stw r0, 0x54(r1)
/* 8068F214  39 61 00 50 */	addi r11, r1, 0x50
/* 8068F218  4B CD 2F B9 */	bl _savegpr_26
/* 8068F21C  7C 7E 1B 78 */	mr r30, r3
/* 8068F220  3C 60 80 69 */	lis r3, lit_3788@ha /* 0x80690DD8@ha */
/* 8068F224  3B E3 0D D8 */	addi r31, r3, lit_3788@l /* 0x80690DD8@l */
/* 8068F228  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 8068F22C  2C 00 00 00 */	cmpwi r0, 0
/* 8068F230  40 82 02 7C */	bne lbl_8068F4AC
/* 8068F234  38 7E 09 0C */	addi r3, r30, 0x90c
/* 8068F238  4B 9F 45 F9 */	bl Move__10dCcD_GSttsFv
/* 8068F23C  3B 80 00 00 */	li r28, 0
/* 8068F240  3B A0 00 00 */	li r29, 0
lbl_8068F244:
/* 8068F244  3B 7D 09 2C */	addi r27, r29, 0x92c
/* 8068F248  7F 7E DA 14 */	add r27, r30, r27
/* 8068F24C  7F 63 DB 78 */	mr r3, r27
/* 8068F250  4B 9F 52 11 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8068F254  28 03 00 00 */	cmplwi r3, 0
/* 8068F258  41 82 02 10 */	beq lbl_8068F468
/* 8068F25C  7F 63 DB 78 */	mr r3, r27
/* 8068F260  4B 9F 52 99 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8068F264  90 7E 0C D4 */	stw r3, 0xcd4(r30)
/* 8068F268  7F C3 F3 78 */	mr r3, r30
/* 8068F26C  38 9E 0C D4 */	addi r4, r30, 0xcd4
/* 8068F270  4B 9F 89 95 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8068F274  80 7E 0C D4 */	lwz r3, 0xcd4(r30)
/* 8068F278  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8068F27C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8068F280  41 82 00 10 */	beq lbl_8068F290
/* 8068F284  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 8068F288  38 03 FF F6 */	addi r0, r3, -10
/* 8068F28C  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8068F290:
/* 8068F290  80 7E 0C D4 */	lwz r3, 0xcd4(r30)
/* 8068F294  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8068F298  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8068F29C  41 82 00 10 */	beq lbl_8068F2AC
/* 8068F2A0  38 00 00 14 */	li r0, 0x14
/* 8068F2A4  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8068F2A8  48 00 00 0C */	b lbl_8068F2B4
lbl_8068F2AC:
/* 8068F2AC  38 00 00 0A */	li r0, 0xa
/* 8068F2B0  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
lbl_8068F2B4:
/* 8068F2B4  A0 1E 0C F0 */	lhz r0, 0xcf0(r30)
/* 8068F2B8  28 00 00 01 */	cmplwi r0, 1
/* 8068F2BC  41 81 00 0C */	bgt lbl_8068F2C8
/* 8068F2C0  38 00 00 0A */	li r0, 0xa
/* 8068F2C4  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
lbl_8068F2C8:
/* 8068F2C8  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8068F2CC  2C 00 00 00 */	cmpwi r0, 0
/* 8068F2D0  41 81 01 18 */	bgt lbl_8068F3E8
/* 8068F2D4  3B 40 00 00 */	li r26, 0
/* 8068F2D8  3B A0 00 00 */	li r29, 0
/* 8068F2DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068F2E0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068F2E4  3C 60 80 69 */	lis r3, ap_name_4233@ha /* 0x80690F40@ha */
/* 8068F2E8  3B 83 0F 40 */	addi r28, r3, ap_name_4233@l /* 0x80690F40@l */
lbl_8068F2EC:
/* 8068F2EC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8068F2F0  38 80 00 00 */	li r4, 0
/* 8068F2F4  90 81 00 08 */	stw r4, 8(r1)
/* 8068F2F8  38 00 FF FF */	li r0, -1
/* 8068F2FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068F300  90 81 00 10 */	stw r4, 0x10(r1)
/* 8068F304  90 81 00 14 */	stw r4, 0x14(r1)
/* 8068F308  90 81 00 18 */	stw r4, 0x18(r1)
/* 8068F30C  38 80 00 00 */	li r4, 0
/* 8068F310  7C BC EA 2E */	lhzx r5, r28, r29
/* 8068F314  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8068F318  38 E0 00 00 */	li r7, 0
/* 8068F31C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8068F320  39 20 00 00 */	li r9, 0
/* 8068F324  39 40 00 FF */	li r10, 0xff
/* 8068F328  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068F32C  4B 9B D7 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068F330  3B 5A 00 01 */	addi r26, r26, 1
/* 8068F334  2C 1A 00 02 */	cmpwi r26, 2
/* 8068F338  3B BD 00 02 */	addi r29, r29, 2
/* 8068F33C  40 81 FF B0 */	ble lbl_8068F2EC
/* 8068F340  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700AE@ha */
/* 8068F344  38 03 00 AE */	addi r0, r3, 0x00AE /* 0x000700AE@l */
/* 8068F348  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8068F34C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068F350  38 81 00 2C */	addi r4, r1, 0x2c
/* 8068F354  38 A0 FF FF */	li r5, -1
/* 8068F358  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 8068F35C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8068F360  7D 89 03 A6 */	mtctr r12
/* 8068F364  4E 80 04 21 */	bctrl 
/* 8068F368  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B0@ha */
/* 8068F36C  38 03 00 B0 */	addi r0, r3, 0x00B0 /* 0x000700B0@l */
/* 8068F370  90 01 00 28 */	stw r0, 0x28(r1)
/* 8068F374  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068F378  38 81 00 28 */	addi r4, r1, 0x28
/* 8068F37C  38 A0 00 00 */	li r5, 0
/* 8068F380  38 C0 FF FF */	li r6, -1
/* 8068F384  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 8068F388  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068F38C  7D 89 03 A6 */	mtctr r12
/* 8068F390  4E 80 04 21 */	bctrl 
/* 8068F394  7F C3 F3 78 */	mr r3, r30
/* 8068F398  4B 98 A8 E5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8068F39C  38 60 00 1F */	li r3, 0x1f
/* 8068F3A0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8068F3A4  38 A0 FF FF */	li r5, -1
/* 8068F3A8  38 C0 FF FF */	li r6, -1
/* 8068F3AC  38 E0 00 00 */	li r7, 0
/* 8068F3B0  39 00 00 00 */	li r8, 0
/* 8068F3B4  39 20 00 00 */	li r9, 0
/* 8068F3B8  39 40 00 00 */	li r10, 0
/* 8068F3BC  4B 98 CA 59 */	bl fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 8068F3C0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8068F3C4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8068F3C8  2C 04 00 FF */	cmpwi r4, 0xff
/* 8068F3CC  41 82 00 AC */	beq lbl_8068F478
/* 8068F3D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068F3D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068F3D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8068F3DC  7C 05 07 74 */	extsb r5, r0
/* 8068F3E0  4B 9A 5E 21 */	bl onSwitch__10dSv_info_cFii
/* 8068F3E4  48 00 00 94 */	b lbl_8068F478
lbl_8068F3E8:
/* 8068F3E8  38 00 00 04 */	li r0, 4
/* 8068F3EC  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8068F3F0  38 00 00 00 */	li r0, 0
/* 8068F3F4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068F3F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700AD@ha */
/* 8068F3FC  38 03 00 AD */	addi r0, r3, 0x00AD /* 0x000700AD@l */
/* 8068F400  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068F404  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068F408  38 81 00 24 */	addi r4, r1, 0x24
/* 8068F40C  38 A0 FF FF */	li r5, -1
/* 8068F410  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 8068F414  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8068F418  7D 89 03 A6 */	mtctr r12
/* 8068F41C  4E 80 04 21 */	bctrl 
/* 8068F420  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B1@ha */
/* 8068F424  38 03 00 B1 */	addi r0, r3, 0x00B1 /* 0x000700B1@l */
/* 8068F428  90 01 00 20 */	stw r0, 0x20(r1)
/* 8068F42C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068F430  38 81 00 20 */	addi r4, r1, 0x20
/* 8068F434  38 A0 00 00 */	li r5, 0
/* 8068F438  38 C0 FF FF */	li r6, -1
/* 8068F43C  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 8068F440  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068F444  7D 89 03 A6 */	mtctr r12
/* 8068F448  4E 80 04 21 */	bctrl 
/* 8068F44C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8068F450  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 8068F454  A8 1E 0C E2 */	lha r0, 0xce2(r30)
/* 8068F458  B0 1E 06 BC */	sth r0, 0x6bc(r30)
/* 8068F45C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068F460  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8068F464  48 00 00 14 */	b lbl_8068F478
lbl_8068F468:
/* 8068F468  3B 9C 00 01 */	addi r28, r28, 1
/* 8068F46C  2C 1C 00 02 */	cmpwi r28, 2
/* 8068F470  3B BD 01 38 */	addi r29, r29, 0x138
/* 8068F474  41 80 FD D0 */	blt lbl_8068F244
lbl_8068F478:
/* 8068F478  38 60 00 00 */	li r3, 0
/* 8068F47C  38 A0 00 00 */	li r5, 0
/* 8068F480  38 80 00 03 */	li r4, 3
/* 8068F484  38 00 00 02 */	li r0, 2
/* 8068F488  7C 09 03 A6 */	mtctr r0
lbl_8068F48C:
/* 8068F48C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8068F490  2C 00 00 01 */	cmpwi r0, 1
/* 8068F494  41 81 00 10 */	bgt lbl_8068F4A4
/* 8068F498  B0 BE 05 62 */	sth r5, 0x562(r30)
/* 8068F49C  38 03 09 E6 */	addi r0, r3, 0x9e6
/* 8068F4A0  7C 9E 01 AE */	stbx r4, r30, r0
lbl_8068F4A4:
/* 8068F4A4  38 63 01 38 */	addi r3, r3, 0x138
/* 8068F4A8  42 00 FF E4 */	bdnz lbl_8068F48C
lbl_8068F4AC:
/* 8068F4AC  39 61 00 50 */	addi r11, r1, 0x50
/* 8068F4B0  4B CD 2D 6D */	bl _restgpr_26
/* 8068F4B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8068F4B8  7C 08 03 A6 */	mtlr r0
/* 8068F4BC  38 21 00 50 */	addi r1, r1, 0x50
/* 8068F4C0  4E 80 00 20 */	blr 
