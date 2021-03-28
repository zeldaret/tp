lbl_80605898:
/* 80605898  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8060589C  7C 08 02 A6 */	mflr r0
/* 806058A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 806058A4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806058A8  4B D5 C9 2C */	b _savegpr_27
/* 806058AC  7C 7D 1B 78 */	mr r29, r3
/* 806058B0  3C 60 80 61 */	lis r3, lit_3928@ha
/* 806058B4  3B E3 FD E0 */	addi r31, r3, lit_3928@l
/* 806058B8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806058BC  83 C3 00 04 */	lwz r30, 4(r3)
/* 806058C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806058C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806058C8  38 80 00 00 */	li r4, 0
/* 806058CC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806058D0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806058D4  4B B9 DE F0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806058D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806058DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806058E0  80 9E 00 04 */	lwz r4, 4(r30)
/* 806058E4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806058E8  4B B9 F4 B8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806058EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 806058F0  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806058F4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806058F8  38 84 00 58 */	addi r4, r4, 0x58
/* 806058FC  4B A0 7E AC */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80605900  80 9E 00 04 */	lwz r4, 4(r30)
/* 80605904  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80605908  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8060590C  38 84 00 58 */	addi r4, r4, 0x58
/* 80605910  4B A0 7D C8 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80605914  80 7E 00 04 */	lwz r3, 4(r30)
/* 80605918  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8060591C  83 83 00 0C */	lwz r28, 0xc(r3)
/* 80605920  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80605924  38 80 00 00 */	li r4, 0
/* 80605928  81 83 00 00 */	lwz r12, 0(r3)
/* 8060592C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80605930  7D 89 03 A6 */	mtctr r12
/* 80605934  4E 80 04 21 */	bctrl 
/* 80605938  3C 80 80 61 */	lis r4, l_HIO@ha
/* 8060593C  38 84 04 50 */	addi r4, r4, l_HIO@l
/* 80605940  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80605944  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80605948  EC 01 00 32 */	fmuls f0, f1, f0
/* 8060594C  FC 00 00 1E */	fctiwz f0, f0
/* 80605950  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80605954  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80605958  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8060595C  B0 03 00 00 */	sth r0, 0(r3)
/* 80605960  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80605964  38 80 00 00 */	li r4, 0
/* 80605968  81 83 00 00 */	lwz r12, 0(r3)
/* 8060596C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80605970  7D 89 03 A6 */	mtctr r12
/* 80605974  4E 80 04 21 */	bctrl 
/* 80605978  3C 80 80 61 */	lis r4, l_HIO@ha
/* 8060597C  38 84 04 50 */	addi r4, r4, l_HIO@l
/* 80605980  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80605984  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80605988  EC 01 00 32 */	fmuls f0, f1, f0
/* 8060598C  FC 00 00 1E */	fctiwz f0, f0
/* 80605990  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80605994  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80605998  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8060599C  B0 03 00 02 */	sth r0, 2(r3)
/* 806059A0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806059A4  38 80 00 00 */	li r4, 0
/* 806059A8  81 83 00 00 */	lwz r12, 0(r3)
/* 806059AC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806059B0  7D 89 03 A6 */	mtctr r12
/* 806059B4  4E 80 04 21 */	bctrl 
/* 806059B8  3C 80 80 61 */	lis r4, l_HIO@ha
/* 806059BC  38 84 04 50 */	addi r4, r4, l_HIO@l
/* 806059C0  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 806059C4  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 806059C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 806059CC  FC 00 00 1E */	fctiwz f0, f0
/* 806059D0  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 806059D4  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 806059D8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806059DC  B0 03 00 04 */	sth r0, 4(r3)
/* 806059E0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806059E4  4B A0 B7 DC */	b entryDL__16mDoExt_McaMorfSOFv
/* 806059E8  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 806059EC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806059F0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806059F4  EC 40 08 2A */	fadds f2, f0, f1
/* 806059F8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806059FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80605A00  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80605A04  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80605A08  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80605A0C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80605A10  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80605A14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80605A18  40 80 00 08 */	bge lbl_80605A20
/* 80605A1C  FC 20 00 90 */	fmr f1, f0
lbl_80605A20:
/* 80605A20  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80605A24  EC 21 00 24 */	fdivs f1, f1, f0
/* 80605A28  C0 1D 0A E8 */	lfs f0, 0xae8(r29)
/* 80605A2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80605A30  D0 1D 04 50 */	stfs f0, 0x450(r29)
/* 80605A34  38 61 00 20 */	addi r3, r1, 0x20
/* 80605A38  4B A7 1B 44 */	b __ct__11dBgS_GndChkFv
/* 80605A3C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80605A40  C0 1D 0B F4 */	lfs f0, 0xbf4(r29)
/* 80605A44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80605A48  40 82 00 40 */	bne lbl_80605A88
/* 80605A4C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80605A50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80605A54  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80605A58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80605A5C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80605A60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80605A64  38 61 00 20 */	addi r3, r1, 0x20
/* 80605A68  38 81 00 08 */	addi r4, r1, 8
/* 80605A6C  4B C6 22 BC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80605A70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80605A74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80605A78  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80605A7C  38 81 00 20 */	addi r4, r1, 0x20
/* 80605A80  4B A6 EA 20 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80605A84  48 00 00 D4 */	b lbl_80605B58
lbl_80605A88:
/* 80605A88  80 1D 0C 38 */	lwz r0, 0xc38(r29)
/* 80605A8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80605A90  80 1D 0C 3C */	lwz r0, 0xc3c(r29)
/* 80605A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80605A98  80 1D 0C 40 */	lwz r0, 0xc40(r29)
/* 80605A9C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80605AA0  88 1D 0C 44 */	lbz r0, 0xc44(r29)
/* 80605AA4  98 01 00 2C */	stb r0, 0x2c(r1)
/* 80605AA8  A0 1D 0C 4C */	lhz r0, 0xc4c(r29)
/* 80605AAC  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80605AB0  A0 1D 0C 4E */	lhz r0, 0xc4e(r29)
/* 80605AB4  B0 01 00 36 */	sth r0, 0x36(r1)
/* 80605AB8  80 1D 0C 50 */	lwz r0, 0xc50(r29)
/* 80605ABC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80605AC0  80 1D 0C 54 */	lwz r0, 0xc54(r29)
/* 80605AC4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80605AC8  C0 1D 0C 5C */	lfs f0, 0xc5c(r29)
/* 80605ACC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80605AD0  C0 1D 0C 60 */	lfs f0, 0xc60(r29)
/* 80605AD4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80605AD8  C0 1D 0C 64 */	lfs f0, 0xc64(r29)
/* 80605ADC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80605AE0  80 1D 0C 68 */	lwz r0, 0xc68(r29)
/* 80605AE4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80605AE8  C0 1D 0C 6C */	lfs f0, 0xc6c(r29)
/* 80605AEC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80605AF0  80 1D 0C 70 */	lwz r0, 0xc70(r29)
/* 80605AF4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80605AF8  88 1D 0C 78 */	lbz r0, 0xc78(r29)
/* 80605AFC  98 01 00 60 */	stb r0, 0x60(r1)
/* 80605B00  88 1D 0C 79 */	lbz r0, 0xc79(r29)
/* 80605B04  98 01 00 61 */	stb r0, 0x61(r1)
/* 80605B08  88 1D 0C 7A */	lbz r0, 0xc7a(r29)
/* 80605B0C  98 01 00 62 */	stb r0, 0x62(r1)
/* 80605B10  88 1D 0C 7B */	lbz r0, 0xc7b(r29)
/* 80605B14  98 01 00 63 */	stb r0, 0x63(r1)
/* 80605B18  88 1D 0C 7C */	lbz r0, 0xc7c(r29)
/* 80605B1C  98 01 00 64 */	stb r0, 0x64(r1)
/* 80605B20  88 1D 0C 7D */	lbz r0, 0xc7d(r29)
/* 80605B24  98 01 00 65 */	stb r0, 0x65(r1)
/* 80605B28  88 1D 0C 7E */	lbz r0, 0xc7e(r29)
/* 80605B2C  98 01 00 66 */	stb r0, 0x66(r1)
/* 80605B30  88 1D 0C 7F */	lbz r0, 0xc7f(r29)
/* 80605B34  98 01 00 67 */	stb r0, 0x67(r1)
/* 80605B38  88 1D 0C 80 */	lbz r0, 0xc80(r29)
/* 80605B3C  98 01 00 68 */	stb r0, 0x68(r1)
/* 80605B40  88 1D 0C 81 */	lbz r0, 0xc81(r29)
/* 80605B44  98 01 00 69 */	stb r0, 0x69(r1)
/* 80605B48  88 1D 0C 82 */	lbz r0, 0xc82(r29)
/* 80605B4C  98 01 00 6A */	stb r0, 0x6a(r1)
/* 80605B50  80 1D 0C 88 */	lwz r0, 0xc88(r29)
/* 80605B54  90 01 00 70 */	stw r0, 0x70(r1)
lbl_80605B58:
/* 80605B58  80 7D 0A 94 */	lwz r3, 0xa94(r29)
/* 80605B5C  38 80 00 00 */	li r4, 0
/* 80605B60  7F C5 F3 78 */	mr r5, r30
/* 80605B64  38 C1 00 14 */	addi r6, r1, 0x14
/* 80605B68  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80605B6C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80605B70  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80605B74  C0 9D 0B F4 */	lfs f4, 0xbf4(r29)
/* 80605B78  38 FD 0C 4C */	addi r7, r29, 0xc4c
/* 80605B7C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80605B80  39 20 00 00 */	li r9, 0
/* 80605B84  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80605B88  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80605B8C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80605B90  4B A2 8D 80 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80605B94  90 7D 0A 94 */	stw r3, 0xa94(r29)
/* 80605B98  3B 60 00 00 */	li r27, 0
/* 80605B9C  3B C0 00 00 */	li r30, 0
lbl_80605BA0:
/* 80605BA0  7F 9D F2 14 */	add r28, r29, r30
/* 80605BA4  80 1C 09 90 */	lwz r0, 0x990(r28)
/* 80605BA8  2C 00 00 00 */	cmpwi r0, 0
/* 80605BAC  41 82 00 68 */	beq lbl_80605C14
/* 80605BB0  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80605BB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80605BB8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80605BBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80605BC0  28 03 00 00 */	cmplwi r3, 0
/* 80605BC4  41 82 00 30 */	beq lbl_80605BF4
/* 80605BC8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80605BCC  38 80 00 03 */	li r4, 3
/* 80605BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80605BD4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80605BD8  7D 89 03 A6 */	mtctr r12
/* 80605BDC  4E 80 04 21 */	bctrl 
/* 80605BE0  C0 1C 09 40 */	lfs f0, 0x940(r28)
/* 80605BE4  FC 00 00 1E */	fctiwz f0, f0
/* 80605BE8  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80605BEC  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80605BF0  98 03 00 03 */	stb r0, 3(r3)
lbl_80605BF4:
/* 80605BF4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80605BF8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80605BFC  80 9C 05 D0 */	lwz r4, 0x5d0(r28)
/* 80605C00  80 84 00 04 */	lwz r4, 4(r4)
/* 80605C04  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80605C08  4B B9 F1 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80605C0C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80605C10  4B A0 80 B4 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80605C14:
/* 80605C14  3B 7B 00 01 */	addi r27, r27, 1
/* 80605C18  2C 1B 00 14 */	cmpwi r27, 0x14
/* 80605C1C  3B DE 00 04 */	addi r30, r30, 4
/* 80605C20  41 80 FF 80 */	blt lbl_80605BA0
/* 80605C24  7F A3 EB 78 */	mr r3, r29
/* 80605C28  48 00 15 9D */	bl drawHideSmokeEffect__9daB_MGN_cFv
/* 80605C2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80605C30  C0 3D 0A F0 */	lfs f1, 0xaf0(r29)
/* 80605C34  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80605C38  41 82 00 20 */	beq lbl_80605C58
/* 80605C3C  FC 00 08 1E */	fctiwz f0, f1
/* 80605C40  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80605C44  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80605C48  3C 60 80 45 */	lis r3, struct_80450BE4+0x1@ha
/* 80605C4C  98 03 0B E5 */	stb r0, struct_80450BE4+0x1@l(r3)
/* 80605C50  4B A0 24 28 */	b onBlure__13mDoGph_gInf_cFv
/* 80605C54  48 00 00 10 */	b lbl_80605C64
lbl_80605C58:
/* 80605C58  38 00 00 00 */	li r0, 0
/* 80605C5C  3C 60 80 45 */	lis r3, struct_80450BE4+0x0@ha
/* 80605C60  98 03 0B E4 */	stb r0, struct_80450BE4+0x0@l(r3)
lbl_80605C64:
/* 80605C64  38 61 00 20 */	addi r3, r1, 0x20
/* 80605C68  38 80 FF FF */	li r4, -1
/* 80605C6C  4B A7 19 84 */	b __dt__11dBgS_GndChkFv
/* 80605C70  38 60 00 01 */	li r3, 1
/* 80605C74  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80605C78  4B D5 C5 A8 */	b _restgpr_27
/* 80605C7C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80605C80  7C 08 03 A6 */	mtlr r0
/* 80605C84  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80605C88  4E 80 00 20 */	blr 
