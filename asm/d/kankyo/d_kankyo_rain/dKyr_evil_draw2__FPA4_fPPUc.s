lbl_8006DA7C:
/* 8006DA7C  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8006DA80  7C 08 02 A6 */	mflr r0
/* 8006DA84  90 01 02 54 */	stw r0, 0x254(r1)
/* 8006DA88  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 8006DA8C  F3 E1 02 48 */	psq_st f31, 584(r1), 0, 0 /* qr0 */
/* 8006DA90  DB C1 02 30 */	stfd f30, 0x230(r1)
/* 8006DA94  F3 C1 02 38 */	psq_st f30, 568(r1), 0, 0 /* qr0 */
/* 8006DA98  DB A1 02 20 */	stfd f29, 0x220(r1)
/* 8006DA9C  F3 A1 02 28 */	psq_st f29, 552(r1), 0, 0 /* qr0 */
/* 8006DAA0  DB 81 02 10 */	stfd f28, 0x210(r1)
/* 8006DAA4  F3 81 02 18 */	psq_st f28, 536(r1), 0, 0 /* qr0 */
/* 8006DAA8  DB 61 02 00 */	stfd f27, 0x200(r1)
/* 8006DAAC  F3 61 02 08 */	psq_st f27, 520(r1), 0, 0 /* qr0 */
/* 8006DAB0  DB 41 01 F0 */	stfd f26, 0x1f0(r1)
/* 8006DAB4  F3 41 01 F8 */	psq_st f26, 504(r1), 0, 0 /* qr0 */
/* 8006DAB8  DB 21 01 E0 */	stfd f25, 0x1e0(r1)
/* 8006DABC  F3 21 01 E8 */	psq_st f25, 488(r1), 0, 0 /* qr0 */
/* 8006DAC0  DB 01 01 D0 */	stfd f24, 0x1d0(r1)
/* 8006DAC4  F3 01 01 D8 */	psq_st f24, 472(r1), 0, 0 /* qr0 */
/* 8006DAC8  DA E1 01 C0 */	stfd f23, 0x1c0(r1)
/* 8006DACC  F2 E1 01 C8 */	psq_st f23, 456(r1), 0, 0 /* qr0 */
/* 8006DAD0  DA C1 01 B0 */	stfd f22, 0x1b0(r1)
/* 8006DAD4  F2 C1 01 B8 */	psq_st f22, 440(r1), 0, 0 /* qr0 */
/* 8006DAD8  DA A1 01 A0 */	stfd f21, 0x1a0(r1)
/* 8006DADC  F2 A1 01 A8 */	psq_st f21, 424(r1), 0, 0 /* qr0 */
/* 8006DAE0  DA 81 01 90 */	stfd f20, 0x190(r1)
/* 8006DAE4  F2 81 01 98 */	psq_st f20, 408(r1), 0, 0 /* qr0 */
/* 8006DAE8  DA 61 01 80 */	stfd f19, 0x180(r1)
/* 8006DAEC  F2 61 01 88 */	psq_st f19, 392(r1), 0, 0 /* qr0 */
/* 8006DAF0  39 61 01 80 */	addi r11, r1, 0x180
/* 8006DAF4  48 2F 46 D1 */	bl _savegpr_23
/* 8006DAF8  7C 79 1B 78 */	mr r25, r3
/* 8006DAFC  7C 98 23 78 */	mr r24, r4
/* 8006DB00  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006DB04  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006DB08  83 63 10 58 */	lwz r27, 0x1058(r3)
/* 8006DB0C  88 0D 89 C4 */	lbz r0, data_80450F44(r13)
/* 8006DB10  7C 00 07 75 */	extsb. r0, r0
/* 8006DB14  40 82 00 14 */	bne lbl_8006DB28
/* 8006DB18  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006DB1C  D0 0D 89 C0 */	stfs f0, rot_11586(r13)
/* 8006DB20  38 00 00 01 */	li r0, 1
/* 8006DB24  98 0D 89 C4 */	stb r0, data_80450F44(r13)
lbl_8006DB28:
/* 8006DB28  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 8006DB2C  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 8006DB30  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8006DB34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006DB38  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8006DB3C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8006DB40  7C 03 04 2E */	lfsx f0, r3, r0
/* 8006DB44  FC 00 02 10 */	fabs f0, f0
/* 8006DB48  FE 60 00 18 */	frsp f19, f0
/* 8006DB4C  28 1B 00 00 */	cmplwi r27, 0
/* 8006DB50  41 82 08 78 */	beq lbl_8006E3C8
/* 8006DB54  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8006DB58  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8006DB5C  48 2A 2B E1 */	bl reinitGX__6J3DSysFv
/* 8006DB60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006DB64  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006DB68  80 7D 61 B0 */	lwz r3, 0x61b0(r29)
/* 8006DB6C  28 03 00 00 */	cmplwi r3, 0
/* 8006DB70  41 82 08 58 */	beq lbl_8006E3C8
/* 8006DB74  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006DB78  38 81 00 EC */	addi r4, r1, 0xec
/* 8006DB7C  48 2D 8A 35 */	bl PSMTXInverse
/* 8006DB80  48 00 00 08 */	b lbl_8006DB88
/* 8006DB84  48 00 08 44 */	b lbl_8006E3C8
lbl_8006DB88:
/* 8006DB88  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8006DB8C  EC 00 04 F2 */	fmuls f0, f0, f19
/* 8006DB90  FC 00 00 1E */	fctiwz f0, f0
/* 8006DB94  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 8006DB98  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8006DB9C  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8006DBA0  C0 02 89 FC */	lfs f0, lit_6726(r2)
/* 8006DBA4  EC 00 04 F2 */	fmuls f0, f0, f19
/* 8006DBA8  FC 00 00 1E */	fctiwz f0, f0
/* 8006DBAC  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8006DBB0  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006DBB4  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006DBB8  38 00 00 00 */	li r0, 0
/* 8006DBBC  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8006DBC0  38 60 00 FF */	li r3, 0xff
/* 8006DBC4  98 61 00 1F */	stb r3, 0x1f(r1)
/* 8006DBC8  98 61 00 20 */	stb r3, 0x20(r1)
/* 8006DBCC  38 00 00 9F */	li r0, 0x9f
/* 8006DBD0  98 01 00 21 */	stb r0, 0x21(r1)
/* 8006DBD4  38 00 00 87 */	li r0, 0x87
/* 8006DBD8  98 01 00 22 */	stb r0, 0x22(r1)
/* 8006DBDC  98 61 00 23 */	stb r3, 0x23(r1)
/* 8006DBE0  38 61 00 6C */	addi r3, r1, 0x6c
/* 8006DBE4  80 98 00 04 */	lwz r4, 4(r24)
/* 8006DBE8  4B FE DE 3D */	bl dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
/* 8006DBEC  C0 2D 89 C0 */	lfs f1, rot_11586(r13)
/* 8006DBF0  C0 02 8A 24 */	lfs f0, lit_6736(r2)
/* 8006DBF4  EC 21 00 2A */	fadds f1, f1, f0
/* 8006DBF8  D0 2D 89 C0 */	stfs f1, rot_11586(r13)
/* 8006DBFC  38 61 00 BC */	addi r3, r1, 0xbc
/* 8006DC00  38 80 00 5A */	li r4, 0x5a
/* 8006DC04  C0 02 8A 60 */	lfs f0, lit_7211(r2)
/* 8006DC08  EC 20 00 72 */	fmuls f1, f0, f1
/* 8006DC0C  48 2D 8A 9D */	bl PSMTXRotRad
/* 8006DC10  38 61 00 EC */	addi r3, r1, 0xec
/* 8006DC14  38 81 00 BC */	addi r4, r1, 0xbc
/* 8006DC18  7C 65 1B 78 */	mr r5, r3
/* 8006DC1C  48 2D 88 C9 */	bl PSMTXConcat
/* 8006DC20  7F 23 CB 78 */	mr r3, r25
/* 8006DC24  38 80 00 00 */	li r4, 0
/* 8006DC28  48 2F 26 25 */	bl GXLoadPosMtxImm
/* 8006DC2C  38 60 00 00 */	li r3, 0
/* 8006DC30  48 2F 26 BD */	bl GXSetCurrentMtx
/* 8006DC34  38 60 00 00 */	li r3, 0
/* 8006DC38  38 80 00 09 */	li r4, 9
/* 8006DC3C  38 A0 00 01 */	li r5, 1
/* 8006DC40  38 C0 00 04 */	li r6, 4
/* 8006DC44  38 E0 00 00 */	li r7, 0
/* 8006DC48  48 2E D9 7D */	bl GXSetVtxAttrFmt
/* 8006DC4C  38 60 00 00 */	li r3, 0
/* 8006DC50  38 80 00 0D */	li r4, 0xd
/* 8006DC54  38 A0 00 01 */	li r5, 1
/* 8006DC58  38 C0 00 03 */	li r6, 3
/* 8006DC5C  38 E0 00 08 */	li r7, 8
/* 8006DC60  48 2E D9 65 */	bl GXSetVtxAttrFmt
/* 8006DC64  48 2E D9 29 */	bl GXClearVtxDesc
/* 8006DC68  38 60 00 09 */	li r3, 9
/* 8006DC6C  38 80 00 01 */	li r4, 1
/* 8006DC70  48 2E D2 49 */	bl GXSetVtxDesc
/* 8006DC74  38 60 00 0D */	li r3, 0xd
/* 8006DC78  38 80 00 01 */	li r4, 1
/* 8006DC7C  48 2E D2 3D */	bl GXSetVtxDesc
/* 8006DC80  38 60 00 00 */	li r3, 0
/* 8006DC84  48 2E FE AD */	bl GXSetNumChans
/* 8006DC88  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8006DC8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8006DC90  38 60 00 01 */	li r3, 1
/* 8006DC94  38 81 00 18 */	addi r4, r1, 0x18
/* 8006DC98  48 2F 16 E5 */	bl GXSetTevColor
/* 8006DC9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006DCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006DCA4  38 60 00 02 */	li r3, 2
/* 8006DCA8  38 81 00 14 */	addi r4, r1, 0x14
/* 8006DCAC  48 2F 16 D1 */	bl GXSetTevColor
/* 8006DCB0  38 60 00 01 */	li r3, 1
/* 8006DCB4  48 2E E1 49 */	bl GXSetNumTexGens
/* 8006DCB8  38 60 00 00 */	li r3, 0
/* 8006DCBC  38 80 00 01 */	li r4, 1
/* 8006DCC0  38 A0 00 04 */	li r5, 4
/* 8006DCC4  38 C0 00 3C */	li r6, 0x3c
/* 8006DCC8  38 E0 00 00 */	li r7, 0
/* 8006DCCC  39 00 00 7D */	li r8, 0x7d
/* 8006DCD0  48 2E DE AD */	bl GXSetTexCoordGen2
/* 8006DCD4  38 60 00 01 */	li r3, 1
/* 8006DCD8  48 2F 1B B9 */	bl GXSetNumTevStages
/* 8006DCDC  38 60 00 00 */	li r3, 0
/* 8006DCE0  38 80 00 00 */	li r4, 0
/* 8006DCE4  38 A0 00 00 */	li r5, 0
/* 8006DCE8  38 C0 00 FF */	li r6, 0xff
/* 8006DCEC  48 2F 1A 09 */	bl GXSetTevOrder
/* 8006DCF0  38 60 00 00 */	li r3, 0
/* 8006DCF4  38 80 00 04 */	li r4, 4
/* 8006DCF8  38 A0 00 02 */	li r5, 2
/* 8006DCFC  38 C0 00 08 */	li r6, 8
/* 8006DD00  38 E0 00 0F */	li r7, 0xf
/* 8006DD04  48 2F 15 21 */	bl GXSetTevColorIn
/* 8006DD08  38 60 00 00 */	li r3, 0
/* 8006DD0C  38 80 00 00 */	li r4, 0
/* 8006DD10  38 A0 00 00 */	li r5, 0
/* 8006DD14  38 C0 00 00 */	li r6, 0
/* 8006DD18  38 E0 00 01 */	li r7, 1
/* 8006DD1C  39 00 00 00 */	li r8, 0
/* 8006DD20  48 2F 15 8D */	bl GXSetTevColorOp
/* 8006DD24  38 60 00 00 */	li r3, 0
/* 8006DD28  38 80 00 07 */	li r4, 7
/* 8006DD2C  38 A0 00 04 */	li r5, 4
/* 8006DD30  38 C0 00 01 */	li r6, 1
/* 8006DD34  38 E0 00 07 */	li r7, 7
/* 8006DD38  48 2F 15 31 */	bl GXSetTevAlphaIn
/* 8006DD3C  38 60 00 00 */	li r3, 0
/* 8006DD40  38 80 00 00 */	li r4, 0
/* 8006DD44  38 A0 00 00 */	li r5, 0
/* 8006DD48  38 C0 00 00 */	li r6, 0
/* 8006DD4C  38 E0 00 01 */	li r7, 1
/* 8006DD50  39 00 00 00 */	li r8, 0
/* 8006DD54  48 2F 15 C1 */	bl GXSetTevAlphaOp
/* 8006DD58  38 60 00 01 */	li r3, 1
/* 8006DD5C  38 80 00 04 */	li r4, 4
/* 8006DD60  38 A0 00 05 */	li r5, 5
/* 8006DD64  38 C0 00 03 */	li r6, 3
/* 8006DD68  48 2F 1E 89 */	bl GXSetBlendMode
/* 8006DD6C  38 60 00 04 */	li r3, 4
/* 8006DD70  38 80 00 00 */	li r4, 0
/* 8006DD74  38 A0 00 01 */	li r5, 1
/* 8006DD78  38 C0 00 04 */	li r6, 4
/* 8006DD7C  38 E0 00 00 */	li r7, 0
/* 8006DD80  48 2F 18 A5 */	bl GXSetAlphaCompare
/* 8006DD84  38 60 00 01 */	li r3, 1
/* 8006DD88  48 2F 1F 49 */	bl GXSetZCompLoc
/* 8006DD8C  38 60 00 01 */	li r3, 1
/* 8006DD90  38 80 00 03 */	li r4, 3
/* 8006DD94  38 A0 00 00 */	li r5, 0
/* 8006DD98  48 2F 1F 05 */	bl GXSetZMode
/* 8006DD9C  38 60 00 00 */	li r3, 0
/* 8006DDA0  48 2E EB E5 */	bl GXSetCullMode
/* 8006DDA4  38 60 00 01 */	li r3, 1
/* 8006DDA8  48 2F 28 29 */	bl GXSetClipMode
/* 8006DDAC  38 60 00 00 */	li r3, 0
/* 8006DDB0  48 2F 13 25 */	bl GXSetNumIndStages
/* 8006DDB4  3B 40 00 00 */	li r26, 0
/* 8006DDB8  3A E0 00 00 */	li r23, 0
/* 8006DDBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006DDC0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006DDC4  3B 9E 4E 00 */	addi r28, r30, 0x4e00
/* 8006DDC8  C0 02 88 DC */	lfs f0, lit_5118(r2)
/* 8006DDCC  FF E0 00 50 */	fneg f31, f0
/* 8006DDD0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006DDD4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006DDD8  48 00 05 D4 */	b lbl_8006E3AC
lbl_8006DDDC:
/* 8006DDDC  3B 37 00 1C */	addi r25, r23, 0x1c
/* 8006DDE0  7F 3B CA 14 */	add r25, r27, r25
/* 8006DDE4  83 1E 5D 74 */	lwz r24, 0x5d74(r30)
/* 8006DDE8  C3 B9 00 38 */	lfs f29, 0x38(r25)
/* 8006DDEC  88 19 00 00 */	lbz r0, 0(r25)
/* 8006DDF0  7C 00 07 75 */	extsb. r0, r0
/* 8006DDF4  41 82 05 B0 */	beq lbl_8006E3A4
/* 8006DDF8  57 40 07 FF */	clrlwi. r0, r26, 0x1f
/* 8006DDFC  41 82 05 A8 */	beq lbl_8006E3A4
/* 8006DE00  A0 19 00 3C */	lhz r0, 0x3c(r25)
/* 8006DE04  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006DE08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8006DE0C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8006DE10  7C 03 04 2E */	lfsx f0, r3, r0
/* 8006DE14  FC 00 02 10 */	fabs f0, f0
/* 8006DE18  FC 40 00 18 */	frsp f2, f0
/* 8006DE1C  C0 22 88 40 */	lfs f1, lit_4365(r2)
/* 8006DE20  C0 02 88 48 */	lfs f0, lit_4367(r2)
/* 8006DE24  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8006DE28  EF C1 00 2A */	fadds f30, f1, f0
/* 8006DE2C  38 61 00 24 */	addi r3, r1, 0x24
/* 8006DE30  38 99 00 10 */	addi r4, r25, 0x10
/* 8006DE34  38 B9 00 04 */	addi r5, r25, 4
/* 8006DE38  48 1F 8C AD */	bl __pl__4cXyzCFRC3Vec
/* 8006DE3C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8006DE40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8006DE44  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8006DE48  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8006DE4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8006DE50  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8006DE54  7F 83 E3 78 */	mr r3, r28
/* 8006DE58  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006DE5C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006DE60  38 84 00 45 */	addi r4, r4, 0x45
/* 8006DE64  48 2F AB 31 */	bl strcmp
/* 8006DE68  2C 03 00 00 */	cmpwi r3, 0
/* 8006DE6C  40 82 00 2C */	bne lbl_8006DE98
/* 8006DE70  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8006DE74  2C 00 00 01 */	cmpwi r0, 1
/* 8006DE78  40 82 00 20 */	bne lbl_8006DE98
/* 8006DE7C  2C 1A 06 40 */	cmpwi r26, 0x640
/* 8006DE80  41 80 00 18 */	blt lbl_8006DE98
/* 8006DE84  C0 38 00 D8 */	lfs f1, 0xd8(r24)
/* 8006DE88  C0 02 8B E0 */	lfs f0, lit_11882(r2)
/* 8006DE8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DE90  4C 41 13 82 */	cror 2, 1, 2
/* 8006DE94  41 82 05 10 */	beq lbl_8006E3A4
lbl_8006DE98:
/* 8006DE98  C0 02 8B E4 */	lfs f0, lit_11883(r2)
/* 8006DE9C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8006DEA0  41 81 05 04 */	bgt lbl_8006E3A4
/* 8006DEA4  80 7D 61 B0 */	lwz r3, 0x61b0(r29)
/* 8006DEA8  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 8006DEAC  C0 02 88 B8 */	lfs f0, lit_5109(r2)
/* 8006DEB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DEB4  40 81 00 40 */	ble lbl_8006DEF4
/* 8006DEB8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8006DEBC  38 81 00 30 */	addi r4, r1, 0x30
/* 8006DEC0  4B FA 74 51 */	bl mDoLib_project__FP3VecP3Vec
/* 8006DEC4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8006DEC8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8006DECC  40 81 04 D8 */	ble lbl_8006E3A4
/* 8006DED0  C0 02 8B E8 */	lfs f0, lit_11884(r2)
/* 8006DED4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DED8  40 80 04 CC */	bge lbl_8006E3A4
/* 8006DEDC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8006DEE0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8006DEE4  40 81 04 C0 */	ble lbl_8006E3A4
/* 8006DEE8  C0 02 8B EC */	lfs f0, lit_11885(r2)
/* 8006DEEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DEF0  40 80 04 B4 */	bge lbl_8006E3A4
lbl_8006DEF4:
/* 8006DEF4  38 78 00 D8 */	addi r3, r24, 0xd8
/* 8006DEF8  38 81 00 3C */	addi r4, r1, 0x3c
/* 8006DEFC  48 2D 94 A1 */	bl PSVECSquareDistance
/* 8006DF00  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006DF04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DF08  40 81 00 58 */	ble lbl_8006DF60
/* 8006DF0C  FC 00 08 34 */	frsqrte f0, f1
/* 8006DF10  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006DF14  FC 44 00 32 */	fmul f2, f4, f0
/* 8006DF18  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006DF1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8006DF20  FC 01 00 32 */	fmul f0, f1, f0
/* 8006DF24  FC 03 00 28 */	fsub f0, f3, f0
/* 8006DF28  FC 02 00 32 */	fmul f0, f2, f0
/* 8006DF2C  FC 44 00 32 */	fmul f2, f4, f0
/* 8006DF30  FC 00 00 32 */	fmul f0, f0, f0
/* 8006DF34  FC 01 00 32 */	fmul f0, f1, f0
/* 8006DF38  FC 03 00 28 */	fsub f0, f3, f0
/* 8006DF3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8006DF40  FC 44 00 32 */	fmul f2, f4, f0
/* 8006DF44  FC 00 00 32 */	fmul f0, f0, f0
/* 8006DF48  FC 01 00 32 */	fmul f0, f1, f0
/* 8006DF4C  FC 03 00 28 */	fsub f0, f3, f0
/* 8006DF50  FC 02 00 32 */	fmul f0, f2, f0
/* 8006DF54  FC 21 00 32 */	fmul f1, f1, f0
/* 8006DF58  FC 20 08 18 */	frsp f1, f1
/* 8006DF5C  48 00 00 88 */	b lbl_8006DFE4
lbl_8006DF60:
/* 8006DF60  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006DF64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DF68  40 80 00 10 */	bge lbl_8006DF78
/* 8006DF6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006DF70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8006DF74  48 00 00 70 */	b lbl_8006DFE4
lbl_8006DF78:
/* 8006DF78  D0 21 00 08 */	stfs f1, 8(r1)
/* 8006DF7C  80 81 00 08 */	lwz r4, 8(r1)
/* 8006DF80  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006DF84  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006DF88  7C 03 00 00 */	cmpw r3, r0
/* 8006DF8C  41 82 00 14 */	beq lbl_8006DFA0
/* 8006DF90  40 80 00 40 */	bge lbl_8006DFD0
/* 8006DF94  2C 03 00 00 */	cmpwi r3, 0
/* 8006DF98  41 82 00 20 */	beq lbl_8006DFB8
/* 8006DF9C  48 00 00 34 */	b lbl_8006DFD0
lbl_8006DFA0:
/* 8006DFA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006DFA4  41 82 00 0C */	beq lbl_8006DFB0
/* 8006DFA8  38 00 00 01 */	li r0, 1
/* 8006DFAC  48 00 00 28 */	b lbl_8006DFD4
lbl_8006DFB0:
/* 8006DFB0  38 00 00 02 */	li r0, 2
/* 8006DFB4  48 00 00 20 */	b lbl_8006DFD4
lbl_8006DFB8:
/* 8006DFB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006DFBC  41 82 00 0C */	beq lbl_8006DFC8
/* 8006DFC0  38 00 00 05 */	li r0, 5
/* 8006DFC4  48 00 00 10 */	b lbl_8006DFD4
lbl_8006DFC8:
/* 8006DFC8  38 00 00 03 */	li r0, 3
/* 8006DFCC  48 00 00 08 */	b lbl_8006DFD4
lbl_8006DFD0:
/* 8006DFD0  38 00 00 04 */	li r0, 4
lbl_8006DFD4:
/* 8006DFD4  2C 00 00 01 */	cmpwi r0, 1
/* 8006DFD8  40 82 00 0C */	bne lbl_8006DFE4
/* 8006DFDC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006DFE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8006DFE4:
/* 8006DFE4  C0 02 87 F8 */	lfs f0, lit_4111(r2)
/* 8006DFE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DFEC  40 80 00 4C */	bge lbl_8006E038
/* 8006DFF0  C0 02 8A B8 */	lfs f0, lit_8213(r2)
/* 8006DFF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006DFF8  40 80 00 0C */	bge lbl_8006E004
/* 8006DFFC  C0 62 87 B8 */	lfs f3, lit_3954(r2)
/* 8006E000  48 00 00 3C */	b lbl_8006E03C
lbl_8006E004:
/* 8006E004  EC 21 00 28 */	fsubs f1, f1, f0
/* 8006E008  C0 02 89 A4 */	lfs f0, lit_6355(r2)
/* 8006E00C  EC 61 00 24 */	fdivs f3, f1, f0
/* 8006E010  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E014  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8006E018  40 80 00 0C */	bge lbl_8006E024
/* 8006E01C  FC 60 00 90 */	fmr f3, f0
/* 8006E020  48 00 00 1C */	b lbl_8006E03C
lbl_8006E024:
/* 8006E024  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006E028  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8006E02C  40 81 00 10 */	ble lbl_8006E03C
/* 8006E030  FC 60 00 90 */	fmr f3, f0
/* 8006E034  48 00 00 08 */	b lbl_8006E03C
lbl_8006E038:
/* 8006E038  C0 62 88 14 */	lfs f3, lit_4354(r2)
lbl_8006E03C:
/* 8006E03C  C0 19 00 24 */	lfs f0, 0x24(r25)
/* 8006E040  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8006E044  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 8006E048  EC 01 00 F2 */	fmuls f0, f1, f3
/* 8006E04C  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E050  EF BD 00 32 */	fmuls f29, f29, f0
/* 8006E054  C0 22 88 40 */	lfs f1, lit_4365(r2)
/* 8006E058  C0 02 89 30 */	lfs f0, lit_5720(r2)
/* 8006E05C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8006E060  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E064  EF BD 00 32 */	fmuls f29, f29, f0
/* 8006E068  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8006E06C  7C 00 07 75 */	extsb. r0, r0
/* 8006E070  40 82 00 08 */	bne lbl_8006E078
/* 8006E074  C3 A2 89 A4 */	lfs f29, lit_6355(r2)
lbl_8006E078:
/* 8006E078  C0 02 89 E8 */	lfs f0, lit_6721(r2)
/* 8006E07C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8006E080  4C 40 13 82 */	cror 2, 0, 2
/* 8006E084  41 82 03 20 */	beq lbl_8006E3A4
/* 8006E088  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8006E08C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8006E090  FC 00 00 1E */	fctiwz f0, f0
/* 8006E094  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8006E098  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006E09C  98 01 00 23 */	stb r0, 0x23(r1)
/* 8006E0A0  48 0F 13 85 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8006E0A4  2C 03 00 00 */	cmpwi r3, 0
/* 8006E0A8  41 82 00 48 */	beq lbl_8006E0F0
/* 8006E0AC  C0 02 88 DC */	lfs f0, lit_5118(r2)
/* 8006E0B0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8006E0B4  FC 00 00 1E */	fctiwz f0, f0
/* 8006E0B8  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 8006E0BC  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006E0C0  98 01 00 20 */	stb r0, 0x20(r1)
/* 8006E0C4  38 80 00 00 */	li r4, 0
/* 8006E0C8  98 81 00 21 */	stb r4, 0x21(r1)
/* 8006E0CC  98 81 00 22 */	stb r4, 0x22(r1)
/* 8006E0D0  38 60 00 28 */	li r3, 0x28
/* 8006E0D4  98 61 00 23 */	stb r3, 0x23(r1)
/* 8006E0D8  38 00 00 1E */	li r0, 0x1e
/* 8006E0DC  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8006E0E0  98 81 00 1D */	stb r4, 0x1d(r1)
/* 8006E0E4  98 81 00 1E */	stb r4, 0x1e(r1)
/* 8006E0E8  98 61 00 1F */	stb r3, 0x1f(r1)
/* 8006E0EC  48 00 00 90 */	b lbl_8006E17C
lbl_8006E0F0:
/* 8006E0F0  C0 02 88 4C */	lfs f0, lit_4368(r2)
/* 8006E0F4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8006E0F8  FC 40 00 1E */	fctiwz f2, f0
/* 8006E0FC  D8 41 01 28 */	stfd f2, 0x128(r1)
/* 8006E100  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8006E104  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8006E108  C0 02 89 FC */	lfs f0, lit_6726(r2)
/* 8006E10C  EC 7E 07 B2 */	fmuls f3, f30, f30
/* 8006E110  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8006E114  FC 00 00 1E */	fctiwz f0, f0
/* 8006E118  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 8006E11C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8006E120  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8006E124  C0 22 88 8C */	lfs f1, lit_5098(r2)
/* 8006E128  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 8006E12C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006E130  FC 00 00 1E */	fctiwz f0, f0
/* 8006E134  D8 01 01 30 */	stfd f0, 0x130(r1)
/* 8006E138  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8006E13C  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8006E140  D8 41 01 38 */	stfd f2, 0x138(r1)
/* 8006E144  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006E148  98 01 00 20 */	stb r0, 0x20(r1)
/* 8006E14C  C0 02 8B F0 */	lfs f0, lit_11886(r2)
/* 8006E150  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8006E154  FC 00 00 1E */	fctiwz f0, f0
/* 8006E158  D8 01 01 40 */	stfd f0, 0x140(r1)
/* 8006E15C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8006E160  98 01 00 21 */	stb r0, 0x21(r1)
/* 8006E164  C0 02 8B F4 */	lfs f0, lit_11887(r2)
/* 8006E168  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8006E16C  FC 00 00 1E */	fctiwz f0, f0
/* 8006E170  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8006E174  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8006E178  98 01 00 22 */	stb r0, 0x22(r1)
lbl_8006E17C:
/* 8006E17C  38 00 00 FF */	li r0, 0xff
/* 8006E180  98 01 00 23 */	stb r0, 0x23(r1)
/* 8006E184  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8006E188  90 01 00 10 */	stw r0, 0x10(r1)
/* 8006E18C  38 60 00 01 */	li r3, 1
/* 8006E190  38 81 00 10 */	addi r4, r1, 0x10
/* 8006E194  48 2F 11 E9 */	bl GXSetTevColor
/* 8006E198  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006E19C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8006E1A0  38 60 00 02 */	li r3, 2
/* 8006E1A4  38 81 00 0C */	addi r4, r1, 0xc
/* 8006E1A8  48 2F 11 D5 */	bl GXSetTevColor
/* 8006E1AC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8006E1B0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8006E1B4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8006E1B8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8006E1BC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8006E1C0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8006E1C4  FF C0 E8 50 */	fneg f30, f29
/* 8006E1C8  D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 8006E1CC  D3 A1 00 58 */	stfs f29, 0x58(r1)
/* 8006E1D0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E1D4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8006E1D8  38 61 00 EC */	addi r3, r1, 0xec
/* 8006E1DC  38 81 00 54 */	addi r4, r1, 0x54
/* 8006E1E0  38 A1 00 48 */	addi r5, r1, 0x48
/* 8006E1E4  48 2D 8B 89 */	bl PSMTXMultVec
/* 8006E1E8  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8006E1EC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8006E1F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E1F4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8006E1F8  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8006E1FC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006E200  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E204  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8006E208  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8006E20C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006E210  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E214  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8006E218  D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 8006E21C  D3 A1 00 58 */	stfs f29, 0x58(r1)
/* 8006E220  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E224  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8006E228  38 61 00 EC */	addi r3, r1, 0xec
/* 8006E22C  38 81 00 54 */	addi r4, r1, 0x54
/* 8006E230  38 A1 00 48 */	addi r5, r1, 0x48
/* 8006E234  48 2D 8B 39 */	bl PSMTXMultVec
/* 8006E238  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8006E23C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8006E240  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E244  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8006E248  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8006E24C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006E250  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E254  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8006E258  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8006E25C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006E260  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E264  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8006E268  D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 8006E26C  D3 C1 00 58 */	stfs f30, 0x58(r1)
/* 8006E270  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E274  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8006E278  38 61 00 EC */	addi r3, r1, 0xec
/* 8006E27C  38 81 00 54 */	addi r4, r1, 0x54
/* 8006E280  38 A1 00 48 */	addi r5, r1, 0x48
/* 8006E284  48 2D 8A E9 */	bl PSMTXMultVec
/* 8006E288  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8006E28C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8006E290  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E294  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8006E298  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8006E29C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006E2A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E2A4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8006E2A8  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8006E2AC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006E2B0  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E2B4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8006E2B8  D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 8006E2BC  D3 C1 00 58 */	stfs f30, 0x58(r1)
/* 8006E2C0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006E2C4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8006E2C8  38 61 00 EC */	addi r3, r1, 0xec
/* 8006E2CC  38 81 00 54 */	addi r4, r1, 0x54
/* 8006E2D0  38 A1 00 48 */	addi r5, r1, 0x48
/* 8006E2D4  48 2D 8A 99 */	bl PSMTXMultVec
/* 8006E2D8  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8006E2DC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8006E2E0  EC 61 00 2A */	fadds f3, f1, f0
/* 8006E2E4  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 8006E2E8  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8006E2EC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006E2F0  EC 41 00 2A */	fadds f2, f1, f0
/* 8006E2F4  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8006E2F8  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8006E2FC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006E300  EC 01 00 2A */	fadds f0, f1, f0
/* 8006E304  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8006E308  C2 61 00 8C */	lfs f19, 0x8c(r1)
/* 8006E30C  3F 00 CC 01 */	lis r24, 0xcc01
/* 8006E310  C2 81 00 90 */	lfs f20, 0x90(r1)
/* 8006E314  C2 A1 00 94 */	lfs f21, 0x94(r1)
/* 8006E318  C2 C1 00 98 */	lfs f22, 0x98(r1)
/* 8006E31C  C2 E1 00 9C */	lfs f23, 0x9c(r1)
/* 8006E320  C3 01 00 A0 */	lfs f24, 0xa0(r1)
/* 8006E324  C3 21 00 A4 */	lfs f25, 0xa4(r1)
/* 8006E328  C3 41 00 A8 */	lfs f26, 0xa8(r1)
/* 8006E32C  C3 61 00 AC */	lfs f27, 0xac(r1)
/* 8006E330  FF 80 18 18 */	frsp f28, f3
/* 8006E334  FF C0 10 18 */	frsp f30, f2
/* 8006E338  FF A0 00 18 */	frsp f29, f0
/* 8006E33C  38 60 00 80 */	li r3, 0x80
/* 8006E340  38 80 00 00 */	li r4, 0
/* 8006E344  38 A0 00 04 */	li r5, 4
/* 8006E348  48 2E E4 1D */	bl GXBegin
/* 8006E34C  D2 78 80 00 */	stfs f19, -0x8000(r24)
/* 8006E350  D2 98 80 00 */	stfs f20, -0x8000(r24)
/* 8006E354  D2 B8 80 00 */	stfs f21, -0x8000(r24)
/* 8006E358  38 60 00 00 */	li r3, 0
/* 8006E35C  B0 78 80 00 */	sth r3, -0x8000(r24)
/* 8006E360  B0 78 80 00 */	sth r3, -0x8000(r24)
/* 8006E364  D2 D8 80 00 */	stfs f22, -0x8000(r24)
/* 8006E368  D2 F8 80 00 */	stfs f23, -0x8000(r24)
/* 8006E36C  D3 18 80 00 */	stfs f24, -0x8000(r24)
/* 8006E370  38 00 00 FF */	li r0, 0xff
/* 8006E374  B0 18 80 00 */	sth r0, -0x8000(r24)
/* 8006E378  B0 78 80 00 */	sth r3, -0x8000(r24)
/* 8006E37C  D3 38 80 00 */	stfs f25, -0x8000(r24)
/* 8006E380  D3 58 80 00 */	stfs f26, -0x8000(r24)
/* 8006E384  D3 78 80 00 */	stfs f27, -0x8000(r24)
/* 8006E388  B0 18 80 00 */	sth r0, -0x8000(r24)
/* 8006E38C  B0 18 80 00 */	sth r0, -0x8000(r24)
/* 8006E390  D3 98 80 00 */	stfs f28, -0x8000(r24)
/* 8006E394  D3 D8 80 00 */	stfs f30, -0x8000(r24)
/* 8006E398  D3 B8 80 00 */	stfs f29, -0x8000(r24)
/* 8006E39C  B0 78 80 00 */	sth r3, -0x8000(r24)
/* 8006E3A0  B0 18 80 00 */	sth r0, -0x8000(r24)
lbl_8006E3A4:
/* 8006E3A4  3B 5A 00 01 */	addi r26, r26, 1
/* 8006E3A8  3A F7 00 44 */	addi r23, r23, 0x44
lbl_8006E3AC:
/* 8006E3AC  80 1F 10 54 */	lwz r0, 0x1054(r31)
/* 8006E3B0  7C 1A 00 00 */	cmpw r26, r0
/* 8006E3B4  41 80 FA 28 */	blt lbl_8006DDDC
/* 8006E3B8  38 60 00 00 */	li r3, 0
/* 8006E3BC  48 2F 22 15 */	bl GXSetClipMode
/* 8006E3C0  38 00 00 00 */	li r0, 0
/* 8006E3C4  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_8006E3C8:
/* 8006E3C8  E3 E1 02 48 */	psq_l f31, 584(r1), 0, 0 /* qr0 */
/* 8006E3CC  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 8006E3D0  E3 C1 02 38 */	psq_l f30, 568(r1), 0, 0 /* qr0 */
/* 8006E3D4  CB C1 02 30 */	lfd f30, 0x230(r1)
/* 8006E3D8  E3 A1 02 28 */	psq_l f29, 552(r1), 0, 0 /* qr0 */
/* 8006E3DC  CB A1 02 20 */	lfd f29, 0x220(r1)
/* 8006E3E0  E3 81 02 18 */	psq_l f28, 536(r1), 0, 0 /* qr0 */
/* 8006E3E4  CB 81 02 10 */	lfd f28, 0x210(r1)
/* 8006E3E8  E3 61 02 08 */	psq_l f27, 520(r1), 0, 0 /* qr0 */
/* 8006E3EC  CB 61 02 00 */	lfd f27, 0x200(r1)
/* 8006E3F0  E3 41 01 F8 */	psq_l f26, 504(r1), 0, 0 /* qr0 */
/* 8006E3F4  CB 41 01 F0 */	lfd f26, 0x1f0(r1)
/* 8006E3F8  E3 21 01 E8 */	psq_l f25, 488(r1), 0, 0 /* qr0 */
/* 8006E3FC  CB 21 01 E0 */	lfd f25, 0x1e0(r1)
/* 8006E400  E3 01 01 D8 */	psq_l f24, 472(r1), 0, 0 /* qr0 */
/* 8006E404  CB 01 01 D0 */	lfd f24, 0x1d0(r1)
/* 8006E408  E2 E1 01 C8 */	psq_l f23, 456(r1), 0, 0 /* qr0 */
/* 8006E40C  CA E1 01 C0 */	lfd f23, 0x1c0(r1)
/* 8006E410  E2 C1 01 B8 */	psq_l f22, 440(r1), 0, 0 /* qr0 */
/* 8006E414  CA C1 01 B0 */	lfd f22, 0x1b0(r1)
/* 8006E418  E2 A1 01 A8 */	psq_l f21, 424(r1), 0, 0 /* qr0 */
/* 8006E41C  CA A1 01 A0 */	lfd f21, 0x1a0(r1)
/* 8006E420  E2 81 01 98 */	psq_l f20, 408(r1), 0, 0 /* qr0 */
/* 8006E424  CA 81 01 90 */	lfd f20, 0x190(r1)
/* 8006E428  E2 61 01 88 */	psq_l f19, 392(r1), 0, 0 /* qr0 */
/* 8006E42C  CA 61 01 80 */	lfd f19, 0x180(r1)
/* 8006E430  39 61 01 80 */	addi r11, r1, 0x180
/* 8006E434  48 2F 3D DD */	bl _restgpr_23
/* 8006E438  80 01 02 54 */	lwz r0, 0x254(r1)
/* 8006E43C  7C 08 03 A6 */	mtlr r0
/* 8006E440  38 21 02 50 */	addi r1, r1, 0x250
/* 8006E444  4E 80 00 20 */	blr 
