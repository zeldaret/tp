lbl_80A770FC:
/* 80A770FC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80A77100  7C 08 02 A6 */	mflr r0
/* 80A77104  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A77108  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80A7710C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80A77110  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80A77114  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80A77118  39 61 00 90 */	addi r11, r1, 0x90
/* 80A7711C  4B 8E B0 BD */	bl _savegpr_28
/* 80A77120  7C 7D 1B 78 */	mr r29, r3
/* 80A77124  3C 80 80 A8 */	lis r4, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A77128  3B E4 AE F0 */	addi r31, r4, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A7712C  38 9F 00 00 */	addi r4, r31, 0
/* 80A77130  AB C4 00 98 */	lha r30, 0x98(r4)
/* 80A77134  88 03 16 69 */	lbz r0, 0x1669(r3)
/* 80A77138  28 00 00 00 */	cmplwi r0, 0
/* 80A7713C  41 82 05 58 */	beq lbl_80A77694
/* 80A77140  88 1D 16 6C */	lbz r0, 0x166c(r29)
/* 80A77144  28 00 00 00 */	cmplwi r0, 0
/* 80A77148  41 82 00 B8 */	beq lbl_80A77200
/* 80A7714C  A8 9D 16 64 */	lha r4, 0x1664(r29)
/* 80A77150  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80A77154  7C 04 00 00 */	cmpw r4, r0
/* 80A77158  40 82 00 90 */	bne lbl_80A771E8
/* 80A7715C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A77160  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A77164  40 82 00 4C */	bne lbl_80A771B0
/* 80A77168  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A7716C  4B 6C E8 B9 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A77170  2C 03 00 00 */	cmpwi r3, 0
/* 80A77174  41 82 05 58 */	beq lbl_80A776CC
/* 80A77178  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A7717C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A77180  41 82 00 24 */	beq lbl_80A771A4
/* 80A77184  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A77188  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A7718C  4B 6C E7 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77190  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A77194  38 00 00 0A */	li r0, 0xa
/* 80A77198  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A7719C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A771A0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A771A4:
/* 80A771A4  38 00 00 00 */	li r0, 0
/* 80A771A8  98 1D 16 6C */	stb r0, 0x166c(r29)
/* 80A771AC  48 00 05 20 */	b lbl_80A776CC
lbl_80A771B0:
/* 80A771B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A771B4  40 82 05 18 */	bne lbl_80A776CC
/* 80A771B8  41 82 00 24 */	beq lbl_80A771DC
/* 80A771BC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A771C0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A771C4  4B 6C E6 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A771C8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A771CC  38 00 00 0A */	li r0, 0xa
/* 80A771D0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A771D4  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A771D8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A771DC:
/* 80A771DC  38 00 00 00 */	li r0, 0
/* 80A771E0  98 1D 16 6C */	stb r0, 0x166c(r29)
/* 80A771E4  48 00 04 E8 */	b lbl_80A776CC
lbl_80A771E8:
/* 80A771E8  38 A0 FF FF */	li r5, -1
/* 80A771EC  38 C0 FF FF */	li r6, -1
/* 80A771F0  38 E0 00 0A */	li r7, 0xa
/* 80A771F4  39 00 00 00 */	li r8, 0
/* 80A771F8  4B 6D 44 51 */	bl step__8daNpcT_cFsiiii
/* 80A771FC  48 00 04 D0 */	b lbl_80A776CC
lbl_80A77200:
/* 80A77200  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A77204  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A77208  40 82 00 4C */	bne lbl_80A77254
/* 80A7720C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A77210  4B 6C E8 15 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A77214  2C 03 00 00 */	cmpwi r3, 0
/* 80A77218  41 82 04 B4 */	beq lbl_80A776CC
/* 80A7721C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A77220  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A77224  41 82 00 24 */	beq lbl_80A77248
/* 80A77228  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A7722C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A77230  4B 6C E6 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77234  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A77238  38 00 00 0A */	li r0, 0xa
/* 80A7723C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A77240  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A77244  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A77248:
/* 80A77248  38 00 00 00 */	li r0, 0
/* 80A7724C  98 1D 16 6C */	stb r0, 0x166c(r29)
/* 80A77250  48 00 04 7C */	b lbl_80A776CC
lbl_80A77254:
/* 80A77254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A77258  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7725C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A77260  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A77264  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A77268  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A7726C  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80A77270  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A77274  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A77278  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80A7727C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A77280  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A77284  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A77288  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80A7728C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A77290  38 81 00 20 */	addi r4, r1, 0x20
/* 80A77294  4B 8D 01 09 */	bl PSVECSquareDistance
/* 80A77298  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A7729C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A772A0  40 81 00 58 */	ble lbl_80A772F8
/* 80A772A4  FC 00 08 34 */	frsqrte f0, f1
/* 80A772A8  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80A772AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A772B0  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80A772B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A772B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A772BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A772C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A772C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A772C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A772CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A772D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A772D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A772D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A772DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A772E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A772E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A772E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A772EC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A772F0  FC 20 08 18 */	frsp f1, f1
/* 80A772F4  48 00 00 88 */	b lbl_80A7737C
lbl_80A772F8:
/* 80A772F8  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80A772FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A77300  40 80 00 10 */	bge lbl_80A77310
/* 80A77304  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A77308  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A7730C  48 00 00 70 */	b lbl_80A7737C
lbl_80A77310:
/* 80A77310  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A77314  80 81 00 08 */	lwz r4, 8(r1)
/* 80A77318  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A7731C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A77320  7C 03 00 00 */	cmpw r3, r0
/* 80A77324  41 82 00 14 */	beq lbl_80A77338
/* 80A77328  40 80 00 40 */	bge lbl_80A77368
/* 80A7732C  2C 03 00 00 */	cmpwi r3, 0
/* 80A77330  41 82 00 20 */	beq lbl_80A77350
/* 80A77334  48 00 00 34 */	b lbl_80A77368
lbl_80A77338:
/* 80A77338  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A7733C  41 82 00 0C */	beq lbl_80A77348
/* 80A77340  38 00 00 01 */	li r0, 1
/* 80A77344  48 00 00 28 */	b lbl_80A7736C
lbl_80A77348:
/* 80A77348  38 00 00 02 */	li r0, 2
/* 80A7734C  48 00 00 20 */	b lbl_80A7736C
lbl_80A77350:
/* 80A77350  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A77354  41 82 00 0C */	beq lbl_80A77360
/* 80A77358  38 00 00 05 */	li r0, 5
/* 80A7735C  48 00 00 10 */	b lbl_80A7736C
lbl_80A77360:
/* 80A77360  38 00 00 03 */	li r0, 3
/* 80A77364  48 00 00 08 */	b lbl_80A7736C
lbl_80A77368:
/* 80A77368  38 00 00 04 */	li r0, 4
lbl_80A7736C:
/* 80A7736C  2C 00 00 01 */	cmpwi r0, 1
/* 80A77370  40 82 00 0C */	bne lbl_80A7737C
/* 80A77374  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A77378  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A7737C:
/* 80A7737C  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80A77380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A77384  40 80 00 30 */	bge lbl_80A773B4
/* 80A77388  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A7738C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A77390  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A77394  7D 89 03 A6 */	mtctr r12
/* 80A77398  4E 80 04 21 */	bctrl 
/* 80A7739C  28 03 00 00 */	cmplwi r3, 0
/* 80A773A0  40 82 00 14 */	bne lbl_80A773B4
/* 80A773A4  7F A3 EB 78 */	mr r3, r29
/* 80A773A8  38 80 00 00 */	li r4, 0
/* 80A773AC  4B FF F3 31 */	bl setSSlash__11daNpc_Moi_cFi
/* 80A773B0  48 00 03 1C */	b lbl_80A776CC
lbl_80A773B4:
/* 80A773B4  88 1D 16 6E */	lbz r0, 0x166e(r29)
/* 80A773B8  28 00 00 00 */	cmplwi r0, 0
/* 80A773BC  41 82 00 60 */	beq lbl_80A7741C
/* 80A773C0  7F A3 EB 78 */	mr r3, r29
/* 80A773C4  A8 9D 16 64 */	lha r4, 0x1664(r29)
/* 80A773C8  38 A0 FF FF */	li r5, -1
/* 80A773CC  38 C0 FF FF */	li r6, -1
/* 80A773D0  38 E0 00 0A */	li r7, 0xa
/* 80A773D4  39 00 00 00 */	li r8, 0
/* 80A773D8  4B 6D 42 71 */	bl step__8daNpcT_cFsiiii
/* 80A773DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A773E0  41 82 02 EC */	beq lbl_80A776CC
/* 80A773E4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A773E8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A773EC  41 82 00 24 */	beq lbl_80A77410
/* 80A773F0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A773F4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A773F8  4B 6C E4 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A773FC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A77400  38 00 00 0A */	li r0, 0xa
/* 80A77404  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A77408  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A7740C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A77410:
/* 80A77410  38 00 00 00 */	li r0, 0
/* 80A77414  98 1D 16 6E */	stb r0, 0x166e(r29)
/* 80A77418  48 00 02 B4 */	b lbl_80A776CC
lbl_80A7741C:
/* 80A7741C  7F A3 EB 78 */	mr r3, r29
/* 80A77420  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A77424  4B 5A 32 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A77428  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80A7742C  7C 00 18 50 */	subf r0, r0, r3
/* 80A77430  7C 03 07 34 */	extsh r3, r0
/* 80A77434  4B 8E DC 9D */	bl abs
/* 80A77438  7C 60 07 34 */	extsh r0, r3
/* 80A7743C  2C 00 2A AA */	cmpwi r0, 0x2aaa
/* 80A77440  40 80 01 C8 */	bge lbl_80A77608
/* 80A77444  38 61 00 44 */	addi r3, r1, 0x44
/* 80A77448  7F A4 EB 78 */	mr r4, r29
/* 80A7744C  80 BC 5D AC */	lwz r5, 0x5dac(r28)
/* 80A77450  4B 6D 3F 9D */	bl getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 80A77454  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A77458  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A7745C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A77460  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A77464  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A77468  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A7746C  8B 9D 05 47 */	lbz r28, 0x547(r29)
/* 80A77470  7F 83 E3 78 */	mr r3, r28
/* 80A77474  48 00 02 B9 */	bl getDistTable__12dAttention_cFi
/* 80A77478  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80A7747C  7F 83 E3 78 */	mr r3, r28
/* 80A77480  48 00 02 AD */	bl getDistTable__12dAttention_cFi
/* 80A77484  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80A77488  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A7748C  EF C0 00 72 */	fmuls f30, f0, f1
/* 80A77490  7F 83 E3 78 */	mr r3, r28
/* 80A77494  48 00 02 99 */	bl getDistTable__12dAttention_cFi
/* 80A77498  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80A7749C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A774A0  EC 60 00 72 */	fmuls f3, f0, f1
/* 80A774A4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80A774A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A774AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A774B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A774B4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A774B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A774BC  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80A774C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A774C4  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80A774C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A774CC  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80A774D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A774D4  7F A3 EB 78 */	mr r3, r29
/* 80A774D8  38 81 00 38 */	addi r4, r1, 0x38
/* 80A774DC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80A774E0  FC 20 F8 90 */	fmr f1, f31
/* 80A774E4  FC 40 F0 90 */	fmr f2, f30
/* 80A774E8  38 C0 00 00 */	li r6, 0
/* 80A774EC  4B 6D 38 05 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80A774F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A774F4  41 82 01 08 */	beq lbl_80A775FC
/* 80A774F8  80 1D 16 48 */	lwz r0, 0x1648(r29)
/* 80A774FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A77500  40 82 00 58 */	bne lbl_80A77558
/* 80A77504  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 80A77508  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 80A7750C  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 80A77510  90 61 00 64 */	stw r3, 0x64(r1)
/* 80A77514  3C 00 43 30 */	lis r0, 0x4330
/* 80A77518  90 01 00 60 */	stw r0, 0x60(r1)
/* 80A7751C  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80A77520  EC 00 18 28 */	fsubs f0, f0, f3
/* 80A77524  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A77528  C0 5F 01 BC */	lfs f2, 0x1bc(r31)
/* 80A7752C  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80A77530  90 01 00 68 */	stw r0, 0x68(r1)
/* 80A77534  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80A77538  EC 00 18 28 */	fsubs f0, f0, f3
/* 80A7753C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80A77540  48 00 36 41 */	bl func_80A7AB80
/* 80A77544  FC 00 08 1E */	fctiwz f0, f1
/* 80A77548  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80A7754C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A77550  90 1D 16 48 */	stw r0, 0x1648(r29)
/* 80A77554  48 00 01 78 */	b lbl_80A776CC
lbl_80A77558:
/* 80A77558  38 7D 16 48 */	addi r3, r29, 0x1648
/* 80A7755C  48 00 36 09 */	bl func_80A7AB64
/* 80A77560  2C 03 00 00 */	cmpwi r3, 0
/* 80A77564  40 82 01 68 */	bne lbl_80A776CC
/* 80A77568  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A7756C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A77570  4B 6C E3 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77574  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A77578  38 00 00 2B */	li r0, 0x2b
/* 80A7757C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A77580  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77584  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A77588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7758C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A77590  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80A77594  38 80 13 08 */	li r4, 0x1308
/* 80A77598  4B 5B D4 25 */	bl isEventBit__11dSv_event_cCFUs
/* 80A7759C  2C 03 00 00 */	cmpwi r3, 0
/* 80A775A0  41 82 00 30 */	beq lbl_80A775D0
/* 80A775A4  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E5@ha */
/* 80A775A8  38 03 01 E5 */	addi r0, r3, 0x01E5 /* 0x000501E5@l */
/* 80A775AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A775B0  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A775B4  38 81 00 10 */	addi r4, r1, 0x10
/* 80A775B8  38 A0 FF FF */	li r5, -1
/* 80A775BC  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80A775C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A775C4  7D 89 03 A6 */	mtctr r12
/* 80A775C8  4E 80 04 21 */	bctrl 
/* 80A775CC  48 00 01 00 */	b lbl_80A776CC
lbl_80A775D0:
/* 80A775D0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500DB@ha */
/* 80A775D4  38 03 00 DB */	addi r0, r3, 0x00DB /* 0x000500DB@l */
/* 80A775D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A775DC  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A775E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80A775E4  38 A0 FF FF */	li r5, -1
/* 80A775E8  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80A775EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A775F0  7D 89 03 A6 */	mtctr r12
/* 80A775F4  4E 80 04 21 */	bctrl 
/* 80A775F8  48 00 00 D4 */	b lbl_80A776CC
lbl_80A775FC:
/* 80A775FC  38 00 00 00 */	li r0, 0
/* 80A77600  90 1D 16 48 */	stw r0, 0x1648(r29)
/* 80A77604  48 00 00 C8 */	b lbl_80A776CC
lbl_80A77608:
/* 80A77608  7F A3 EB 78 */	mr r3, r29
/* 80A7760C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A77610  4B 5A 31 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A77614  B0 7D 16 64 */	sth r3, 0x1664(r29)
/* 80A77618  88 1D 16 6B */	lbz r0, 0x166b(r29)
/* 80A7761C  28 00 00 00 */	cmplwi r0, 0
/* 80A77620  41 82 00 34 */	beq lbl_80A77654
/* 80A77624  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A77628  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A7762C  41 82 00 54 */	beq lbl_80A77680
/* 80A77630  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A77634  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A77638  4B 6C E2 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7763C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A77640  38 00 00 0A */	li r0, 0xa
/* 80A77644  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A77648  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A7764C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A77650  48 00 00 30 */	b lbl_80A77680
lbl_80A77654:
/* 80A77654  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A77658  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A7765C  41 82 00 24 */	beq lbl_80A77680
/* 80A77660  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A77664  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A77668  4B 6C E2 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7766C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A77670  38 00 00 0B */	li r0, 0xb
/* 80A77674  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A77678  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A7767C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A77680:
/* 80A77680  38 00 00 00 */	li r0, 0
/* 80A77684  90 1D 16 48 */	stw r0, 0x1648(r29)
/* 80A77688  38 00 00 01 */	li r0, 1
/* 80A7768C  98 1D 16 6E */	stb r0, 0x166e(r29)
/* 80A77690  48 00 00 3C */	b lbl_80A776CC
lbl_80A77694:
/* 80A77694  88 1D 16 6C */	lbz r0, 0x166c(r29)
/* 80A77698  28 00 00 00 */	cmplwi r0, 0
/* 80A7769C  40 82 00 0C */	bne lbl_80A776A8
/* 80A776A0  38 00 00 CA */	li r0, 0xca
/* 80A776A4  90 1D 16 5C */	stw r0, 0x165c(r29)
lbl_80A776A8:
/* 80A776A8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A776AC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A776B0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A776B4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A776B8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A776BC  38 00 00 00 */	li r0, 0
/* 80A776C0  98 1D 16 6E */	stb r0, 0x166e(r29)
/* 80A776C4  38 00 00 01 */	li r0, 1
/* 80A776C8  98 1D 16 69 */	stb r0, 0x1669(r29)
lbl_80A776CC:
/* 80A776CC  80 7D 16 60 */	lwz r3, 0x1660(r29)
/* 80A776D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A776D4  40 82 00 24 */	bne lbl_80A776F8
/* 80A776D8  80 1D 16 5C */	lwz r0, 0x165c(r29)
/* 80A776DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A776E0  41 82 00 20 */	beq lbl_80A77700
/* 80A776E4  38 00 00 02 */	li r0, 2
/* 80A776E8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80A776EC  38 00 00 01 */	li r0, 1
/* 80A776F0  98 1D 0E 32 */	stb r0, 0xe32(r29)
/* 80A776F4  48 00 00 0C */	b lbl_80A77700
lbl_80A776F8:
/* 80A776F8  38 03 FF FF */	addi r0, r3, -1
/* 80A776FC  90 1D 16 60 */	stw r0, 0x1660(r29)
lbl_80A77700:
/* 80A77700  38 60 00 01 */	li r3, 1
/* 80A77704  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80A77708  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80A7770C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80A77710  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80A77714  39 61 00 90 */	addi r11, r1, 0x90
/* 80A77718  4B 8E AB 0D */	bl _restgpr_28
/* 80A7771C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80A77720  7C 08 03 A6 */	mtlr r0
/* 80A77724  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80A77728  4E 80 00 20 */	blr 
