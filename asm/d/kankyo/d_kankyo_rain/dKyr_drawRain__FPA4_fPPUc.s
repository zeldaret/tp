lbl_8006562C:
/* 8006562C  94 21 FD 80 */	stwu r1, -0x280(r1)
/* 80065630  7C 08 02 A6 */	mflr r0
/* 80065634  90 01 02 84 */	stw r0, 0x284(r1)
/* 80065638  DB E1 02 70 */	stfd f31, 0x270(r1)
/* 8006563C  F3 E1 02 78 */	psq_st f31, 632(r1), 0, 0 /* qr0 */
/* 80065640  DB C1 02 60 */	stfd f30, 0x260(r1)
/* 80065644  F3 C1 02 68 */	psq_st f30, 616(r1), 0, 0 /* qr0 */
/* 80065648  DB A1 02 50 */	stfd f29, 0x250(r1)
/* 8006564C  F3 A1 02 58 */	psq_st f29, 600(r1), 0, 0 /* qr0 */
/* 80065650  DB 81 02 40 */	stfd f28, 0x240(r1)
/* 80065654  F3 81 02 48 */	psq_st f28, 584(r1), 0, 0 /* qr0 */
/* 80065658  DB 61 02 30 */	stfd f27, 0x230(r1)
/* 8006565C  F3 61 02 38 */	psq_st f27, 568(r1), 0, 0 /* qr0 */
/* 80065660  DB 41 02 20 */	stfd f26, 0x220(r1)
/* 80065664  F3 41 02 28 */	psq_st f26, 552(r1), 0, 0 /* qr0 */
/* 80065668  DB 21 02 10 */	stfd f25, 0x210(r1)
/* 8006566C  F3 21 02 18 */	psq_st f25, 536(r1), 0, 0 /* qr0 */
/* 80065670  DB 01 02 00 */	stfd f24, 0x200(r1)
/* 80065674  F3 01 02 08 */	psq_st f24, 520(r1), 0, 0 /* qr0 */
/* 80065678  DA E1 01 F0 */	stfd f23, 0x1f0(r1)
/* 8006567C  F2 E1 01 F8 */	psq_st f23, 504(r1), 0, 0 /* qr0 */
/* 80065680  DA C1 01 E0 */	stfd f22, 0x1e0(r1)
/* 80065684  F2 C1 01 E8 */	psq_st f22, 488(r1), 0, 0 /* qr0 */
/* 80065688  DA A1 01 D0 */	stfd f21, 0x1d0(r1)
/* 8006568C  F2 A1 01 D8 */	psq_st f21, 472(r1), 0, 0 /* qr0 */
/* 80065690  DA 81 01 C0 */	stfd f20, 0x1c0(r1)
/* 80065694  F2 81 01 C8 */	psq_st f20, 456(r1), 0, 0 /* qr0 */
/* 80065698  DA 61 01 B0 */	stfd f19, 0x1b0(r1)
/* 8006569C  F2 61 01 B8 */	psq_st f19, 440(r1), 0, 0 /* qr0 */
/* 800656A0  DA 41 01 A0 */	stfd f18, 0x1a0(r1)
/* 800656A4  F2 41 01 A8 */	psq_st f18, 424(r1), 0, 0 /* qr0 */
/* 800656A8  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 800656AC  48 2F CB 09 */	bl _savegpr_19
/* 800656B0  7C 75 1B 78 */	mr r21, r3
/* 800656B4  7C 93 23 78 */	mr r19, r4
/* 800656B8  3C 60 80 42 */	lis r3, lit_7952@ha /* 0x80424950@ha */
/* 800656BC  3B 23 49 50 */	addi r25, r3, lit_7952@l /* 0x80424950@l */
/* 800656C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800656C4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 800656C8  83 E3 0E 84 */	lwz r31, 0xe84(r3)
/* 800656CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800656D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800656D4  82 83 5D 74 */	lwz r20, 0x5d74(r3)
/* 800656D8  38 61 00 48 */	addi r3, r1, 0x48
/* 800656DC  4B FF 54 25 */	bl dKyw_get_wind_vecpow__Fv
/* 800656E0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800656E4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 800656E8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800656EC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 800656F0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800656F4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 800656F8  88 0D 89 7C */	lbz r0, struct_80450EFC+0x0(r13)
/* 800656FC  7C 00 07 75 */	extsb. r0, r0
/* 80065700  40 82 00 14 */	bne lbl_80065714
/* 80065704  38 00 00 00 */	li r0, 0
/* 80065708  90 0D 89 78 */	stw r0, rot_7919(r13)
/* 8006570C  38 00 00 01 */	li r0, 1
/* 80065710  98 0D 89 7C */	stb r0, struct_80450EFC+0x0(r13)
lbl_80065714:
/* 80065714  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80065718  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006571C  80 03 0E 8C */	lwz r0, 0xe8c(r3)
/* 80065720  2C 00 00 00 */	cmpwi r0, 0
/* 80065724  40 82 08 9C */	bne lbl_80065FC0
/* 80065728  88 03 12 D8 */	lbz r0, 0x12d8(r3)
/* 8006572C  28 00 00 00 */	cmplwi r0, 0
/* 80065730  40 82 08 90 */	bne lbl_80065FC0
/* 80065734  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 80065738  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8006573C  C0 02 88 B0 */	lfs f0, lit_5107(r2)
/* 80065740  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80065744  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80065748  A8 1F 36 D0 */	lha r0, 0x36d0(r31)
/* 8006574C  2C 00 00 00 */	cmpwi r0, 0
/* 80065750  41 82 08 70 */	beq lbl_80065FC0
/* 80065754  38 00 00 FF */	li r0, 0xff
/* 80065758  98 01 00 14 */	stb r0, 0x14(r1)
/* 8006575C  98 01 00 15 */	stb r0, 0x15(r1)
/* 80065760  98 01 00 16 */	stb r0, 0x16(r1)
/* 80065764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80065768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006576C  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80065770  28 03 00 00 */	cmplwi r3, 0
/* 80065774  41 82 08 4C */	beq lbl_80065FC0
/* 80065778  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006577C  38 81 01 1C */	addi r4, r1, 0x11c
/* 80065780  48 2E 0E 31 */	bl PSMTXInverse
/* 80065784  48 00 00 08 */	b lbl_8006578C
/* 80065788  48 00 08 38 */	b lbl_80065FC0
lbl_8006578C:
/* 8006578C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80065790  80 93 00 00 */	lwz r4, 0(r19)
/* 80065794  4B FF 62 91 */	bl dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
/* 80065798  38 60 00 00 */	li r3, 0
/* 8006579C  48 2F 83 95 */	bl GXSetNumChans
/* 800657A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800657A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 800657A8  38 60 00 01 */	li r3, 1
/* 800657AC  38 81 00 10 */	addi r4, r1, 0x10
/* 800657B0  48 2F 9B CD */	bl GXSetTevColor
/* 800657B4  38 60 00 01 */	li r3, 1
/* 800657B8  48 2F 66 45 */	bl GXSetNumTexGens
/* 800657BC  38 60 00 00 */	li r3, 0
/* 800657C0  38 80 00 01 */	li r4, 1
/* 800657C4  38 A0 00 04 */	li r5, 4
/* 800657C8  38 C0 00 3C */	li r6, 0x3c
/* 800657CC  38 E0 00 00 */	li r7, 0
/* 800657D0  39 00 00 7D */	li r8, 0x7d
/* 800657D4  48 2F 63 A9 */	bl GXSetTexCoordGen2
/* 800657D8  38 60 00 01 */	li r3, 1
/* 800657DC  48 2F A0 B5 */	bl GXSetNumTevStages
/* 800657E0  38 60 00 00 */	li r3, 0
/* 800657E4  38 80 00 00 */	li r4, 0
/* 800657E8  38 A0 00 00 */	li r5, 0
/* 800657EC  38 C0 00 FF */	li r6, 0xff
/* 800657F0  48 2F 9F 05 */	bl GXSetTevOrder
/* 800657F4  38 60 00 00 */	li r3, 0
/* 800657F8  38 80 00 0F */	li r4, 0xf
/* 800657FC  38 A0 00 02 */	li r5, 2
/* 80065800  38 C0 00 08 */	li r6, 8
/* 80065804  38 E0 00 0F */	li r7, 0xf
/* 80065808  48 2F 9A 1D */	bl GXSetTevColorIn
/* 8006580C  38 60 00 00 */	li r3, 0
/* 80065810  38 80 00 00 */	li r4, 0
/* 80065814  38 A0 00 00 */	li r5, 0
/* 80065818  38 C0 00 00 */	li r6, 0
/* 8006581C  38 E0 00 01 */	li r7, 1
/* 80065820  39 00 00 00 */	li r8, 0
/* 80065824  48 2F 9A 89 */	bl GXSetTevColorOp
/* 80065828  38 60 00 00 */	li r3, 0
/* 8006582C  38 80 00 07 */	li r4, 7
/* 80065830  38 A0 00 01 */	li r5, 1
/* 80065834  38 C0 00 04 */	li r6, 4
/* 80065838  38 E0 00 07 */	li r7, 7
/* 8006583C  48 2F 9A 2D */	bl GXSetTevAlphaIn
/* 80065840  38 60 00 00 */	li r3, 0
/* 80065844  38 80 00 00 */	li r4, 0
/* 80065848  38 A0 00 00 */	li r5, 0
/* 8006584C  38 C0 00 00 */	li r6, 0
/* 80065850  38 E0 00 01 */	li r7, 1
/* 80065854  39 00 00 00 */	li r8, 0
/* 80065858  48 2F 9A BD */	bl GXSetTevAlphaOp
/* 8006585C  38 60 00 01 */	li r3, 1
/* 80065860  38 80 00 04 */	li r4, 4
/* 80065864  38 A0 00 05 */	li r5, 5
/* 80065868  38 C0 00 0F */	li r6, 0xf
/* 8006586C  48 2F A3 85 */	bl GXSetBlendMode
/* 80065870  38 60 00 04 */	li r3, 4
/* 80065874  38 80 00 00 */	li r4, 0
/* 80065878  38 A0 00 01 */	li r5, 1
/* 8006587C  38 C0 00 04 */	li r6, 4
/* 80065880  38 E0 00 00 */	li r7, 0
/* 80065884  48 2F 9D A1 */	bl GXSetAlphaCompare
/* 80065888  38 60 00 01 */	li r3, 1
/* 8006588C  38 80 00 03 */	li r4, 3
/* 80065890  38 A0 00 00 */	li r5, 0
/* 80065894  48 2F A4 09 */	bl GXSetZMode
/* 80065898  38 60 00 01 */	li r3, 1
/* 8006589C  48 2F AD 35 */	bl GXSetClipMode
/* 800658A0  38 60 00 00 */	li r3, 0
/* 800658A4  48 2F 98 31 */	bl GXSetNumIndStages
/* 800658A8  4B FF D2 35 */	bl dKr_cullVtx_Set__Fv
/* 800658AC  38 61 00 BC */	addi r3, r1, 0xbc
/* 800658B0  38 80 00 5A */	li r4, 0x5a
/* 800658B4  C0 42 8A 60 */	lfs f2, lit_7211(r2)
/* 800658B8  80 0D 89 78 */	lwz r0, rot_7919(r13)
/* 800658BC  C8 22 88 70 */	lfd f1, lit_4379(r2)
/* 800658C0  90 01 01 54 */	stw r0, 0x154(r1)
/* 800658C4  3C 00 43 30 */	lis r0, 0x4330
/* 800658C8  90 01 01 50 */	stw r0, 0x150(r1)
/* 800658CC  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 800658D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800658D4  EC 22 00 32 */	fmuls f1, f2, f0
/* 800658D8  48 2E 0D D1 */	bl PSMTXRotRad
/* 800658DC  38 61 01 1C */	addi r3, r1, 0x11c
/* 800658E0  38 81 00 BC */	addi r4, r1, 0xbc
/* 800658E4  7C 65 1B 78 */	mr r5, r3
/* 800658E8  48 2E 0B FD */	bl PSMTXConcat
/* 800658EC  7E A3 AB 78 */	mr r3, r21
/* 800658F0  38 80 00 00 */	li r4, 0
/* 800658F4  48 2F A9 59 */	bl GXLoadPosMtxImm
/* 800658F8  38 60 00 00 */	li r3, 0
/* 800658FC  48 2F A9 F1 */	bl GXSetCurrentMtx
/* 80065900  3B C0 00 00 */	li r30, 0
/* 80065904  3B 80 00 00 */	li r28, 0
/* 80065908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006590C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80065910  3A 63 4E 00 */	addi r19, r3, 0x4e00
/* 80065914  C0 02 89 34 */	lfs f0, lit_5721(r2)
/* 80065918  FC 20 00 50 */	fneg f1, f0
/* 8006591C  C0 02 8A 54 */	lfs f0, lit_7208(r2)
/* 80065920  EE C1 00 32 */	fmuls f22, f1, f0
/* 80065924  3B 19 00 30 */	addi r24, r25, 0x30
/* 80065928  C2 E2 87 B8 */	lfs f23, lit_3954(r2)
/* 8006592C  3A F8 00 0C */	addi r23, r24, 0xc
/* 80065930  3A D8 00 18 */	addi r22, r24, 0x18
/* 80065934  3A B8 00 24 */	addi r21, r24, 0x24
/* 80065938  48 00 06 6C */	b lbl_80065FA4
lbl_8006593C:
/* 8006593C  7F 5F E2 14 */	add r26, r31, r28
/* 80065940  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80065944  FC 00 B8 40 */	fcmpo cr0, f0, f23
/* 80065948  4C 40 13 82 */	cror 2, 0, 2
/* 8006594C  41 82 06 50 */	beq lbl_80065F9C
/* 80065950  48 14 6C 2D */	bl dKy_darkworld_check__Fv
/* 80065954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80065958  41 82 00 24 */	beq lbl_8006597C
/* 8006595C  C0 22 8A 80 */	lfs f1, lit_7883(r2)
/* 80065960  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80065964  EC 01 00 32 */	fmuls f0, f1, f0
/* 80065968  FC 00 00 1E */	fctiwz f0, f0
/* 8006596C  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 80065970  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80065974  98 01 00 17 */	stb r0, 0x17(r1)
/* 80065978  48 00 00 5C */	b lbl_800659D4
lbl_8006597C:
/* 8006597C  7E 63 9B 78 */	mr r3, r19
/* 80065980  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80065984  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80065988  38 84 00 5C */	addi r4, r4, 0x5c
/* 8006598C  48 30 30 09 */	bl strcmp
/* 80065990  2C 03 00 00 */	cmpwi r3, 0
/* 80065994  40 82 00 24 */	bne lbl_800659B8
/* 80065998  C0 22 89 84 */	lfs f1, lit_5741(r2)
/* 8006599C  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 800659A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800659A4  FC 00 00 1E */	fctiwz f0, f0
/* 800659A8  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 800659AC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 800659B0  98 01 00 17 */	stb r0, 0x17(r1)
/* 800659B4  48 00 00 20 */	b lbl_800659D4
lbl_800659B8:
/* 800659B8  C0 22 88 8C */	lfs f1, lit_5098(r2)
/* 800659BC  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 800659C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800659C4  FC 00 00 1E */	fctiwz f0, f0
/* 800659C8  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 800659CC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 800659D0  98 01 00 17 */	stb r0, 0x17(r1)
lbl_800659D4:
/* 800659D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800659D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800659DC  38 60 00 01 */	li r3, 1
/* 800659E0  38 81 00 0C */	addi r4, r1, 0xc
/* 800659E4  48 2F 99 99 */	bl GXSetTevColor
/* 800659E8  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 800659EC  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800659F0  EC 01 00 2A */	fadds f0, f1, f0
/* 800659F4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800659F8  C0 3A 00 2C */	lfs f1, 0x2c(r26)
/* 800659FC  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 80065A00  EC 01 00 2A */	fadds f0, f1, f0
/* 80065A04  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80065A08  C0 3A 00 30 */	lfs f1, 0x30(r26)
/* 80065A0C  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 80065A10  EC 01 00 2A */	fadds f0, f1, f0
/* 80065A14  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80065A18  38 61 00 6C */	addi r3, r1, 0x6c
/* 80065A1C  38 94 00 D8 */	addi r4, r20, 0xd8
/* 80065A20  48 2E 19 7D */	bl PSVECSquareDistance
/* 80065A24  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80065A28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80065A2C  40 81 00 58 */	ble lbl_80065A84
/* 80065A30  FC 00 08 34 */	frsqrte f0, f1
/* 80065A34  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80065A38  FC 44 00 32 */	fmul f2, f4, f0
/* 80065A3C  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80065A40  FC 00 00 32 */	fmul f0, f0, f0
/* 80065A44  FC 01 00 32 */	fmul f0, f1, f0
/* 80065A48  FC 03 00 28 */	fsub f0, f3, f0
/* 80065A4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80065A50  FC 44 00 32 */	fmul f2, f4, f0
/* 80065A54  FC 00 00 32 */	fmul f0, f0, f0
/* 80065A58  FC 01 00 32 */	fmul f0, f1, f0
/* 80065A5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80065A60  FC 02 00 32 */	fmul f0, f2, f0
/* 80065A64  FC 44 00 32 */	fmul f2, f4, f0
/* 80065A68  FC 00 00 32 */	fmul f0, f0, f0
/* 80065A6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80065A70  FC 03 00 28 */	fsub f0, f3, f0
/* 80065A74  FC 02 00 32 */	fmul f0, f2, f0
/* 80065A78  FC 21 00 32 */	fmul f1, f1, f0
/* 80065A7C  FC 20 08 18 */	frsp f1, f1
/* 80065A80  48 00 00 88 */	b lbl_80065B08
lbl_80065A84:
/* 80065A84  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80065A88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80065A8C  40 80 00 10 */	bge lbl_80065A9C
/* 80065A90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80065A94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80065A98  48 00 00 70 */	b lbl_80065B08
lbl_80065A9C:
/* 80065A9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80065AA0  80 81 00 08 */	lwz r4, 8(r1)
/* 80065AA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80065AA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80065AAC  7C 03 00 00 */	cmpw r3, r0
/* 80065AB0  41 82 00 14 */	beq lbl_80065AC4
/* 80065AB4  40 80 00 40 */	bge lbl_80065AF4
/* 80065AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80065ABC  41 82 00 20 */	beq lbl_80065ADC
/* 80065AC0  48 00 00 34 */	b lbl_80065AF4
lbl_80065AC4:
/* 80065AC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80065AC8  41 82 00 0C */	beq lbl_80065AD4
/* 80065ACC  38 00 00 01 */	li r0, 1
/* 80065AD0  48 00 00 28 */	b lbl_80065AF8
lbl_80065AD4:
/* 80065AD4  38 00 00 02 */	li r0, 2
/* 80065AD8  48 00 00 20 */	b lbl_80065AF8
lbl_80065ADC:
/* 80065ADC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80065AE0  41 82 00 0C */	beq lbl_80065AEC
/* 80065AE4  38 00 00 05 */	li r0, 5
/* 80065AE8  48 00 00 10 */	b lbl_80065AF8
lbl_80065AEC:
/* 80065AEC  38 00 00 03 */	li r0, 3
/* 80065AF0  48 00 00 08 */	b lbl_80065AF8
lbl_80065AF4:
/* 80065AF4  38 00 00 04 */	li r0, 4
lbl_80065AF8:
/* 80065AF8  2C 00 00 01 */	cmpwi r0, 1
/* 80065AFC  40 82 00 0C */	bne lbl_80065B08
/* 80065B00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80065B04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80065B08:
/* 80065B08  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 80065B0C  C0 02 88 EC */	lfs f0, lit_5122(r2)
/* 80065B10  EC 01 00 24 */	fdivs f0, f1, f0
/* 80065B14  EC 42 00 2A */	fadds f2, f2, f0
/* 80065B18  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80065B1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80065B20  40 81 00 08 */	ble lbl_80065B28
/* 80065B24  FC 40 00 90 */	fmr f2, f0
lbl_80065B28:
/* 80065B28  C0 22 89 50 */	lfs f1, lit_5728(r2)
/* 80065B2C  C0 02 8A B0 */	lfs f0, lit_8211(r2)
/* 80065B30  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80065B34  EF 01 00 2A */	fadds f24, f1, f0
/* 80065B38  C0 22 89 4C */	lfs f1, lit_5727(r2)
/* 80065B3C  48 20 1E 19 */	bl cM_rndF__Ff
/* 80065B40  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80065B44  EC 20 08 2A */	fadds f1, f0, f1
/* 80065B48  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80065B4C  EC 60 00 72 */	fmuls f3, f0, f1
/* 80065B50  C0 42 88 88 */	lfs f2, lit_5097(r2)
/* 80065B54  C0 3F 36 F0 */	lfs f1, 0x36f0(r31)
/* 80065B58  C0 1F 36 FC */	lfs f0, 0x36fc(r31)
/* 80065B5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80065B60  EC 02 00 32 */	fmuls f0, f2, f0
/* 80065B64  EC 80 18 2A */	fadds f4, f0, f3
/* 80065B68  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80065B6C  C0 42 88 AC */	lfs f2, lit_5106(r2)
/* 80065B70  57 C0 07 7E */	clrlwi r0, r30, 0x1d
/* 80065B74  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 80065B78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80065B7C  90 01 01 54 */	stw r0, 0x154(r1)
/* 80065B80  3C 00 43 30 */	lis r0, 0x4330
/* 80065B84  90 01 01 50 */	stw r0, 0x150(r1)
/* 80065B88  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 80065B8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80065B90  EC 02 00 32 */	fmuls f0, f2, f0
/* 80065B94  EC 03 00 2A */	fadds f0, f3, f0
/* 80065B98  EC 00 20 2A */	fadds f0, f0, f4
/* 80065B9C  EC 18 00 32 */	fmuls f0, f24, f0
/* 80065BA0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80065BA4  C0 22 89 4C */	lfs f1, lit_5727(r2)
/* 80065BA8  48 20 1D AD */	bl cM_rndF__Ff
/* 80065BAC  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80065BB0  EC 20 08 2A */	fadds f1, f0, f1
/* 80065BB4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80065BB8  EC 40 00 72 */	fmuls f2, f0, f1
/* 80065BBC  C0 3F 36 F4 */	lfs f1, 0x36f4(r31)
/* 80065BC0  C0 1F 36 FC */	lfs f0, 0x36fc(r31)
/* 80065BC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80065BC8  EC 20 10 2A */	fadds f1, f0, f2
/* 80065BCC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80065BD0  EC 00 08 2A */	fadds f0, f0, f1
/* 80065BD4  EC 18 00 32 */	fmuls f0, f24, f0
/* 80065BD8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80065BDC  C0 22 89 4C */	lfs f1, lit_5727(r2)
/* 80065BE0  48 20 1D 75 */	bl cM_rndF__Ff
/* 80065BE4  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80065BE8  EC 20 08 2A */	fadds f1, f0, f1
/* 80065BEC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80065BF0  EC 60 00 72 */	fmuls f3, f0, f1
/* 80065BF4  C0 42 88 88 */	lfs f2, lit_5097(r2)
/* 80065BF8  C0 3F 36 F8 */	lfs f1, 0x36f8(r31)
/* 80065BFC  C0 1F 36 FC */	lfs f0, 0x36fc(r31)
/* 80065C00  EC 01 00 32 */	fmuls f0, f1, f0
/* 80065C04  EC 02 00 32 */	fmuls f0, f2, f0
/* 80065C08  EC 80 18 2A */	fadds f4, f0, f3
/* 80065C0C  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 80065C10  C0 42 88 AC */	lfs f2, lit_5106(r2)
/* 80065C14  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 80065C18  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 80065C1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80065C20  90 01 01 5C */	stw r0, 0x15c(r1)
/* 80065C24  3C 00 43 30 */	lis r0, 0x4330
/* 80065C28  90 01 01 58 */	stw r0, 0x158(r1)
/* 80065C2C  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 80065C30  EC 00 08 28 */	fsubs f0, f0, f1
/* 80065C34  EC 02 00 32 */	fmuls f0, f2, f0
/* 80065C38  EC 03 00 2A */	fadds f0, f3, f0
/* 80065C3C  EC 00 20 2A */	fadds f0, f0, f4
/* 80065C40  EC 18 00 32 */	fmuls f0, f24, f0
/* 80065C44  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80065C48  D2 C1 00 84 */	stfs f22, 0x84(r1)
/* 80065C4C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80065C50  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80065C54  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80065C58  38 61 01 1C */	addi r3, r1, 0x11c
/* 80065C5C  38 81 00 84 */	addi r4, r1, 0x84
/* 80065C60  38 A1 00 78 */	addi r5, r1, 0x78
/* 80065C64  48 2E 11 09 */	bl PSMTXMultVec
/* 80065C68  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80065C6C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80065C70  EC 21 00 2A */	fadds f1, f1, f0
/* 80065C74  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80065C78  EC 01 00 28 */	fsubs f0, f1, f0
/* 80065C7C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80065C80  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80065C84  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80065C88  EC 21 00 2A */	fadds f1, f1, f0
/* 80065C8C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80065C90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80065C94  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80065C98  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80065C9C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80065CA0  EC 21 00 2A */	fadds f1, f1, f0
/* 80065CA4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80065CA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80065CAC  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80065CB0  C0 02 8A B4 */	lfs f0, lit_8212(r2)
/* 80065CB4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80065CB8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80065CBC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80065CC0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80065CC4  38 61 01 1C */	addi r3, r1, 0x11c
/* 80065CC8  38 81 00 84 */	addi r4, r1, 0x84
/* 80065CCC  38 A1 00 78 */	addi r5, r1, 0x78
/* 80065CD0  48 2E 10 9D */	bl PSMTXMultVec
/* 80065CD4  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80065CD8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80065CDC  EC 21 00 2A */	fadds f1, f1, f0
/* 80065CE0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80065CE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80065CE8  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80065CEC  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80065CF0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80065CF4  EC 21 00 2A */	fadds f1, f1, f0
/* 80065CF8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80065CFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80065D00  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80065D04  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80065D08  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80065D0C  EC 21 00 2A */	fadds f1, f1, f0
/* 80065D10  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80065D14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80065D18  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80065D1C  C0 02 8A B4 */	lfs f0, lit_8212(r2)
/* 80065D20  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80065D24  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80065D28  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80065D2C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80065D30  38 61 01 1C */	addi r3, r1, 0x11c
/* 80065D34  38 81 00 84 */	addi r4, r1, 0x84
/* 80065D38  38 A1 00 78 */	addi r5, r1, 0x78
/* 80065D3C  48 2E 10 31 */	bl PSMTXMultVec
/* 80065D40  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80065D44  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80065D48  EC 01 00 2A */	fadds f0, f1, f0
/* 80065D4C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80065D50  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80065D54  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80065D58  EC 01 00 2A */	fadds f0, f1, f0
/* 80065D5C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80065D60  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80065D64  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80065D68  EC 01 00 2A */	fadds f0, f1, f0
/* 80065D6C  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80065D70  D2 C1 00 84 */	stfs f22, 0x84(r1)
/* 80065D74  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80065D78  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80065D7C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80065D80  38 61 01 1C */	addi r3, r1, 0x11c
/* 80065D84  38 81 00 84 */	addi r4, r1, 0x84
/* 80065D88  38 A1 00 78 */	addi r5, r1, 0x78
/* 80065D8C  48 2E 0F E1 */	bl PSMTXMultVec
/* 80065D90  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80065D94  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80065D98  EC 61 00 2A */	fadds f3, f1, f0
/* 80065D9C  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 80065DA0  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80065DA4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80065DA8  EC 41 00 2A */	fadds f2, f1, f0
/* 80065DAC  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 80065DB0  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80065DB4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80065DB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80065DBC  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80065DC0  3B A0 00 00 */	li r29, 0
/* 80065DC4  3B 60 00 00 */	li r27, 0
/* 80065DC8  C3 01 00 EC */	lfs f24, 0xec(r1)
/* 80065DCC  3F 40 CC 01 */	lis r26, 0xcc01
/* 80065DD0  C3 21 00 F0 */	lfs f25, 0xf0(r1)
/* 80065DD4  C3 41 00 F4 */	lfs f26, 0xf4(r1)
/* 80065DD8  C3 61 00 F8 */	lfs f27, 0xf8(r1)
/* 80065DDC  C3 81 00 FC */	lfs f28, 0xfc(r1)
/* 80065DE0  C3 A1 01 00 */	lfs f29, 0x100(r1)
/* 80065DE4  C3 C1 01 04 */	lfs f30, 0x104(r1)
/* 80065DE8  C3 E1 01 08 */	lfs f31, 0x108(r1)
/* 80065DEC  C2 41 01 0C */	lfs f18, 0x10c(r1)
/* 80065DF0  FE 60 18 18 */	frsp f19, f3
/* 80065DF4  FE 80 10 18 */	frsp f20, f2
/* 80065DF8  FE A0 00 18 */	frsp f21, f0
lbl_80065DFC:
/* 80065DFC  88 0D 89 7D */	lbz r0, struct_80450EFC+0x1(r13)
/* 80065E00  7C 00 07 75 */	extsb. r0, r0
/* 80065E04  40 82 00 DC */	bne lbl_80065EE0
/* 80065E08  C0 22 8A B8 */	lfs f1, lit_8213(r2)
/* 80065E0C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80065E10  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80065E14  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80065E18  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80065E1C  D0 39 00 30 */	stfs f1, 0x30(r25)
/* 80065E20  D0 18 00 04 */	stfs f0, 4(r24)
/* 80065E24  D0 18 00 08 */	stfs f0, 8(r24)
/* 80065E28  38 79 00 30 */	addi r3, r25, 0x30
/* 80065E2C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80065E30  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80065E34  38 B9 00 00 */	addi r5, r25, 0
/* 80065E38  48 2F BD ED */	bl __register_global_object
/* 80065E3C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 80065E40  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80065E44  C0 02 8A B8 */	lfs f0, lit_8213(r2)
/* 80065E48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80065E4C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80065E50  D0 37 00 00 */	stfs f1, 0(r23)
/* 80065E54  D0 18 00 10 */	stfs f0, 0x10(r24)
/* 80065E58  D0 18 00 14 */	stfs f0, 0x14(r24)
/* 80065E5C  7E E3 BB 78 */	mr r3, r23
/* 80065E60  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80065E64  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80065E68  38 B9 00 0C */	addi r5, r25, 0xc
/* 80065E6C  48 2F BD B9 */	bl __register_global_object
/* 80065E70  C0 22 8A B8 */	lfs f1, lit_8213(r2)
/* 80065E74  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80065E78  C0 02 8A BC */	lfs f0, lit_8214(r2)
/* 80065E7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80065E80  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80065E84  D0 36 00 00 */	stfs f1, 0(r22)
/* 80065E88  D0 18 00 1C */	stfs f0, 0x1c(r24)
/* 80065E8C  D0 38 00 20 */	stfs f1, 0x20(r24)
/* 80065E90  7E C3 B3 78 */	mr r3, r22
/* 80065E94  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80065E98  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80065E9C  38 B9 00 18 */	addi r5, r25, 0x18
/* 80065EA0  48 2F BD 85 */	bl __register_global_object
/* 80065EA4  C0 22 8A 58 */	lfs f1, lit_7209(r2)
/* 80065EA8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80065EAC  C0 02 8A C0 */	lfs f0, lit_8215(r2)
/* 80065EB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80065EB4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80065EB8  D0 35 00 00 */	stfs f1, 0(r21)
/* 80065EBC  D0 18 00 28 */	stfs f0, 0x28(r24)
/* 80065EC0  D0 38 00 2C */	stfs f1, 0x2c(r24)
/* 80065EC4  7E A3 AB 78 */	mr r3, r21
/* 80065EC8  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80065ECC  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80065ED0  38 B9 00 24 */	addi r5, r25, 0x24
/* 80065ED4  48 2F BD 51 */	bl __register_global_object
/* 80065ED8  38 00 00 01 */	li r0, 1
/* 80065EDC  98 0D 89 7D */	stb r0, struct_80450EFC+0x1(r13)
lbl_80065EE0:
/* 80065EE0  38 60 00 80 */	li r3, 0x80
/* 80065EE4  38 80 00 00 */	li r4, 0
/* 80065EE8  38 A0 00 04 */	li r5, 4
/* 80065EEC  48 2F 68 79 */	bl GXBegin
/* 80065EF0  38 79 00 30 */	addi r3, r25, 0x30
/* 80065EF4  7C 63 DA 14 */	add r3, r3, r27
/* 80065EF8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80065EFC  EC 18 08 2A */	fadds f0, f24, f1
/* 80065F00  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F04  C0 43 00 04 */	lfs f2, 4(r3)
/* 80065F08  EC 19 10 2A */	fadds f0, f25, f2
/* 80065F0C  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F10  C0 63 00 08 */	lfs f3, 8(r3)
/* 80065F14  EC 1A 18 2A */	fadds f0, f26, f3
/* 80065F18  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F1C  38 60 00 00 */	li r3, 0
/* 80065F20  B0 7A 80 00 */	sth r3, -0x8000(r26)
/* 80065F24  B0 7A 80 00 */	sth r3, -0x8000(r26)
/* 80065F28  EC 1B 08 2A */	fadds f0, f27, f1
/* 80065F2C  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F30  EC 1C 10 2A */	fadds f0, f28, f2
/* 80065F34  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F38  EC 1D 18 2A */	fadds f0, f29, f3
/* 80065F3C  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F40  38 00 00 FF */	li r0, 0xff
/* 80065F44  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 80065F48  B0 7A 80 00 */	sth r3, -0x8000(r26)
/* 80065F4C  EC 1E 08 2A */	fadds f0, f30, f1
/* 80065F50  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F54  EC 1F 10 2A */	fadds f0, f31, f2
/* 80065F58  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F5C  EC 12 18 2A */	fadds f0, f18, f3
/* 80065F60  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F64  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 80065F68  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 80065F6C  EC 13 08 2A */	fadds f0, f19, f1
/* 80065F70  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F74  EC 14 10 2A */	fadds f0, f20, f2
/* 80065F78  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F7C  EC 15 18 2A */	fadds f0, f21, f3
/* 80065F80  D0 1A 80 00 */	stfs f0, -0x8000(r26)
/* 80065F84  B0 7A 80 00 */	sth r3, -0x8000(r26)
/* 80065F88  B0 1A 80 00 */	sth r0, -0x8000(r26)
/* 80065F8C  3B BD 00 01 */	addi r29, r29, 1
/* 80065F90  2C 1D 00 04 */	cmpwi r29, 4
/* 80065F94  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80065F98  41 80 FE 64 */	blt lbl_80065DFC
lbl_80065F9C:
/* 80065F9C  3B DE 00 01 */	addi r30, r30, 1
/* 80065FA0  3B 9C 00 38 */	addi r28, r28, 0x38
lbl_80065FA4:
/* 80065FA4  A8 1F 36 D0 */	lha r0, 0x36d0(r31)
/* 80065FA8  7C 1E 00 00 */	cmpw r30, r0
/* 80065FAC  41 80 F9 90 */	blt lbl_8006593C
/* 80065FB0  38 60 00 00 */	li r3, 0
/* 80065FB4  48 2F A6 1D */	bl GXSetClipMode
/* 80065FB8  38 00 00 00 */	li r0, 0
/* 80065FBC  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_80065FC0:
/* 80065FC0  E3 E1 02 78 */	psq_l f31, 632(r1), 0, 0 /* qr0 */
/* 80065FC4  CB E1 02 70 */	lfd f31, 0x270(r1)
/* 80065FC8  E3 C1 02 68 */	psq_l f30, 616(r1), 0, 0 /* qr0 */
/* 80065FCC  CB C1 02 60 */	lfd f30, 0x260(r1)
/* 80065FD0  E3 A1 02 58 */	psq_l f29, 600(r1), 0, 0 /* qr0 */
/* 80065FD4  CB A1 02 50 */	lfd f29, 0x250(r1)
/* 80065FD8  E3 81 02 48 */	psq_l f28, 584(r1), 0, 0 /* qr0 */
/* 80065FDC  CB 81 02 40 */	lfd f28, 0x240(r1)
/* 80065FE0  E3 61 02 38 */	psq_l f27, 568(r1), 0, 0 /* qr0 */
/* 80065FE4  CB 61 02 30 */	lfd f27, 0x230(r1)
/* 80065FE8  E3 41 02 28 */	psq_l f26, 552(r1), 0, 0 /* qr0 */
/* 80065FEC  CB 41 02 20 */	lfd f26, 0x220(r1)
/* 80065FF0  E3 21 02 18 */	psq_l f25, 536(r1), 0, 0 /* qr0 */
/* 80065FF4  CB 21 02 10 */	lfd f25, 0x210(r1)
/* 80065FF8  E3 01 02 08 */	psq_l f24, 520(r1), 0, 0 /* qr0 */
/* 80065FFC  CB 01 02 00 */	lfd f24, 0x200(r1)
/* 80066000  E2 E1 01 F8 */	psq_l f23, 504(r1), 0, 0 /* qr0 */
/* 80066004  CA E1 01 F0 */	lfd f23, 0x1f0(r1)
/* 80066008  E2 C1 01 E8 */	psq_l f22, 488(r1), 0, 0 /* qr0 */
/* 8006600C  CA C1 01 E0 */	lfd f22, 0x1e0(r1)
/* 80066010  E2 A1 01 D8 */	psq_l f21, 472(r1), 0, 0 /* qr0 */
/* 80066014  CA A1 01 D0 */	lfd f21, 0x1d0(r1)
/* 80066018  E2 81 01 C8 */	psq_l f20, 456(r1), 0, 0 /* qr0 */
/* 8006601C  CA 81 01 C0 */	lfd f20, 0x1c0(r1)
/* 80066020  E2 61 01 B8 */	psq_l f19, 440(r1), 0, 0 /* qr0 */
/* 80066024  CA 61 01 B0 */	lfd f19, 0x1b0(r1)
/* 80066028  E2 41 01 A8 */	psq_l f18, 424(r1), 0, 0 /* qr0 */
/* 8006602C  CA 41 01 A0 */	lfd f18, 0x1a0(r1)
/* 80066030  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 80066034  48 2F C1 CD */	bl _restgpr_19
/* 80066038  80 01 02 84 */	lwz r0, 0x284(r1)
/* 8006603C  7C 08 03 A6 */	mtlr r0
/* 80066040  38 21 02 80 */	addi r1, r1, 0x280
/* 80066044  4E 80 00 20 */	blr 
