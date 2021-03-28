lbl_80A8F278:
/* 80A8F278  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 80A8F27C  7C 08 02 A6 */	mflr r0
/* 80A8F280  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 80A8F284  DB E1 01 B0 */	stfd f31, 0x1b0(r1)
/* 80A8F288  F3 E1 01 B8 */	psq_st f31, 440(r1), 0, 0 /* qr0 */
/* 80A8F28C  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 80A8F290  4B 8D 2F 34 */	b _savegpr_23
/* 80A8F294  7C 7E 1B 78 */	mr r30, r3
/* 80A8F298  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8F29C  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8F2A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A8F2A4  3A E4 61 C0 */	addi r23, r4, g_dComIfG_gameInfo@l
/* 80A8F2A8  83 B7 5D AC */	lwz r29, 0x5dac(r23)
/* 80A8F2AC  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80A8F2B0  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80A8F2B4  80 A3 05 E4 */	lwz r5, 0x5e4(r3)
/* 80A8F2B8  3C 80 80 A9 */	lis r4, stringBase0@ha
/* 80A8F2BC  38 04 25 D0 */	addi r0, r4, stringBase0@l
/* 80A8F2C0  7C 05 00 40 */	cmplw r5, r0
/* 80A8F2C4  40 82 00 10 */	bne lbl_80A8F2D4
/* 80A8F2C8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80A8F2CC  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80A8F2D0  48 00 00 18 */	b lbl_80A8F2E8
lbl_80A8F2D4:
/* 80A8F2D4  80 97 5D AC */	lwz r4, 0x5dac(r23)
/* 80A8F2D8  4B 58 B5 08 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A8F2DC  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80A8F2E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A8F2E4  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
lbl_80A8F2E8:
/* 80A8F2E8  80 77 5D AC */	lwz r3, 0x5dac(r23)
/* 80A8F2EC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A8F2F0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80A8F2F4  7D 89 03 A6 */	mtctr r12
/* 80A8F2F8  4E 80 04 21 */	bctrl 
/* 80A8F2FC  28 03 00 00 */	cmplwi r3, 0
/* 80A8F300  41 82 00 14 */	beq lbl_80A8F314
/* 80A8F304  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8F308  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8F30C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A8F310  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
lbl_80A8F314:
/* 80A8F314  7F C3 F3 78 */	mr r3, r30
/* 80A8F318  80 97 5D AC */	lwz r4, 0x5dac(r23)
/* 80A8F31C  4B 58 B3 F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A8F320  B0 7E 05 DC */	sth r3, 0x5dc(r30)
/* 80A8F324  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80A8F328  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A8F32C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A8F330  FC 00 02 10 */	fabs f0, f0
/* 80A8F334  FC 00 00 18 */	frsp f0, f0
/* 80A8F338  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 80A8F33C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A8F340  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A8F344  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A8F348  FC 00 02 10 */	fabs f0, f0
/* 80A8F34C  FC 20 00 18 */	frsp f1, f0
/* 80A8F350  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8F354  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F358  40 81 00 0C */	ble lbl_80A8F364
/* 80A8F35C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8F360  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
lbl_80A8F364:
/* 80A8F364  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 80A8F368  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 80A8F36C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A8F370  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 80A8F374  3B 80 00 01 */	li r28, 1
/* 80A8F378  3B 60 00 01 */	li r27, 1
/* 80A8F37C  3B 40 00 01 */	li r26, 1
/* 80A8F380  3B 20 00 00 */	li r25, 0
/* 80A8F384  3B 00 00 01 */	li r24, 1
/* 80A8F388  80 1E 09 88 */	lwz r0, 0x988(r30)
/* 80A8F38C  60 00 00 01 */	ori r0, r0, 1
/* 80A8F390  90 1E 09 88 */	stw r0, 0x988(r30)
/* 80A8F394  C0 3E 06 5C */	lfs f1, 0x65c(r30)
/* 80A8F398  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8F39C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F3A0  40 80 02 9C */	bge lbl_80A8F63C
/* 80A8F3A4  3A E0 00 00 */	li r23, 0
/* 80A8F3A8  38 80 00 01 */	li r4, 1
/* 80A8F3AC  B0 9E 05 60 */	sth r4, 0x560(r30)
/* 80A8F3B0  38 00 00 00 */	li r0, 0
/* 80A8F3B4  98 1E 0C 08 */	stb r0, 0xc08(r30)
/* 80A8F3B8  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80A8F3BC  28 00 00 14 */	cmplwi r0, 0x14
/* 80A8F3C0  41 81 01 C4 */	bgt lbl_80A8F584
/* 80A8F3C4  3C 60 80 A9 */	lis r3, lit_6824@ha
/* 80A8F3C8  38 63 28 F0 */	addi r3, r3, lit_6824@l
/* 80A8F3CC  54 00 10 3A */	slwi r0, r0, 2
/* 80A8F3D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A8F3D4  7C 09 03 A6 */	mtctr r0
/* 80A8F3D8  4E 80 04 20 */	bctr 
lbl_80A8F3DC:
/* 80A8F3DC  98 9E 0C 08 */	stb r4, 0xc08(r30)
/* 80A8F3E0  7F C3 F3 78 */	mr r3, r30
/* 80A8F3E4  4B FF AB 11 */	bl npc_ne_wait__FP12npc_ne_class
/* 80A8F3E8  3A E0 00 01 */	li r23, 1
/* 80A8F3EC  48 00 01 98 */	b lbl_80A8F584
lbl_80A8F3F0:
/* 80A8F3F0  7F C3 F3 78 */	mr r3, r30
/* 80A8F3F4  4B FF AE 41 */	bl npc_ne_away__FP12npc_ne_class
/* 80A8F3F8  3A E0 00 01 */	li r23, 1
/* 80A8F3FC  38 00 00 01 */	li r0, 1
/* 80A8F400  98 1E 0C 08 */	stb r0, 0xc08(r30)
/* 80A8F404  48 00 01 80 */	b lbl_80A8F584
lbl_80A8F408:
/* 80A8F408  7F C3 F3 78 */	mr r3, r30
/* 80A8F40C  4B FF B7 65 */	bl npc_ne_tame__FP12npc_ne_class
/* 80A8F410  3A E0 00 01 */	li r23, 1
/* 80A8F414  38 00 00 01 */	li r0, 1
/* 80A8F418  98 1E 0C 08 */	stb r0, 0xc08(r30)
/* 80A8F41C  48 00 01 68 */	b lbl_80A8F584
lbl_80A8F420:
/* 80A8F420  7F C3 F3 78 */	mr r3, r30
/* 80A8F424  4B FF D8 41 */	bl npc_ne_home__FP12npc_ne_class
/* 80A8F428  7C 7C 1B 78 */	mr r28, r3
/* 80A8F42C  3B 40 00 00 */	li r26, 0
/* 80A8F430  48 00 01 54 */	b lbl_80A8F584
lbl_80A8F434:
/* 80A8F434  7F C3 F3 78 */	mr r3, r30
/* 80A8F438  4B FF D4 C1 */	bl npc_ne_roof__FP12npc_ne_class
/* 80A8F43C  3B 40 00 01 */	li r26, 1
/* 80A8F440  48 00 01 44 */	b lbl_80A8F584
lbl_80A8F444:
/* 80A8F444  7F C3 F3 78 */	mr r3, r30
/* 80A8F448  4B FF C1 D5 */	bl npc_ne_bird__FP12npc_ne_class
/* 80A8F44C  48 00 01 38 */	b lbl_80A8F584
lbl_80A8F450:
/* 80A8F450  38 00 00 23 */	li r0, 0x23
/* 80A8F454  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80A8F458  7F C3 F3 78 */	mr r3, r30
/* 80A8F45C  4B FF C6 A1 */	bl npc_ne_ball__FP12npc_ne_class
/* 80A8F460  48 00 01 24 */	b lbl_80A8F584
lbl_80A8F464:
/* 80A8F464  7F C3 F3 78 */	mr r3, r30
/* 80A8F468  4B FF C0 C9 */	bl npc_ne_sanbasi__FP12npc_ne_class
/* 80A8F46C  3B 40 00 00 */	li r26, 0
/* 80A8F470  3B 00 00 00 */	li r24, 0
/* 80A8F474  48 00 01 10 */	b lbl_80A8F584
lbl_80A8F478:
/* 80A8F478  7F C3 F3 78 */	mr r3, r30
/* 80A8F47C  4B FF D0 8D */	bl npc_ne_jump__FP12npc_ne_class
/* 80A8F480  3B 00 00 00 */	li r24, 0
/* 80A8F484  48 00 01 00 */	b lbl_80A8F584
lbl_80A8F488:
/* 80A8F488  7F C3 F3 78 */	mr r3, r30
/* 80A8F48C  4B FF D2 BD */	bl npc_ne_s_jump__FP12npc_ne_class
/* 80A8F490  3B 00 00 00 */	li r24, 0
/* 80A8F494  48 00 00 F0 */	b lbl_80A8F584
lbl_80A8F498:
/* 80A8F498  7F C3 F3 78 */	mr r3, r30
/* 80A8F49C  4B FF CB F9 */	bl npc_ne_pathwalk__FP12npc_ne_class
/* 80A8F4A0  3A E0 00 01 */	li r23, 1
/* 80A8F4A4  38 00 00 01 */	li r0, 1
/* 80A8F4A8  98 1E 0C 08 */	stb r0, 0xc08(r30)
/* 80A8F4AC  48 00 00 D8 */	b lbl_80A8F584
lbl_80A8F4B0:
/* 80A8F4B0  7F C3 F3 78 */	mr r3, r30
/* 80A8F4B4  4B FF EA 2D */	bl npc_ne_swim__FP12npc_ne_class
/* 80A8F4B8  3B 60 00 02 */	li r27, 2
/* 80A8F4BC  3B 20 00 02 */	li r25, 2
/* 80A8F4C0  3B 40 00 00 */	li r26, 0
/* 80A8F4C4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8F4C8  38 9E 0C B6 */	addi r4, r30, 0xcb6
/* 80A8F4CC  38 BE 0C B8 */	addi r5, r30, 0xcb8
/* 80A8F4D0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80A8F4D4  4B 58 DD 20 */	b fopAcM_riverStream__FP4cXyzPsPff
/* 80A8F4D8  48 00 00 AC */	b lbl_80A8F584
lbl_80A8F4DC:
/* 80A8F4DC  7F C3 F3 78 */	mr r3, r30
/* 80A8F4E0  4B FF EC 05 */	bl npc_ne_outswim__FP12npc_ne_class
/* 80A8F4E4  3B 60 00 00 */	li r27, 0
/* 80A8F4E8  3B 80 00 00 */	li r28, 0
/* 80A8F4EC  3B 40 00 00 */	li r26, 0
/* 80A8F4F0  48 00 00 94 */	b lbl_80A8F584
lbl_80A8F4F4:
/* 80A8F4F4  7F C3 F3 78 */	mr r3, r30
/* 80A8F4F8  4B FF EF 31 */	bl npc_ne_climb__FP12npc_ne_class
/* 80A8F4FC  7C 7C 1B 78 */	mr r28, r3
/* 80A8F500  3B 60 00 00 */	li r27, 0
/* 80A8F504  3B 40 00 00 */	li r26, 0
/* 80A8F508  48 00 00 7C */	b lbl_80A8F584
lbl_80A8F50C:
/* 80A8F50C  7F C3 F3 78 */	mr r3, r30
/* 80A8F510  4B FF F5 69 */	bl npc_ne_drop__FP12npc_ne_class
/* 80A8F514  3B 40 00 00 */	li r26, 0
/* 80A8F518  3B 00 00 00 */	li r24, 0
/* 80A8F51C  48 00 00 68 */	b lbl_80A8F584
lbl_80A8F520:
/* 80A8F520  7F C3 F3 78 */	mr r3, r30
/* 80A8F524  4B FF F6 3D */	bl npc_ne_s_drop__FP12npc_ne_class
/* 80A8F528  3B 40 00 00 */	li r26, 0
/* 80A8F52C  3B 00 00 00 */	li r24, 0
/* 80A8F530  48 00 00 54 */	b lbl_80A8F584
lbl_80A8F534:
/* 80A8F534  7F C3 F3 78 */	mr r3, r30
/* 80A8F538  4B FF FC 79 */	bl npc_ne_message__FP12npc_ne_class
/* 80A8F53C  38 00 00 02 */	li r0, 2
/* 80A8F540  98 1E 0C 08 */	stb r0, 0xc08(r30)
/* 80A8F544  48 00 00 40 */	b lbl_80A8F584
lbl_80A8F548:
/* 80A8F548  7F C3 F3 78 */	mr r3, r30
/* 80A8F54C  4B FF FB B1 */	bl npc_ne_dish__FP12npc_ne_class
/* 80A8F550  3B 60 00 00 */	li r27, 0
/* 80A8F554  3B 40 00 00 */	li r26, 0
/* 80A8F558  3B 00 00 00 */	li r24, 0
/* 80A8F55C  48 00 00 28 */	b lbl_80A8F584
lbl_80A8F560:
/* 80A8F560  7F C3 F3 78 */	mr r3, r30
/* 80A8F564  4B FF F7 F5 */	bl npc_ne_carry__FP12npc_ne_class
/* 80A8F568  7C 7C 1B 78 */	mr r28, r3
/* 80A8F56C  3B 60 00 00 */	li r27, 0
/* 80A8F570  3B 40 00 00 */	li r26, 0
/* 80A8F574  80 1E 09 88 */	lwz r0, 0x988(r30)
/* 80A8F578  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A8F57C  90 1E 09 88 */	stw r0, 0x988(r30)
/* 80A8F580  3B 00 00 00 */	li r24, 0
lbl_80A8F584:
/* 80A8F584  80 9E 05 E4 */	lwz r4, 0x5e4(r30)
/* 80A8F588  3C 60 80 A9 */	lis r3, stringBase0@ha
/* 80A8F58C  38 03 25 D0 */	addi r0, r3, stringBase0@l
/* 80A8F590  7C 04 00 40 */	cmplw r4, r0
/* 80A8F594  41 82 00 A8 */	beq lbl_80A8F63C
/* 80A8F598  88 1E 0C 08 */	lbz r0, 0xc08(r30)
/* 80A8F59C  2C 00 00 01 */	cmpwi r0, 1
/* 80A8F5A0  40 82 00 40 */	bne lbl_80A8F5E0
/* 80A8F5A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8F5A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8F5AC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A8F5B0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A8F5B4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A8F5B8  41 82 00 28 */	beq lbl_80A8F5E0
/* 80A8F5BC  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8F5C0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80A8F5C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F5C8  40 80 00 18 */	bge lbl_80A8F5E0
/* 80A8F5CC  38 00 00 11 */	li r0, 0x11
/* 80A8F5D0  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8F5D4  38 00 00 00 */	li r0, 0
/* 80A8F5D8  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8F5DC  3A E0 00 00 */	li r23, 0
lbl_80A8F5E0:
/* 80A8F5E0  2C 17 00 00 */	cmpwi r23, 0
/* 80A8F5E4  41 82 00 58 */	beq lbl_80A8F63C
/* 80A8F5E8  88 1E 07 01 */	lbz r0, 0x701(r30)
/* 80A8F5EC  7C 00 07 75 */	extsb. r0, r0
/* 80A8F5F0  40 82 00 4C */	bne lbl_80A8F63C
/* 80A8F5F4  7F C3 F3 78 */	mr r3, r30
/* 80A8F5F8  4B FF A4 B9 */	bl search_bird__FP12npc_ne_class
/* 80A8F5FC  28 03 00 00 */	cmplwi r3, 0
/* 80A8F600  41 82 00 3C */	beq lbl_80A8F63C
/* 80A8F604  A8 03 00 08 */	lha r0, 8(r3)
/* 80A8F608  2C 00 01 10 */	cmpwi r0, 0x110
/* 80A8F60C  40 82 00 1C */	bne lbl_80A8F628
/* 80A8F610  38 00 00 08 */	li r0, 8
/* 80A8F614  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8F618  38 00 00 00 */	li r0, 0
/* 80A8F61C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8F620  3B 00 00 01 */	li r24, 1
/* 80A8F624  48 00 00 18 */	b lbl_80A8F63C
lbl_80A8F628:
/* 80A8F628  38 00 00 07 */	li r0, 7
/* 80A8F62C  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8F630  38 00 00 00 */	li r0, 0
/* 80A8F634  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8F638  3B 00 00 01 */	li r24, 1
lbl_80A8F63C:
/* 80A8F63C  2C 18 00 00 */	cmpwi r24, 0
/* 80A8F640  41 82 00 30 */	beq lbl_80A8F670
/* 80A8F644  88 1E 07 01 */	lbz r0, 0x701(r30)
/* 80A8F648  7C 00 07 75 */	extsb. r0, r0
/* 80A8F64C  40 82 00 24 */	bne lbl_80A8F670
/* 80A8F650  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80A8F654  60 00 00 10 */	ori r0, r0, 0x10
/* 80A8F658  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A8F65C  7F C3 F3 78 */	mr r3, r30
/* 80A8F660  4B FF 9C 39 */	bl ne_carry_check__FP12npc_ne_class
/* 80A8F664  2C 03 00 00 */	cmpwi r3, 0
/* 80A8F668  41 82 00 14 */	beq lbl_80A8F67C
/* 80A8F66C  48 00 0D 5C */	b lbl_80A903C8
lbl_80A8F670:
/* 80A8F670  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80A8F674  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80A8F678  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A8F67C:
/* 80A8F67C  88 1E 07 01 */	lbz r0, 0x701(r30)
/* 80A8F680  7C 00 07 75 */	extsb. r0, r0
/* 80A8F684  41 82 03 78 */	beq lbl_80A8F9FC
/* 80A8F688  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80A8F68C  2C 00 00 09 */	cmpwi r0, 9
/* 80A8F690  41 82 03 6C */	beq lbl_80A8F9FC
/* 80A8F694  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80A8F698  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80A8F69C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F6A0  40 81 03 5C */	ble lbl_80A8F9FC
/* 80A8F6A4  38 00 02 E4 */	li r0, 0x2e4
/* 80A8F6A8  B0 01 00 08 */	sth r0, 8(r1)
/* 80A8F6AC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80A8F6B0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80A8F6B4  38 81 00 08 */	addi r4, r1, 8
/* 80A8F6B8  4B 58 A1 40 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A8F6BC  28 03 00 00 */	cmplwi r3, 0
/* 80A8F6C0  41 82 00 AC */	beq lbl_80A8F76C
/* 80A8F6C4  A8 03 0F 7C */	lha r0, 0xf7c(r3)
/* 80A8F6C8  2C 00 00 01 */	cmpwi r0, 1
/* 80A8F6CC  40 82 00 A0 */	bne lbl_80A8F76C
/* 80A8F6D0  A8 03 0F 7E */	lha r0, 0xf7e(r3)
/* 80A8F6D4  2C 00 00 05 */	cmpwi r0, 5
/* 80A8F6D8  41 82 00 94 */	beq lbl_80A8F76C
/* 80A8F6DC  A8 03 13 B4 */	lha r0, 0x13b4(r3)
/* 80A8F6E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A8F6E4  41 82 00 88 */	beq lbl_80A8F76C
/* 80A8F6E8  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80A8F6EC  7C 00 07 75 */	extsb. r0, r0
/* 80A8F6F0  40 82 00 7C */	bne lbl_80A8F76C
/* 80A8F6F4  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8F6F8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A8F6FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F700  40 81 02 FC */	ble lbl_80A8F9FC
/* 80A8F704  38 61 00 38 */	addi r3, r1, 0x38
/* 80A8F708  7F C4 F3 78 */	mr r4, r30
/* 80A8F70C  4B FF B1 E9 */	bl ground_search__FP12npc_ne_class
/* 80A8F710  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A8F714  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A8F718  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A8F71C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8F720  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80A8F724  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A8F728  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8F72C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A8F730  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8F734  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A8F738  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8F73C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A8F740  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A8F744  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A8F748  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8F74C  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A8F750  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A8F754  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A8F758  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A8F75C  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80A8F760  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80A8F764  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 80A8F768  48 00 02 94 */	b lbl_80A8F9FC
lbl_80A8F76C:
/* 80A8F76C  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80A8F770  7C 00 07 75 */	extsb. r0, r0
/* 80A8F774  40 82 01 B8 */	bne lbl_80A8F92C
/* 80A8F778  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8F77C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80A8F780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F784  40 81 02 78 */	ble lbl_80A8F9FC
/* 80A8F788  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A8F78C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80A8F790  41 82 02 6C */	beq lbl_80A8F9FC
/* 80A8F794  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A8F798  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A8F79C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F7A0  40 81 02 5C */	ble lbl_80A8F9FC
/* 80A8F7A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8F7A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8F7AC  82 E3 5D 74 */	lwz r23, 0x5d74(r3)
/* 80A8F7B0  C0 37 00 D8 */	lfs f1, 0xd8(r23)
/* 80A8F7B4  C0 17 00 E4 */	lfs f0, 0xe4(r23)
/* 80A8F7B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A8F7BC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80A8F7C0  C0 57 00 E0 */	lfs f2, 0xe0(r23)
/* 80A8F7C4  C0 17 00 EC */	lfs f0, 0xec(r23)
/* 80A8F7C8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A8F7CC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80A8F7D0  4B 7D 7E A4 */	b cM_atan2s__Fff
/* 80A8F7D4  7C 64 1B 78 */	mr r4, r3
/* 80A8F7D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8F7DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8F7E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8F7E4  4B 57 CB F8 */	b mDoMtx_YrotS__FPA4_fs
/* 80A8F7E8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8F7EC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8F7F0  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A8F7F4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8F7F8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8F7FC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8F800  38 61 00 68 */	addi r3, r1, 0x68
/* 80A8F804  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8F808  4B 7E 16 E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8F80C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A8F810  38 97 00 D8 */	addi r4, r23, 0xd8
/* 80A8F814  7C 65 1B 78 */	mr r5, r3
/* 80A8F818  4B 8B 78 78 */	b PSVECAdd
/* 80A8F81C  38 61 01 1C */	addi r3, r1, 0x11c
/* 80A8F820  4B 5E 7F 90 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80A8F824  38 61 01 1C */	addi r3, r1, 0x11c
/* 80A8F828  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8F82C  4B 7D 84 FC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80A8F830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8F834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8F838  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 80A8F83C  7E E3 BB 78 */	mr r3, r23
/* 80A8F840  38 81 01 1C */	addi r4, r1, 0x11c
/* 80A8F844  4B 5E 4C 5C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8F848  FF E0 08 90 */	fmr f31, f1
/* 80A8F84C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80A8F850  4B 5E 7D 2C */	b __ct__11dBgS_GndChkFv
/* 80A8F854  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80A8F858  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8F85C  4B 7D 84 CC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80A8F860  7E E3 BB 78 */	mr r3, r23
/* 80A8F864  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80A8F868  4B 5E 4C 38 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8F86C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80A8F870  FC 20 08 18 */	frsp f1, f1
/* 80A8F874  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A8F878  4C 41 13 82 */	cror 2, 1, 2
/* 80A8F87C  40 82 00 94 */	bne lbl_80A8F910
/* 80A8F880  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A8F884  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A8F888  FC 00 02 10 */	fabs f0, f0
/* 80A8F88C  FC 20 00 18 */	frsp f1, f0
/* 80A8F890  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8F894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F898  40 80 00 78 */	bge lbl_80A8F910
/* 80A8F89C  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80A8F8A0  2C 00 00 02 */	cmpwi r0, 2
/* 80A8F8A4  41 82 00 14 */	beq lbl_80A8F8B8
/* 80A8F8A8  38 00 00 02 */	li r0, 2
/* 80A8F8AC  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8F8B0  38 00 00 00 */	li r0, 0
/* 80A8F8B4  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8F8B8:
/* 80A8F8B8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A8F8BC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A8F8C0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A8F8C4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8F8C8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A8F8CC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A8F8D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8F8D4  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A8F8D8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8F8DC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A8F8E0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8F8E4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A8F8E8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A8F8EC  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A8F8F0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8F8F4  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A8F8F8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A8F8FC  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A8F900  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A8F904  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80A8F908  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80A8F90C  98 1E 04 CF */	stb r0, 0x4cf(r30)
lbl_80A8F910:
/* 80A8F910  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80A8F914  38 80 FF FF */	li r4, -1
/* 80A8F918  4B 5E 7C D8 */	b __dt__11dBgS_GndChkFv
/* 80A8F91C  38 61 01 1C */	addi r3, r1, 0x11c
/* 80A8F920  38 80 FF FF */	li r4, -1
/* 80A8F924  4B 5E 7F 24 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80A8F928  48 00 00 D4 */	b lbl_80A8F9FC
lbl_80A8F92C:
/* 80A8F92C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80A8F930  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A8F934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8F938  40 81 00 C4 */	ble lbl_80A8F9FC
/* 80A8F93C  38 00 00 09 */	li r0, 9
/* 80A8F940  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8F944  38 00 00 00 */	li r0, 0
/* 80A8F948  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8F94C  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80A8F950  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A8F954  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A8F958  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8F95C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80A8F960  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A8F964  38 00 96 79 */	li r0, -27015
/* 80A8F968  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A8F96C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8F970  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A8F974  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8F978  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80A8F97C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8F980  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80A8F984  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8F988  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80A8F98C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A8F990  B0 1E 04 B4 */	sth r0, 0x4b4(r30)
/* 80A8F994  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8F998  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 80A8F99C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A8F9A0  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 80A8F9A4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A8F9A8  98 1E 04 BA */	stb r0, 0x4ba(r30)
/* 80A8F9AC  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80A8F9B0  98 1E 04 BB */	stb r0, 0x4bb(r30)
/* 80A8F9B4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80A8F9B8  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A8F9BC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80A8F9C0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A8F9C4  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80A8F9C8  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A8F9CC  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80A8F9D0  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A8F9D4  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80A8F9D8  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A8F9DC  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80A8F9E0  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A8F9E4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80A8F9E8  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80A8F9EC  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 80A8F9F0  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 80A8F9F4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8F9F8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80A8F9FC:
/* 80A8F9FC  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80A8FA00  38 80 00 00 */	li r4, 0
/* 80A8FA04  38 A0 00 01 */	li r5, 1
/* 80A8FA08  38 C0 04 00 */	li r6, 0x400
/* 80A8FA0C  4B 7E 0B FC */	b cLib_addCalcAngleS2__FPssss
/* 80A8FA10  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8FA14  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8FA18  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8FA1C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80A8FA20  4B 57 C9 BC */	b mDoMtx_YrotS__FPA4_fs
/* 80A8FA24  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FA28  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8FA2C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8FA30  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80A8FA34  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80A8FA38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A8FA3C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8FA40  38 61 00 68 */	addi r3, r1, 0x68
/* 80A8FA44  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8FA48  4B 7E 14 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8FA4C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A8FA50  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A8FA54  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A8FA58  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A8FA5C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80A8FA60  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80A8FA64  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8FA68  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A8FA6C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8FA70  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80A8FA74  7C 65 1B 78 */	mr r5, r3
/* 80A8FA78  4B 8B 76 18 */	b PSVECAdd
/* 80A8FA7C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80A8FA80  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80A8FA84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8FA88  40 80 00 08 */	bge lbl_80A8FA90
/* 80A8FA8C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80A8FA90:
/* 80A8FA90  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A8FA94  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80A8FA98  40 82 00 58 */	bne lbl_80A8FAF0
/* 80A8FA9C  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80A8FAA0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A8FAA4  41 82 00 4C */	beq lbl_80A8FAF0
/* 80A8FAA8  34 7E 09 20 */	addic. r3, r30, 0x920
/* 80A8FAAC  41 82 00 44 */	beq lbl_80A8FAF0
/* 80A8FAB0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80A8FAB4  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80A8FAB8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A8FABC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8FAC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8FAC4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A8FAC8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A8FACC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A8FAD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8FAD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8FAD8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8FADC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80A8FAE0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A8FAE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8FAE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8FAEC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80A8FAF0:
/* 80A8FAF0  C0 3E 06 5C */	lfs f1, 0x65c(r30)
/* 80A8FAF4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8FAF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8FAFC  40 81 00 60 */	ble lbl_80A8FB5C
/* 80A8FB00  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FB04  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8FB08  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8FB0C  FC 00 08 50 */	fneg f0, f1
/* 80A8FB10  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8FB14  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8FB18  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8FB1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8FB20  A8 9E 06 60 */	lha r4, 0x660(r30)
/* 80A8FB24  4B 57 C8 B8 */	b mDoMtx_YrotS__FPA4_fs
/* 80A8FB28  38 61 00 68 */	addi r3, r1, 0x68
/* 80A8FB2C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8FB30  4B 7E 13 BC */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8FB34  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A8FB38  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8FB3C  7C 65 1B 78 */	mr r5, r3
/* 80A8FB40  4B 8B 75 50 */	b PSVECAdd
/* 80A8FB44  38 7E 06 5C */	addi r3, r30, 0x65c
/* 80A8FB48  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8FB4C  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80A8FB50  4B 7D FF 30 */	b cLib_addCalc0__FPfff
/* 80A8FB54  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FB58  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80A8FB5C:
/* 80A8FB5C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A8FB60  41 82 00 24 */	beq lbl_80A8FB84
/* 80A8FB64  38 7E 07 44 */	addi r3, r30, 0x744
/* 80A8FB68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A8FB6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A8FB70  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A8FB74  4B 5E 6F 38 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A8FB78  C0 1E 07 DC */	lfs f0, 0x7dc(r30)
/* 80A8FB7C  D0 1E 09 1C */	stfs f0, 0x91c(r30)
/* 80A8FB80  48 00 00 0C */	b lbl_80A8FB8C
lbl_80A8FB84:
/* 80A8FB84  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8FB88  D0 1E 09 1C */	stfs f0, 0x91c(r30)
lbl_80A8FB8C:
/* 80A8FB8C  2C 1C 00 00 */	cmpwi r28, 0
/* 80A8FB90  41 82 01 1C */	beq lbl_80A8FCAC
/* 80A8FB94  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80A8FB98  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A8FB9C  41 82 01 10 */	beq lbl_80A8FCAC
/* 80A8FBA0  38 61 00 74 */	addi r3, r1, 0x74
/* 80A8FBA4  4B 5E 79 D8 */	b __ct__11dBgS_GndChkFv
/* 80A8FBA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8FBAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8FBB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8FBB4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80A8FBB8  4B 57 C8 24 */	b mDoMtx_YrotS__FPA4_fs
/* 80A8FBBC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FBC0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8FBC4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8FBC8  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 80A8FBCC  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80A8FBD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A8FBD4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8FBD8  38 61 00 68 */	addi r3, r1, 0x68
/* 80A8FBDC  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8FBE0  4B 7E 13 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8FBE4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A8FBE8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A8FBEC  7C 65 1B 78 */	mr r5, r3
/* 80A8FBF0  4B 8B 74 A0 */	b PSVECAdd
/* 80A8FBF4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A8FBF8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A8FBFC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A8FC00  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A8FC04  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8FC08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A8FC0C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A8FC10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A8FC14  38 61 00 74 */	addi r3, r1, 0x74
/* 80A8FC18  38 81 00 50 */	addi r4, r1, 0x50
/* 80A8FC1C  4B 7D 80 F0 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80A8FC20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8FC24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8FC28  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A8FC2C  38 81 00 74 */	addi r4, r1, 0x74
/* 80A8FC30  4B 5E 48 70 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80A8FC34  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80A8FC38  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A8FC3C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A8FC40  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8FC44  4B 7D 6E F0 */	b __mi__4cXyzCFRC3Vec
/* 80A8FC48  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80A8FC4C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80A8FC50  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A8FC54  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8FC58  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80A8FC5C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80A8FC60  FC 00 02 10 */	fabs f0, f0
/* 80A8FC64  FC 60 00 18 */	frsp f3, f0
/* 80A8FC68  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8FC6C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80A8FC70  40 80 00 30 */	bge lbl_80A8FCA0
/* 80A8FC74  EC 21 00 72 */	fmuls f1, f1, f1
/* 80A8FC78  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80A8FC7C  EC 41 00 2A */	fadds f2, f1, f0
/* 80A8FC80  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FC84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A8FC88  40 81 00 0C */	ble lbl_80A8FC94
/* 80A8FC8C  FC 00 10 34 */	frsqrte f0, f2
/* 80A8FC90  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A8FC94:
/* 80A8FC94  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80A8FC98  4B 7D 79 DC */	b cM_atan2s__Fff
/* 80A8FC9C  B0 7E 04 DC */	sth r3, 0x4dc(r30)
lbl_80A8FCA0:
/* 80A8FCA0  38 61 00 74 */	addi r3, r1, 0x74
/* 80A8FCA4  38 80 FF FF */	li r4, -1
/* 80A8FCA8  4B 5E 79 48 */	b __dt__11dBgS_GndChkFv
lbl_80A8FCAC:
/* 80A8FCAC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80A8FCB0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80A8FCB4  38 A0 00 02 */	li r5, 2
/* 80A8FCB8  38 C0 20 00 */	li r6, 0x2000
/* 80A8FCBC  4B 7E 09 4C */	b cLib_addCalcAngleS2__FPssss
/* 80A8FCC0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80A8FCC4  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80A8FCC8  38 A0 00 02 */	li r5, 2
/* 80A8FCCC  38 C0 10 00 */	li r6, 0x1000
/* 80A8FCD0  4B 7E 09 38 */	b cLib_addCalcAngleS2__FPssss
/* 80A8FCD4  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80A8FCD8  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 80A8FCDC  38 A0 00 04 */	li r5, 4
/* 80A8FCE0  38 C0 10 00 */	li r6, 0x1000
/* 80A8FCE4  4B 7E 09 24 */	b cLib_addCalcAngleS2__FPssss
/* 80A8FCE8  38 00 00 00 */	li r0, 0
/* 80A8FCEC  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80A8FCF0  38 7E 06 94 */	addi r3, r30, 0x694
/* 80A8FCF4  A8 9E 06 96 */	lha r4, 0x696(r30)
/* 80A8FCF8  38 A0 00 02 */	li r5, 2
/* 80A8FCFC  38 C0 04 00 */	li r6, 0x400
/* 80A8FD00  4B 7E 09 08 */	b cLib_addCalcAngleS2__FPssss
/* 80A8FD04  2C 1A 00 00 */	cmpwi r26, 0
/* 80A8FD08  41 82 00 9C */	beq lbl_80A8FDA4
/* 80A8FD0C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A8FD10  C0 1E 09 1C */	lfs f0, 0x91c(r30)
/* 80A8FD14  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A8FD18  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80A8FD1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8FD20  40 81 00 44 */	ble lbl_80A8FD64
/* 80A8FD24  38 00 00 0F */	li r0, 0xf
/* 80A8FD28  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8FD2C  38 00 00 00 */	li r0, 0
/* 80A8FD30  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8FD34  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050003@ha */
/* 80A8FD38  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00050003@l */
/* 80A8FD3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A8FD40  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8FD44  38 81 00 10 */	addi r4, r1, 0x10
/* 80A8FD48  38 A0 00 00 */	li r5, 0
/* 80A8FD4C  38 C0 FF FF */	li r6, -1
/* 80A8FD50  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8FD54  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8FD58  7D 89 03 A6 */	mtctr r12
/* 80A8FD5C  4E 80 04 21 */	bctrl 
/* 80A8FD60  48 00 00 44 */	b lbl_80A8FDA4
lbl_80A8FD64:
/* 80A8FD64  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A8FD68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8FD6C  40 81 00 38 */	ble lbl_80A8FDA4
/* 80A8FD70  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80A8FD74  2C 00 00 03 */	cmpwi r0, 3
/* 80A8FD78  41 82 00 2C */	beq lbl_80A8FDA4
/* 80A8FD7C  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80A8FD80  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A8FD84  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80A8FD88  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A8FD8C  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80A8FD90  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A8FD94  38 00 00 10 */	li r0, 0x10
/* 80A8FD98  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8FD9C  38 00 00 00 */	li r0, 0
/* 80A8FDA0  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8FDA4:
/* 80A8FDA4  2C 1B 00 01 */	cmpwi r27, 1
/* 80A8FDA8  40 82 00 50 */	bne lbl_80A8FDF8
/* 80A8FDAC  7F C3 F3 78 */	mr r3, r30
/* 80A8FDB0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8FDB4  4B FF 98 8D */	bl water_check__FP12npc_ne_classf
/* 80A8FDB8  2C 03 00 00 */	cmpwi r3, 0
/* 80A8FDBC  40 81 00 C0 */	ble lbl_80A8FE7C
/* 80A8FDC0  38 00 00 0C */	li r0, 0xc
/* 80A8FDC4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8FDC8  38 60 00 00 */	li r3, 0
/* 80A8FDCC  B0 7E 06 46 */	sth r3, 0x646(r30)
/* 80A8FDD0  38 00 00 01 */	li r0, 1
/* 80A8FDD4  98 1E 07 00 */	stb r0, 0x700(r30)
/* 80A8FDD8  3B 20 00 01 */	li r25, 1
/* 80A8FDDC  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80A8FDE0  28 00 00 02 */	cmplwi r0, 2
/* 80A8FDE4  40 82 00 08 */	bne lbl_80A8FDEC
/* 80A8FDE8  98 7E 05 B4 */	stb r3, 0x5b4(r30)
lbl_80A8FDEC:
/* 80A8FDEC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FDF0  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 80A8FDF4  48 00 00 88 */	b lbl_80A8FE7C
lbl_80A8FDF8:
/* 80A8FDF8  2C 1B 00 02 */	cmpwi r27, 2
/* 80A8FDFC  40 82 00 80 */	bne lbl_80A8FE7C
/* 80A8FE00  7F C3 F3 78 */	mr r3, r30
/* 80A8FE04  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8FE08  4B FF 98 39 */	bl water_check__FP12npc_ne_classf
/* 80A8FE0C  2C 03 00 01 */	cmpwi r3, 1
/* 80A8FE10  41 82 00 6C */	beq lbl_80A8FE7C
/* 80A8FE14  38 00 00 01 */	li r0, 1
/* 80A8FE18  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8FE1C  38 00 00 05 */	li r0, 5
/* 80A8FE20  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8FE24  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8FE28  4B 7D 7B 2C */	b cM_rndF__Ff
/* 80A8FE2C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A8FE30  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8FE34  FC 00 00 1E */	fctiwz f0, f0
/* 80A8FE38  D8 01 01 70 */	stfd f0, 0x170(r1)
/* 80A8FE3C  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80A8FE40  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 80A8FE44  38 00 00 1E */	li r0, 0x1e
/* 80A8FE48  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80A8FE4C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80A8FE50  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80A8FE54  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8FE58  4B 7D 7A FC */	b cM_rndF__Ff
/* 80A8FE5C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A8FE60  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8FE64  FC 00 00 1E */	fctiwz f0, f0
/* 80A8FE68  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80A8FE6C  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 80A8FE70  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8FE74  38 00 00 14 */	li r0, 0x14
/* 80A8FE78  B0 1E 06 4E */	sth r0, 0x64e(r30)
lbl_80A8FE7C:
/* 80A8FE7C  A8 7E 06 78 */	lha r3, 0x678(r30)
/* 80A8FE80  2C 03 00 00 */	cmpwi r3, 0
/* 80A8FE84  41 82 00 14 */	beq lbl_80A8FE98
/* 80A8FE88  38 03 FF FF */	addi r0, r3, -1
/* 80A8FE8C  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 80A8FE90  38 00 00 03 */	li r0, 3
/* 80A8FE94  98 1E 06 68 */	stb r0, 0x668(r30)
lbl_80A8FE98:
/* 80A8FE98  A8 7E 06 7A */	lha r3, 0x67a(r30)
/* 80A8FE9C  2C 03 00 00 */	cmpwi r3, 0
/* 80A8FEA0  41 82 00 5C */	beq lbl_80A8FEFC
/* 80A8FEA4  38 03 FF FF */	addi r0, r3, -1
/* 80A8FEA8  B0 1E 06 7A */	sth r0, 0x67a(r30)
/* 80A8FEAC  38 00 00 02 */	li r0, 2
/* 80A8FEB0  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80A8FEB4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8FEB8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8FEBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8FEC0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80A8FEC4  4B 57 C5 18 */	b mDoMtx_YrotS__FPA4_fs
/* 80A8FEC8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FECC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8FED0  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80A8FED4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8FED8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8FEDC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8FEE0  38 61 00 68 */	addi r3, r1, 0x68
/* 80A8FEE4  38 9E 06 6C */	addi r4, r30, 0x66c
/* 80A8FEE8  4B 7E 10 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8FEEC  38 7E 06 6C */	addi r3, r30, 0x66c
/* 80A8FEF0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A8FEF4  7C 65 1B 78 */	mr r5, r3
/* 80A8FEF8  4B 8B 71 98 */	b PSVECAdd
lbl_80A8FEFC:
/* 80A8FEFC  A8 7E 06 7C */	lha r3, 0x67c(r30)
/* 80A8FF00  2C 03 00 00 */	cmpwi r3, 0
/* 80A8FF04  41 82 00 5C */	beq lbl_80A8FF60
/* 80A8FF08  38 03 FF FF */	addi r0, r3, -1
/* 80A8FF0C  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 80A8FF10  38 00 00 02 */	li r0, 2
/* 80A8FF14  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80A8FF18  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8FF1C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8FF20  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8FF24  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80A8FF28  4B 57 C4 B4 */	b mDoMtx_YrotS__FPA4_fs
/* 80A8FF2C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8FF30  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8FF34  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A8FF38  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8FF3C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8FF40  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8FF44  38 61 00 68 */	addi r3, r1, 0x68
/* 80A8FF48  38 9E 06 6C */	addi r4, r30, 0x66c
/* 80A8FF4C  4B 7E 0F A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8FF50  38 7E 06 6C */	addi r3, r30, 0x66c
/* 80A8FF54  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A8FF58  7C 65 1B 78 */	mr r5, r3
/* 80A8FF5C  4B 8B 71 34 */	b PSVECAdd
lbl_80A8FF60:
/* 80A8FF60  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 80A8FF64  2C 00 08 00 */	cmpwi r0, 0x800
/* 80A8FF68  40 80 01 6C */	bge lbl_80A900D4
/* 80A8FF6C  2C 00 F8 00 */	cmpwi r0, -2048
/* 80A8FF70  40 81 01 64 */	ble lbl_80A900D4
/* 80A8FF74  88 7E 06 68 */	lbz r3, 0x668(r30)
/* 80A8FF78  7C 60 07 75 */	extsb. r0, r3
/* 80A8FF7C  41 82 01 58 */	beq lbl_80A900D4
/* 80A8FF80  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80A8FF84  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80A8FF88  41 82 00 10 */	beq lbl_80A8FF98
/* 80A8FF8C  7C 60 07 74 */	extsb r0, r3
/* 80A8FF90  2C 00 00 02 */	cmpwi r0, 2
/* 80A8FF94  41 81 01 34 */	bgt lbl_80A900C8
lbl_80A8FF98:
/* 80A8FF98  7C 60 07 74 */	extsb r0, r3
/* 80A8FF9C  2C 00 00 02 */	cmpwi r0, 2
/* 80A8FFA0  40 82 00 30 */	bne lbl_80A8FFD0
/* 80A8FFA4  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8FFA8  38 9E 06 6C */	addi r4, r30, 0x66c
/* 80A8FFAC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8FFB0  4B 7D 6B 84 */	b __mi__4cXyzCFRC3Vec
/* 80A8FFB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A8FFB8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8FFBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A8FFC0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A8FFC4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A8FFC8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8FFCC  48 00 00 58 */	b lbl_80A90024
lbl_80A8FFD0:
/* 80A8FFD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8FFD4  38 9D 05 38 */	addi r4, r29, 0x538
/* 80A8FFD8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8FFDC  4B 7D 6B 58 */	b __mi__4cXyzCFRC3Vec
/* 80A8FFE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A8FFE4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A8FFE8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A8FFEC  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80A8FFF0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A8FFF4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A8FFF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8FFFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A90000  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A90004  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A90008  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A9000C  40 82 00 18 */	bne lbl_80A90024
/* 80A90010  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 80A90014  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80A90018  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A9001C  EC 02 00 2A */	fadds f0, f2, f0
/* 80A90020  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_80A90024:
/* 80A90024  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80A90028  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80A9002C  4B 7D 76 48 */	b cM_atan2s__Fff
/* 80A90030  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80A90034  7C 00 18 50 */	subf r0, r0, r3
/* 80A90038  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 80A9003C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80A90040  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A90044  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80A90048  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A9004C  EC 41 00 2A */	fadds f2, f1, f0
/* 80A90050  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A90054  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A90058  40 81 00 0C */	ble lbl_80A90064
/* 80A9005C  FC 00 10 34 */	frsqrte f0, f2
/* 80A90060  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A90064:
/* 80A90064  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80A90068  4B 7D 76 0C */	b cM_atan2s__Fff
/* 80A9006C  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80A90070  7C 00 1A 14 */	add r0, r0, r3
/* 80A90074  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 80A90078  A8 1E 06 7E */	lha r0, 0x67e(r30)
/* 80A9007C  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 80A90080  40 81 00 10 */	ble lbl_80A90090
/* 80A90084  38 00 3A 98 */	li r0, 0x3a98
/* 80A90088  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 80A9008C  48 00 00 14 */	b lbl_80A900A0
lbl_80A90090:
/* 80A90090  2C 00 C5 68 */	cmpwi r0, -15000
/* 80A90094  40 80 00 0C */	bge lbl_80A900A0
/* 80A90098  38 00 C5 68 */	li r0, -15000
/* 80A9009C  B0 1E 06 7E */	sth r0, 0x67e(r30)
lbl_80A900A0:
/* 80A900A0  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 80A900A4  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 80A900A8  40 81 00 10 */	ble lbl_80A900B8
/* 80A900AC  38 00 3A 98 */	li r0, 0x3a98
/* 80A900B0  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 80A900B4  48 00 00 14 */	b lbl_80A900C8
lbl_80A900B8:
/* 80A900B8  2C 00 C5 68 */	cmpwi r0, -15000
/* 80A900BC  40 80 00 0C */	bge lbl_80A900C8
/* 80A900C0  38 00 C5 68 */	li r0, -15000
/* 80A900C4  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_80A900C8:
/* 80A900C8  38 00 00 00 */	li r0, 0
/* 80A900CC  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80A900D0  48 00 00 10 */	b lbl_80A900E0
lbl_80A900D4:
/* 80A900D4  38 00 00 00 */	li r0, 0
/* 80A900D8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 80A900DC  B0 1E 06 7E */	sth r0, 0x67e(r30)
lbl_80A900E0:
/* 80A900E0  38 00 00 00 */	li r0, 0
/* 80A900E4  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 80A900E8  38 7E 06 64 */	addi r3, r30, 0x664
/* 80A900EC  A8 9E 06 7E */	lha r4, 0x67e(r30)
/* 80A900F0  38 A0 00 04 */	li r5, 4
/* 80A900F4  38 C0 10 00 */	li r6, 0x1000
/* 80A900F8  4B 7E 05 10 */	b cLib_addCalcAngleS2__FPssss
/* 80A900FC  38 7E 06 62 */	addi r3, r30, 0x662
/* 80A90100  A8 9E 06 80 */	lha r4, 0x680(r30)
/* 80A90104  38 A0 00 04 */	li r5, 4
/* 80A90108  38 C0 10 00 */	li r6, 0x1000
/* 80A9010C  4B 7E 04 FC */	b cLib_addCalcAngleS2__FPssss
/* 80A90110  38 7E 06 9A */	addi r3, r30, 0x69a
/* 80A90114  A8 9E 06 A0 */	lha r4, 0x6a0(r30)
/* 80A90118  38 A0 00 04 */	li r5, 4
/* 80A9011C  38 C0 04 00 */	li r6, 0x400
/* 80A90120  4B 7E 04 E8 */	b cLib_addCalcAngleS2__FPssss
/* 80A90124  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80A90128  A8 9E 06 A2 */	lha r4, 0x6a2(r30)
/* 80A9012C  38 A0 00 04 */	li r5, 4
/* 80A90130  38 C0 04 00 */	li r6, 0x400
/* 80A90134  4B 7E 04 D4 */	b cLib_addCalcAngleS2__FPssss
/* 80A90138  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A9013C  FC 00 02 10 */	fabs f0, f0
/* 80A90140  FC 20 00 18 */	frsp f1, f0
/* 80A90144  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A90148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A9014C  40 80 00 A0 */	bge lbl_80A901EC
/* 80A90150  A8 7E 06 A4 */	lha r3, 0x6a4(r30)
/* 80A90154  2C 03 00 00 */	cmpwi r3, 0
/* 80A90158  41 82 00 C0 */	beq lbl_80A90218
/* 80A9015C  38 03 FF FF */	addi r0, r3, -1
/* 80A90160  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80A90164  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 80A90168  2C 00 00 00 */	cmpwi r0, 0
/* 80A9016C  40 82 00 AC */	bne lbl_80A90218
/* 80A90170  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A90174  4B 7D 77 E0 */	b cM_rndF__Ff
/* 80A90178  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A9017C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A90180  FC 00 00 1E */	fctiwz f0, f0
/* 80A90184  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80A90188  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 80A9018C  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80A90190  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A90194  4B 7D 77 C0 */	b cM_rndF__Ff
/* 80A90198  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A9019C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A901A0  40 80 00 1C */	bge lbl_80A901BC
/* 80A901A4  C0 3F 01 60 */	lfs f1, 0x160(r31)
/* 80A901A8  4B 7D 77 E4 */	b cM_rndFX__Ff
/* 80A901AC  FC 00 08 1E */	fctiwz f0, f1
/* 80A901B0  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80A901B4  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 80A901B8  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_80A901BC:
/* 80A901BC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A901C0  4B 7D 77 94 */	b cM_rndF__Ff
/* 80A901C4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A901C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A901CC  40 80 00 4C */	bge lbl_80A90218
/* 80A901D0  C0 3F 01 60 */	lfs f1, 0x160(r31)
/* 80A901D4  4B 7D 77 B8 */	b cM_rndFX__Ff
/* 80A901D8  FC 00 08 1E */	fctiwz f0, f1
/* 80A901DC  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80A901E0  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 80A901E4  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80A901E8  48 00 00 30 */	b lbl_80A90218
lbl_80A901EC:
/* 80A901EC  38 00 00 00 */	li r0, 0
/* 80A901F0  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80A901F4  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 80A901F8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A901FC  4B 7D 77 58 */	b cM_rndF__Ff
/* 80A90200  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A90204  EC 00 08 2A */	fadds f0, f0, f1
/* 80A90208  FC 00 00 1E */	fctiwz f0, f0
/* 80A9020C  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80A90210  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 80A90214  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
lbl_80A90218:
/* 80A90218  38 60 00 00 */	li r3, 0
/* 80A9021C  38 80 00 00 */	li r4, 0
/* 80A90220  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80A90224  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l
/* 80A90228  38 00 00 02 */	li r0, 2
/* 80A9022C  7C 09 03 A6 */	mtctr r0
lbl_80A90230:
/* 80A90230  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80A90234  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 80A90238  7C 00 22 14 */	add r0, r0, r4
/* 80A9023C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A90240  7C 26 04 2E */	lfsx f1, r6, r0
/* 80A90244  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 80A90248  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A9024C  FC 00 00 1E */	fctiwz f0, f0
/* 80A90250  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80A90254  80 A1 01 7C */	lwz r5, 0x17c(r1)
/* 80A90258  38 03 06 84 */	addi r0, r3, 0x684
/* 80A9025C  7C BE 03 2E */	sthx r5, r30, r0
/* 80A90260  38 63 00 02 */	addi r3, r3, 2
/* 80A90264  38 84 AA 10 */	addi r4, r4, -22000
/* 80A90268  42 00 FF C8 */	bdnz lbl_80A90230
/* 80A9026C  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A90270  C0 3E 06 90 */	lfs f1, 0x690(r30)
/* 80A90274  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80A90278  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80A9027C  4B 7D F7 C0 */	b cLib_addCalc2__FPffff
/* 80A90280  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A90284  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 80A90288  38 7E 06 88 */	addi r3, r30, 0x688
/* 80A9028C  A8 9E 06 8A */	lha r4, 0x68a(r30)
/* 80A90290  38 A0 00 08 */	li r5, 8
/* 80A90294  38 C0 03 E8 */	li r6, 0x3e8
/* 80A90298  4B 7E 03 70 */	b cLib_addCalcAngleS2__FPssss
/* 80A9029C  38 00 00 00 */	li r0, 0
/* 80A902A0  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 80A902A4  2C 19 00 00 */	cmpwi r25, 0
/* 80A902A8  41 82 00 94 */	beq lbl_80A9033C
/* 80A902AC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A902B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A902B4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A902B8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A902BC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A902C0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A902C4  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 80A902C8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A902CC  2C 19 00 01 */	cmpwi r25, 1
/* 80A902D0  40 82 00 58 */	bne lbl_80A90328
/* 80A902D4  A8 1E 06 58 */	lha r0, 0x658(r30)
/* 80A902D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A902DC  40 82 00 60 */	bne lbl_80A9033C
/* 80A902E0  38 00 00 14 */	li r0, 0x14
/* 80A902E4  B0 1E 06 58 */	sth r0, 0x658(r30)
/* 80A902E8  38 61 00 44 */	addi r3, r1, 0x44
/* 80A902EC  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80A902F0  38 80 00 00 */	li r4, 0
/* 80A902F4  4B 58 F5 88 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80A902F8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80A902FC  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80A90300  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A90304  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A90308  38 81 00 0C */	addi r4, r1, 0xc
/* 80A9030C  38 A0 00 00 */	li r5, 0
/* 80A90310  38 C0 FF FF */	li r6, -1
/* 80A90314  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A90318  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A9031C  7D 89 03 A6 */	mtctr r12
/* 80A90320  4E 80 04 21 */	bctrl 
/* 80A90324  48 00 00 18 */	b lbl_80A9033C
lbl_80A90328:
/* 80A90328  38 7E 0C 00 */	addi r3, r30, 0xc00
/* 80A9032C  38 81 00 44 */	addi r4, r1, 0x44
/* 80A90330  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80A90334  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80A90338  4B 58 CD D4 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_80A9033C:
/* 80A9033C  88 1E 05 F8 */	lbz r0, 0x5f8(r30)
/* 80A90340  7C 00 07 75 */	extsb. r0, r0
/* 80A90344  41 82 00 2C */	beq lbl_80A90370
/* 80A90348  38 7E 05 F6 */	addi r3, r30, 0x5f6
/* 80A9034C  38 80 00 03 */	li r4, 3
/* 80A90350  38 A0 00 01 */	li r5, 1
/* 80A90354  38 C0 00 01 */	li r6, 1
/* 80A90358  4B 7E 02 B0 */	b cLib_addCalcAngleS2__FPssss
/* 80A9035C  38 00 00 00 */	li r0, 0
/* 80A90360  98 1E 05 F8 */	stb r0, 0x5f8(r30)
/* 80A90364  38 00 00 3C */	li r0, 0x3c
/* 80A90368  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 80A9036C  48 00 00 5C */	b lbl_80A903C8
lbl_80A90370:
/* 80A90370  A8 7E 06 2C */	lha r3, 0x62c(r30)
/* 80A90374  2C 03 00 00 */	cmpwi r3, 0
/* 80A90378  40 82 00 28 */	bne lbl_80A903A0
/* 80A9037C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A90380  4B 7D 75 D4 */	b cM_rndF__Ff
/* 80A90384  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A90388  EC 00 08 2A */	fadds f0, f0, f1
/* 80A9038C  FC 00 00 1E */	fctiwz f0, f0
/* 80A90390  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80A90394  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 80A90398  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 80A9039C  48 00 00 2C */	b lbl_80A903C8
lbl_80A903A0:
/* 80A903A0  38 03 FF FF */	addi r0, r3, -1
/* 80A903A4  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 80A903A8  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 80A903AC  2C 00 00 05 */	cmpwi r0, 5
/* 80A903B0  41 81 00 10 */	bgt lbl_80A903C0
/* 80A903B4  20 00 00 05 */	subfic r0, r0, 5
/* 80A903B8  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 80A903BC  48 00 00 0C */	b lbl_80A903C8
lbl_80A903C0:
/* 80A903C0  38 00 00 00 */	li r0, 0
/* 80A903C4  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_80A903C8:
/* 80A903C8  E3 E1 01 B8 */	psq_l f31, 440(r1), 0, 0 /* qr0 */
/* 80A903CC  CB E1 01 B0 */	lfd f31, 0x1b0(r1)
/* 80A903D0  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 80A903D4  4B 8D 1E 3C */	b _restgpr_23
/* 80A903D8  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 80A903DC  7C 08 03 A6 */	mtlr r0
/* 80A903E0  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 80A903E4  4E 80 00 20 */	blr 
