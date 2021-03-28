lbl_80D0A278:
/* 80D0A278  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80D0A27C  7C 08 02 A6 */	mflr r0
/* 80D0A280  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80D0A284  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80D0A288  4B 65 7F 50 */	b _savegpr_28
/* 80D0A28C  7C 7E 1B 78 */	mr r30, r3
/* 80D0A290  3C 60 80 D1 */	lis r3, lit_3775@ha
/* 80D0A294  3B E3 B8 F0 */	addi r31, r3, lit_3775@l
/* 80D0A298  88 1E 07 A8 */	lbz r0, 0x7a8(r30)
/* 80D0A29C  28 00 00 00 */	cmplwi r0, 0
/* 80D0A2A0  41 82 03 8C */	beq lbl_80D0A62C
/* 80D0A2A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0A2A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0A2AC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80D0A2B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D0A2B4  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80D0A2B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D0A2BC  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80D0A2C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D0A2C4  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80D0A2C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D0A2CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D0A2D0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80D0A2D4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80D0A2D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D0A2DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D0A2E0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D0A2E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80D0A2E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D0A2EC  38 7E 07 9C */	addi r3, r30, 0x79c
/* 80D0A2F0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D0A2F4  38 BE 04 E6 */	addi r5, r30, 0x4e6
/* 80D0A2F8  38 C0 00 00 */	li r6, 0
/* 80D0A2FC  38 E0 1C 00 */	li r7, 0x1c00
/* 80D0A300  4B 45 43 54 */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80D0A304  2C 03 00 00 */	cmpwi r3, 0
/* 80D0A308  41 82 00 24 */	beq lbl_80D0A32C
/* 80D0A30C  38 7E 07 9C */	addi r3, r30, 0x79c
/* 80D0A310  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D0A314  4B 45 45 68 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80D0A318  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D0A31C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80D0A320  EC 01 00 2A */	fadds f0, f1, f0
/* 80D0A324  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D0A328  48 00 03 04 */	b lbl_80D0A62C
lbl_80D0A32C:
/* 80D0A32C  38 61 00 44 */	addi r3, r1, 0x44
/* 80D0A330  4B 36 D9 38 */	b __ct__11dBgS_LinChkFv
/* 80D0A334  38 61 00 9C */	addi r3, r1, 0x9c
/* 80D0A338  4B 36 EB 30 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D0A33C  38 61 00 44 */	addi r3, r1, 0x44
/* 80D0A340  38 81 00 24 */	addi r4, r1, 0x24
/* 80D0A344  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D0A348  38 C0 00 00 */	li r6, 0
/* 80D0A34C  4B 36 DA 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D0A350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0A354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0A358  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80D0A35C  7F 83 E3 78 */	mr r3, r28
/* 80D0A360  38 81 00 44 */	addi r4, r1, 0x44
/* 80D0A364  4B 36 A0 50 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80D0A368  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0A36C  41 82 01 D0 */	beq lbl_80D0A53C
/* 80D0A370  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha
/* 80D0A374  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D0A378  90 01 00 40 */	stw r0, 0x40(r1)
/* 80D0A37C  7F 83 E3 78 */	mr r3, r28
/* 80D0A380  38 81 00 58 */	addi r4, r1, 0x58
/* 80D0A384  38 A1 00 30 */	addi r5, r1, 0x30
/* 80D0A388  4B 36 A3 BC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D0A38C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80D0A390  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80D0A394  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80D0A398  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80D0A39C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80D0A3A0  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80D0A3A4  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80D0A3A8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D0A3AC  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80D0A3B0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D0A3B4  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80D0A3B8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D0A3BC  38 00 00 00 */	li r0, 0
/* 80D0A3C0  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80D0A3C4  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D0A3C8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80D0A3CC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D0A3D0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80D0A3D4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D0A3D8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80D0A3DC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D0A3E0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0A3E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D0A3E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D0A3EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D0A3F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D0A3F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D0A3F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D0A3FC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80D0A400  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D0A404  38 61 00 18 */	addi r3, r1, 0x18
/* 80D0A408  38 81 00 0C */	addi r4, r1, 0xc
/* 80D0A40C  4B 63 CF 90 */	b PSVECSquareDistance
/* 80D0A410  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0A414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0A418  40 81 00 58 */	ble lbl_80D0A470
/* 80D0A41C  FC 00 08 34 */	frsqrte f0, f1
/* 80D0A420  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80D0A424  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0A428  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80D0A42C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0A430  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0A434  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0A438  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0A43C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0A440  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0A444  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0A448  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0A44C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0A450  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0A454  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0A458  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0A45C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0A460  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0A464  FC 41 00 32 */	fmul f2, f1, f0
/* 80D0A468  FC 40 10 18 */	frsp f2, f2
/* 80D0A46C  48 00 00 90 */	b lbl_80D0A4FC
lbl_80D0A470:
/* 80D0A470  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80D0A474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0A478  40 80 00 10 */	bge lbl_80D0A488
/* 80D0A47C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D0A480  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80D0A484  48 00 00 78 */	b lbl_80D0A4FC
lbl_80D0A488:
/* 80D0A488  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D0A48C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D0A490  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D0A494  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D0A498  7C 03 00 00 */	cmpw r3, r0
/* 80D0A49C  41 82 00 14 */	beq lbl_80D0A4B0
/* 80D0A4A0  40 80 00 40 */	bge lbl_80D0A4E0
/* 80D0A4A4  2C 03 00 00 */	cmpwi r3, 0
/* 80D0A4A8  41 82 00 20 */	beq lbl_80D0A4C8
/* 80D0A4AC  48 00 00 34 */	b lbl_80D0A4E0
lbl_80D0A4B0:
/* 80D0A4B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D0A4B4  41 82 00 0C */	beq lbl_80D0A4C0
/* 80D0A4B8  38 00 00 01 */	li r0, 1
/* 80D0A4BC  48 00 00 28 */	b lbl_80D0A4E4
lbl_80D0A4C0:
/* 80D0A4C0  38 00 00 02 */	li r0, 2
/* 80D0A4C4  48 00 00 20 */	b lbl_80D0A4E4
lbl_80D0A4C8:
/* 80D0A4C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D0A4CC  41 82 00 0C */	beq lbl_80D0A4D8
/* 80D0A4D0  38 00 00 05 */	li r0, 5
/* 80D0A4D4  48 00 00 10 */	b lbl_80D0A4E4
lbl_80D0A4D8:
/* 80D0A4D8  38 00 00 03 */	li r0, 3
/* 80D0A4DC  48 00 00 08 */	b lbl_80D0A4E4
lbl_80D0A4E0:
/* 80D0A4E0  38 00 00 04 */	li r0, 4
lbl_80D0A4E4:
/* 80D0A4E4  2C 00 00 01 */	cmpwi r0, 1
/* 80D0A4E8  40 82 00 10 */	bne lbl_80D0A4F8
/* 80D0A4EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D0A4F0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80D0A4F4  48 00 00 08 */	b lbl_80D0A4FC
lbl_80D0A4F8:
/* 80D0A4F8  FC 40 08 90 */	fmr f2, f1
lbl_80D0A4FC:
/* 80D0A4FC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80D0A500  4B 55 D1 74 */	b cM_atan2s__Fff
/* 80D0A504  7C 03 00 D0 */	neg r0, r3
/* 80D0A508  B0 1E 06 06 */	sth r0, 0x606(r30)
/* 80D0A50C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80D0A510  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80D0A514  4B 55 D1 60 */	b cM_atan2s__Fff
/* 80D0A518  B0 7E 06 02 */	sth r3, 0x602(r30)
/* 80D0A51C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80D0A520  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80D0A524  4B 55 D1 50 */	b cM_atan2s__Fff
/* 80D0A528  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 80D0A52C  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha
/* 80D0A530  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D0A534  90 01 00 40 */	stw r0, 0x40(r1)
/* 80D0A538  48 00 00 E0 */	b lbl_80D0A618
lbl_80D0A53C:
/* 80D0A53C  38 00 00 01 */	li r0, 1
/* 80D0A540  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80D0A544  38 00 00 02 */	li r0, 2
/* 80D0A548  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D0A54C  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D0A550  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D0A554  38 80 00 06 */	li r4, 6
/* 80D0A558  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D0A55C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D0A560  3C A5 00 02 */	addis r5, r5, 2
/* 80D0A564  38 C0 00 80 */	li r6, 0x80
/* 80D0A568  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D0A56C  4B 33 1D 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0A570  7C 64 1B 78 */	mr r4, r3
/* 80D0A574  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80D0A578  38 A0 00 02 */	li r5, 2
/* 80D0A57C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D0A580  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D0A584  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80D0A588  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80D0A58C  4B 30 68 E4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D0A590  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D0A594  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D0A598  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D0A59C  4B 55 D3 B8 */	b cM_rndF__Ff
/* 80D0A5A0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D0A5A4  EC 00 08 2A */	fadds f0, f0, f1
/* 80D0A5A8  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 80D0A5AC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D0A5B0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80D0A5B4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D0A5B8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80D0A5BC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D0A5C0  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80D0A5C4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D0A5C8  D0 3E 05 F4 */	stfs f1, 0x5f4(r30)
/* 80D0A5CC  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80D0A5D0  38 00 00 32 */	li r0, 0x32
/* 80D0A5D4  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80D0A5D8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D0A5DC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D0A5E0  EC 02 00 2A */	fadds f0, f2, f0
/* 80D0A5E4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D0A5E8  4B 55 D3 6C */	b cM_rndF__Ff
/* 80D0A5EC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80D0A5F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80D0A5F4  FC 00 00 1E */	fctiwz f0, f0
/* 80D0A5F8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80D0A5FC  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80D0A600  B0 1E 05 EC */	sth r0, 0x5ec(r30)
/* 80D0A604  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D0A608  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D0A60C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D0A610  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80D0A614  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80D0A618:
/* 80D0A618  38 00 00 00 */	li r0, 0
/* 80D0A61C  98 1E 07 A8 */	stb r0, 0x7a8(r30)
/* 80D0A620  38 61 00 44 */	addi r3, r1, 0x44
/* 80D0A624  38 80 FF FF */	li r4, -1
/* 80D0A628  4B 36 D6 B4 */	b __dt__11dBgS_LinChkFv
lbl_80D0A62C:
/* 80D0A62C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80D0A630  4B 65 7B F4 */	b _restgpr_28
/* 80D0A634  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80D0A638  7C 08 03 A6 */	mtlr r0
/* 80D0A63C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80D0A640  4E 80 00 20 */	blr 
