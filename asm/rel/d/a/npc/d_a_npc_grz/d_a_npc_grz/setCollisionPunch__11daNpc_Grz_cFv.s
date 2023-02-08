lbl_809EA1DC:
/* 809EA1DC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 809EA1E0  7C 08 02 A6 */	mflr r0
/* 809EA1E4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 809EA1E8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 809EA1EC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 809EA1F0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 809EA1F4  4B 97 7F D1 */	bl _savegpr_23
/* 809EA1F8  7C 7A 1B 78 */	mr r26, r3
/* 809EA1FC  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809EA200  3B C3 F1 F4 */	addi r30, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809EA204  88 1A 1A 7C */	lbz r0, 0x1a7c(r26)
/* 809EA208  28 00 00 02 */	cmplwi r0, 2
/* 809EA20C  40 82 05 08 */	bne lbl_809EA714
/* 809EA210  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809EA214  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 809EA218  80 1A 1A 80 */	lwz r0, 0x1a80(r26)
/* 809EA21C  2C 00 00 20 */	cmpwi r0, 0x20
/* 809EA220  40 82 02 D8 */	bne lbl_809EA4F8
/* 809EA224  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 809EA228  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA22C  4C 41 13 82 */	cror 2, 1, 2
/* 809EA230  40 82 00 10 */	bne lbl_809EA240
/* 809EA234  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 809EA238  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA23C  41 80 00 20 */	blt lbl_809EA25C
lbl_809EA240:
/* 809EA240  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809EA244  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA248  4C 41 13 82 */	cror 2, 1, 2
/* 809EA24C  40 82 02 AC */	bne lbl_809EA4F8
/* 809EA250  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 809EA254  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA258  40 80 02 A0 */	bge lbl_809EA4F8
lbl_809EA25C:
/* 809EA25C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA264  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 809EA268  38 61 00 60 */	addi r3, r1, 0x60
/* 809EA26C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 809EA270  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 809EA274  4B 87 C8 C1 */	bl __mi__4cXyzCFRC3Vec
/* 809EA278  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 809EA27C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809EA280  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809EA284  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809EA288  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 809EA28C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809EA290  38 61 00 0C */	addi r3, r1, 0xc
/* 809EA294  4B 95 CE A5 */	bl PSVECSquareMag
/* 809EA298  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809EA29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA2A0  40 81 00 58 */	ble lbl_809EA2F8
/* 809EA2A4  FC 00 08 34 */	frsqrte f0, f1
/* 809EA2A8  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 809EA2AC  FC 44 00 32 */	fmul f2, f4, f0
/* 809EA2B0  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 809EA2B4  FC 00 00 32 */	fmul f0, f0, f0
/* 809EA2B8  FC 01 00 32 */	fmul f0, f1, f0
/* 809EA2BC  FC 03 00 28 */	fsub f0, f3, f0
/* 809EA2C0  FC 02 00 32 */	fmul f0, f2, f0
/* 809EA2C4  FC 44 00 32 */	fmul f2, f4, f0
/* 809EA2C8  FC 00 00 32 */	fmul f0, f0, f0
/* 809EA2CC  FC 01 00 32 */	fmul f0, f1, f0
/* 809EA2D0  FC 03 00 28 */	fsub f0, f3, f0
/* 809EA2D4  FC 02 00 32 */	fmul f0, f2, f0
/* 809EA2D8  FC 44 00 32 */	fmul f2, f4, f0
/* 809EA2DC  FC 00 00 32 */	fmul f0, f0, f0
/* 809EA2E0  FC 01 00 32 */	fmul f0, f1, f0
/* 809EA2E4  FC 03 00 28 */	fsub f0, f3, f0
/* 809EA2E8  FC 02 00 32 */	fmul f0, f2, f0
/* 809EA2EC  FC 21 00 32 */	fmul f1, f1, f0
/* 809EA2F0  FC 20 08 18 */	frsp f1, f1
/* 809EA2F4  48 00 00 88 */	b lbl_809EA37C
lbl_809EA2F8:
/* 809EA2F8  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 809EA2FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA300  40 80 00 10 */	bge lbl_809EA310
/* 809EA304  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809EA308  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809EA30C  48 00 00 70 */	b lbl_809EA37C
lbl_809EA310:
/* 809EA310  D0 21 00 08 */	stfs f1, 8(r1)
/* 809EA314  80 81 00 08 */	lwz r4, 8(r1)
/* 809EA318  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809EA31C  3C 00 7F 80 */	lis r0, 0x7f80
/* 809EA320  7C 03 00 00 */	cmpw r3, r0
/* 809EA324  41 82 00 14 */	beq lbl_809EA338
/* 809EA328  40 80 00 40 */	bge lbl_809EA368
/* 809EA32C  2C 03 00 00 */	cmpwi r3, 0
/* 809EA330  41 82 00 20 */	beq lbl_809EA350
/* 809EA334  48 00 00 34 */	b lbl_809EA368
lbl_809EA338:
/* 809EA338  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809EA33C  41 82 00 0C */	beq lbl_809EA348
/* 809EA340  38 00 00 01 */	li r0, 1
/* 809EA344  48 00 00 28 */	b lbl_809EA36C
lbl_809EA348:
/* 809EA348  38 00 00 02 */	li r0, 2
/* 809EA34C  48 00 00 20 */	b lbl_809EA36C
lbl_809EA350:
/* 809EA350  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809EA354  41 82 00 0C */	beq lbl_809EA360
/* 809EA358  38 00 00 05 */	li r0, 5
/* 809EA35C  48 00 00 10 */	b lbl_809EA36C
lbl_809EA360:
/* 809EA360  38 00 00 03 */	li r0, 3
/* 809EA364  48 00 00 08 */	b lbl_809EA36C
lbl_809EA368:
/* 809EA368  38 00 00 04 */	li r0, 4
lbl_809EA36C:
/* 809EA36C  2C 00 00 01 */	cmpwi r0, 1
/* 809EA370  40 82 00 0C */	bne lbl_809EA37C
/* 809EA374  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809EA378  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809EA37C:
/* 809EA37C  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 809EA380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA384  40 80 00 38 */	bge lbl_809EA3BC
/* 809EA388  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EA38C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 809EA390  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EA394  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809EA398  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 809EA39C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA3A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA3A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 809EA3A8  38 80 00 06 */	li r4, 6
/* 809EA3AC  38 A0 00 0F */	li r5, 0xf
/* 809EA3B0  38 C1 00 54 */	addi r6, r1, 0x54
/* 809EA3B4  4B 68 56 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 809EA3B8  48 00 01 40 */	b lbl_809EA4F8
lbl_809EA3BC:
/* 809EA3BC  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 809EA3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA3C4  40 80 00 38 */	bge lbl_809EA3FC
/* 809EA3C8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EA3CC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 809EA3D0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EA3D4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809EA3D8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 809EA3DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA3E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA3E4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 809EA3E8  38 80 00 05 */	li r4, 5
/* 809EA3EC  38 A0 00 0F */	li r5, 0xf
/* 809EA3F0  38 C1 00 48 */	addi r6, r1, 0x48
/* 809EA3F4  4B 68 56 31 */	bl StartShock__12dVibration_cFii4cXyz
/* 809EA3F8  48 00 01 00 */	b lbl_809EA4F8
lbl_809EA3FC:
/* 809EA3FC  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 809EA400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA404  40 80 00 38 */	bge lbl_809EA43C
/* 809EA408  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EA40C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 809EA410  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EA414  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809EA418  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 809EA41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA424  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 809EA428  38 80 00 04 */	li r4, 4
/* 809EA42C  38 A0 00 0F */	li r5, 0xf
/* 809EA430  38 C1 00 3C */	addi r6, r1, 0x3c
/* 809EA434  4B 68 55 F1 */	bl StartShock__12dVibration_cFii4cXyz
/* 809EA438  48 00 00 C0 */	b lbl_809EA4F8
lbl_809EA43C:
/* 809EA43C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 809EA440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA444  40 80 00 38 */	bge lbl_809EA47C
/* 809EA448  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EA44C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 809EA450  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EA454  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809EA458  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 809EA45C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA464  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 809EA468  38 80 00 03 */	li r4, 3
/* 809EA46C  38 A0 00 0F */	li r5, 0xf
/* 809EA470  38 C1 00 30 */	addi r6, r1, 0x30
/* 809EA474  4B 68 55 B1 */	bl StartShock__12dVibration_cFii4cXyz
/* 809EA478  48 00 00 80 */	b lbl_809EA4F8
lbl_809EA47C:
/* 809EA47C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 809EA480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA484  40 80 00 38 */	bge lbl_809EA4BC
/* 809EA488  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EA48C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 809EA490  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EA494  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809EA498  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809EA49C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA4A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA4A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 809EA4A8  38 80 00 02 */	li r4, 2
/* 809EA4AC  38 A0 00 0F */	li r5, 0xf
/* 809EA4B0  38 C1 00 24 */	addi r6, r1, 0x24
/* 809EA4B4  4B 68 55 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 809EA4B8  48 00 00 40 */	b lbl_809EA4F8
lbl_809EA4BC:
/* 809EA4BC  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 809EA4C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EA4C4  40 80 00 34 */	bge lbl_809EA4F8
/* 809EA4C8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EA4CC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 809EA4D0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EA4D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809EA4D8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 809EA4DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA4E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA4E4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 809EA4E8  38 80 00 01 */	li r4, 1
/* 809EA4EC  38 A0 00 0F */	li r5, 0xf
/* 809EA4F0  38 C1 00 18 */	addi r6, r1, 0x18
/* 809EA4F4  4B 68 55 31 */	bl StartShock__12dVibration_cFii4cXyz
lbl_809EA4F8:
/* 809EA4F8  3B 60 00 00 */	li r27, 0
/* 809EA4FC  3B 20 00 00 */	li r25, 0
/* 809EA500  3B 00 00 00 */	li r24, 0
/* 809EA504  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809EA508  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809EA50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA514  3B 83 23 3C */	addi r28, r3, 0x233c
lbl_809EA518:
/* 809EA518  88 1A 09 F2 */	lbz r0, 0x9f2(r26)
/* 809EA51C  28 00 00 00 */	cmplwi r0, 0
/* 809EA520  40 82 01 00 */	bne lbl_809EA620
/* 809EA524  80 1A 1A 80 */	lwz r0, 0x1a80(r26)
/* 809EA528  2C 00 00 20 */	cmpwi r0, 0x20
/* 809EA52C  40 82 00 E4 */	bne lbl_809EA610
/* 809EA530  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 809EA534  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA538  4C 41 13 82 */	cror 2, 1, 2
/* 809EA53C  40 82 00 18 */	bne lbl_809EA554
/* 809EA540  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 809EA544  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA548  40 80 00 0C */	bge lbl_809EA554
/* 809EA54C  2C 1B 00 02 */	cmpwi r27, 2
/* 809EA550  40 80 00 28 */	bge lbl_809EA578
lbl_809EA554:
/* 809EA554  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 809EA558  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA55C  41 80 00 14 */	blt lbl_809EA570
/* 809EA560  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 809EA564  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 809EA568  4C 41 13 82 */	cror 2, 1, 2
/* 809EA56C  40 82 00 A4 */	bne lbl_809EA610
lbl_809EA570:
/* 809EA570  2C 1B 00 02 */	cmpwi r27, 2
/* 809EA574  40 80 00 9C */	bge lbl_809EA610
lbl_809EA578:
/* 809EA578  7F BA C2 14 */	add r29, r26, r24
/* 809EA57C  80 1D 15 44 */	lwz r0, 0x1544(r29)
/* 809EA580  60 00 00 01 */	ori r0, r0, 1
/* 809EA584  90 1D 15 44 */	stw r0, 0x1544(r29)
/* 809EA588  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809EA58C  80 63 00 04 */	lwz r3, 4(r3)
/* 809EA590  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809EA594  80 83 00 0C */	lwz r4, 0xc(r3)
/* 809EA598  3C 60 80 9F */	lis r3, l_attack_jnt@ha /* 0x809EF9BC@ha */
/* 809EA59C  38 63 F9 BC */	addi r3, r3, l_attack_jnt@l /* 0x809EF9BC@l */
/* 809EA5A0  7C 03 C8 2E */	lwzx r0, r3, r25
/* 809EA5A4  1C 00 00 30 */	mulli r0, r0, 0x30
/* 809EA5A8  7C 64 02 14 */	add r3, r4, r0
/* 809EA5AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809EA5B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809EA5B4  4B 95 BE FD */	bl PSMTXCopy
/* 809EA5B8  38 7A 04 EC */	addi r3, r26, 0x4ec
/* 809EA5BC  4B 62 28 B5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 809EA5C0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809EA5C4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 809EA5C8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 809EA5CC  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 809EA5D0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 809EA5D4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 809EA5D8  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 809EA5DC  EC 01 00 2A */	fadds f0, f1, f0
/* 809EA5E0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 809EA5E4  3A FD 16 68 */	addi r23, r29, 0x1668
/* 809EA5E8  7E E3 BB 78 */	mr r3, r23
/* 809EA5EC  38 81 00 78 */	addi r4, r1, 0x78
/* 809EA5F0  4B 88 50 59 */	bl SetC__8cM3dGSphFRC4cXyz
/* 809EA5F4  7E E3 BB 78 */	mr r3, r23
/* 809EA5F8  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 809EA5FC  4B 88 51 0D */	bl SetR__8cM3dGSphFf
/* 809EA600  7F 83 E3 78 */	mr r3, r28
/* 809EA604  38 9D 15 44 */	addi r4, r29, 0x1544
/* 809EA608  4B 87 A5 A1 */	bl Set__4cCcSFP8cCcD_Obj
/* 809EA60C  48 00 00 14 */	b lbl_809EA620
lbl_809EA610:
/* 809EA610  38 78 15 44 */	addi r3, r24, 0x1544
/* 809EA614  7C 1A 18 2E */	lwzx r0, r26, r3
/* 809EA618  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 809EA61C  7C 1A 19 2E */	stwx r0, r26, r3
lbl_809EA620:
/* 809EA620  38 78 15 44 */	addi r3, r24, 0x1544
/* 809EA624  7C 7A 1A 14 */	add r3, r26, r3
/* 809EA628  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 809EA62C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809EA630  7D 89 03 A6 */	mtctr r12
/* 809EA634  4E 80 04 21 */	bctrl 
/* 809EA638  3B 7B 00 01 */	addi r27, r27, 1
/* 809EA63C  2C 1B 00 04 */	cmpwi r27, 4
/* 809EA640  3B 39 00 04 */	addi r25, r25, 4
/* 809EA644  3B 18 01 38 */	addi r24, r24, 0x138
/* 809EA648  41 80 FE D0 */	blt lbl_809EA518
/* 809EA64C  80 1A 1A 80 */	lwz r0, 0x1a80(r26)
/* 809EA650  2C 00 00 20 */	cmpwi r0, 0x20
/* 809EA654  40 82 00 C0 */	bne lbl_809EA714
/* 809EA658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EA65C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EA660  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809EA664  28 00 00 00 */	cmplwi r0, 0
/* 809EA668  40 82 00 AC */	bne lbl_809EA714
/* 809EA66C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809EA670  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 809EA674  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 809EA678  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 809EA67C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 809EA680  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 809EA684  4B 62 26 E1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809EA688  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809EA68C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809EA690  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 809EA694  4B 62 1D A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 809EA698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809EA69C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809EA6A0  38 81 00 6C */	addi r4, r1, 0x6c
/* 809EA6A4  7C 85 23 78 */	mr r5, r4
/* 809EA6A8  4B 95 C6 C5 */	bl PSMTXMultVec
/* 809EA6AC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 809EA6B0  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 809EA6B4  90 1A 14 30 */	stw r0, 0x1430(r26)
/* 809EA6B8  38 00 00 1F */	li r0, 0x1f
/* 809EA6BC  90 1A 14 20 */	stw r0, 0x1420(r26)
/* 809EA6C0  80 1A 14 A4 */	lwz r0, 0x14a4(r26)
/* 809EA6C4  60 00 00 04 */	ori r0, r0, 4
/* 809EA6C8  90 1A 14 A4 */	stw r0, 0x14a4(r26)
/* 809EA6CC  38 7A 15 2C */	addi r3, r26, 0x152c
/* 809EA6D0  38 81 00 6C */	addi r4, r1, 0x6c
/* 809EA6D4  4B 88 4B 09 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809EA6D8  38 7A 15 2C */	addi r3, r26, 0x152c
/* 809EA6DC  38 9E 00 00 */	addi r4, r30, 0
/* 809EA6E0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809EA6E4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 809EA6E8  EC 21 00 2A */	fadds f1, f1, f0
/* 809EA6EC  4B 88 4B 0D */	bl SetH__8cM3dGCylFf
/* 809EA6F0  38 7A 15 2C */	addi r3, r26, 0x152c
/* 809EA6F4  38 9E 00 00 */	addi r4, r30, 0
/* 809EA6F8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809EA6FC  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 809EA700  EC 21 00 2A */	fadds f1, f1, f0
/* 809EA704  4B 88 4A FD */	bl SetR__8cM3dGCylFf
/* 809EA708  7F 83 E3 78 */	mr r3, r28
/* 809EA70C  38 9A 14 08 */	addi r4, r26, 0x1408
/* 809EA710  4B 87 A4 99 */	bl Set__4cCcSFP8cCcD_Obj
lbl_809EA714:
/* 809EA714  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 809EA718  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 809EA71C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 809EA720  4B 97 7A F1 */	bl _restgpr_23
/* 809EA724  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 809EA728  7C 08 03 A6 */	mtlr r0
/* 809EA72C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 809EA730  4E 80 00 20 */	blr 
