lbl_80BB1960:
/* 80BB1960  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BB1964  7C 08 02 A6 */	mflr r0
/* 80BB1968  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BB196C  39 61 00 50 */	addi r11, r1, 0x50
/* 80BB1970  4B 7B 08 5C */	b _savegpr_25
/* 80BB1974  7C 7E 1B 78 */	mr r30, r3
/* 80BB1978  3C 80 80 BB */	lis r4, l_eye_offset@ha
/* 80BB197C  3B E4 37 B8 */	addi r31, r4, l_eye_offset@l
/* 80BB1980  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BB1984  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BB1988  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BB198C  4B 46 8F D8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB1990  D0 3E 10 04 */	stfs f1, 0x1004(r30)
/* 80BB1994  3C 60 80 BB */	lis r3, l_arcName@ha
/* 80BB1998  38 63 3A 94 */	addi r3, r3, l_arcName@l
/* 80BB199C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB19A0  38 80 00 19 */	li r4, 0x19
/* 80BB19A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BB19A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BB19AC  3C A5 00 02 */	addis r5, r5, 2
/* 80BB19B0  38 C0 00 80 */	li r6, 0x80
/* 80BB19B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BB19B8  4B 48 A9 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB19BC  7C 65 1B 78 */	mr r5, r3
/* 80BB19C0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80BB19C4  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB19C8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80BB19CC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB19D0  38 C0 00 01 */	li r6, 1
/* 80BB19D4  38 E0 00 00 */	li r7, 0
/* 80BB19D8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB19DC  39 00 00 00 */	li r8, 0
/* 80BB19E0  39 20 FF FF */	li r9, -1
/* 80BB19E4  4B 45 BC 58 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BB19E8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB19EC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80BB19F0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80BB19F4  38 00 00 14 */	li r0, 0x14
/* 80BB19F8  98 1E 0F E5 */	stb r0, 0xfe5(r30)
/* 80BB19FC  38 80 00 00 */	li r4, 0
/* 80BB1A00  98 9E 0F E6 */	stb r4, 0xfe6(r30)
/* 80BB1A04  80 1E 10 2C */	lwz r0, 0x102c(r30)
/* 80BB1A08  28 00 00 00 */	cmplwi r0, 0
/* 80BB1A0C  40 82 00 50 */	bne lbl_80BB1A5C
/* 80BB1A10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB1A14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB1A18  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BB1A1C  90 81 00 08 */	stw r4, 8(r1)
/* 80BB1A20  38 00 FF FF */	li r0, -1
/* 80BB1A24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB1A28  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB1A2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB1A30  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB1A34  38 80 00 00 */	li r4, 0
/* 80BB1A38  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008461@ha */
/* 80BB1A3C  38 A5 84 61 */	addi r5, r5, 0x8461 /* 0x00008461@l */
/* 80BB1A40  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BB1A44  38 E0 00 00 */	li r7, 0
/* 80BB1A48  39 00 00 00 */	li r8, 0
/* 80BB1A4C  39 20 00 00 */	li r9, 0
/* 80BB1A50  39 40 00 FF */	li r10, 0xff
/* 80BB1A54  4B 49 B0 3C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB1A58  90 7E 10 2C */	stw r3, 0x102c(r30)
lbl_80BB1A5C:
/* 80BB1A5C  80 1E 10 30 */	lwz r0, 0x1030(r30)
/* 80BB1A60  28 00 00 00 */	cmplwi r0, 0
/* 80BB1A64  40 82 00 58 */	bne lbl_80BB1ABC
/* 80BB1A68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB1A6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB1A70  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BB1A74  38 80 00 00 */	li r4, 0
/* 80BB1A78  90 81 00 08 */	stw r4, 8(r1)
/* 80BB1A7C  38 00 FF FF */	li r0, -1
/* 80BB1A80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB1A84  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB1A88  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB1A8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB1A90  38 80 00 00 */	li r4, 0
/* 80BB1A94  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008460@ha */
/* 80BB1A98  38 A5 84 60 */	addi r5, r5, 0x8460 /* 0x00008460@l */
/* 80BB1A9C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BB1AA0  38 E0 00 00 */	li r7, 0
/* 80BB1AA4  39 00 00 00 */	li r8, 0
/* 80BB1AA8  39 20 00 00 */	li r9, 0
/* 80BB1AAC  39 40 00 FF */	li r10, 0xff
/* 80BB1AB0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB1AB4  4B 49 AF DC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB1AB8  90 7E 10 30 */	stw r3, 0x1030(r30)
lbl_80BB1ABC:
/* 80BB1ABC  80 7E 10 2C */	lwz r3, 0x102c(r30)
/* 80BB1AC0  28 03 00 00 */	cmplwi r3, 0
/* 80BB1AC4  41 82 00 24 */	beq lbl_80BB1AE8
/* 80BB1AC8  38 00 00 09 */	li r0, 9
/* 80BB1ACC  98 03 00 56 */	stb r0, 0x56(r3)
/* 80BB1AD0  38 00 00 06 */	li r0, 6
/* 80BB1AD4  80 7E 10 2C */	lwz r3, 0x102c(r30)
/* 80BB1AD8  B0 03 00 52 */	sth r0, 0x52(r3)
/* 80BB1ADC  C0 1F 02 6C */	lfs f0, 0x26c(r31)
/* 80BB1AE0  80 7E 10 2C */	lwz r3, 0x102c(r30)
/* 80BB1AE4  D0 03 00 28 */	stfs f0, 0x28(r3)
lbl_80BB1AE8:
/* 80BB1AE8  80 7E 10 30 */	lwz r3, 0x1030(r30)
/* 80BB1AEC  28 03 00 00 */	cmplwi r3, 0
/* 80BB1AF0  41 82 00 18 */	beq lbl_80BB1B08
/* 80BB1AF4  38 00 00 02 */	li r0, 2
/* 80BB1AF8  98 03 00 56 */	stb r0, 0x56(r3)
/* 80BB1AFC  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 80BB1B00  80 7E 10 30 */	lwz r3, 0x1030(r30)
/* 80BB1B04  D0 03 00 34 */	stfs f0, 0x34(r3)
lbl_80BB1B08:
/* 80BB1B08  3B 20 00 00 */	li r25, 0
/* 80BB1B0C  3B A0 00 00 */	li r29, 0
/* 80BB1B10  3B 80 00 00 */	li r28, 0
/* 80BB1B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB1B18  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80BB1B1C  3B 7F 02 68 */	addi r27, r31, 0x268
lbl_80BB1B20:
/* 80BB1B20  38 61 00 20 */	addi r3, r1, 0x20
/* 80BB1B24  38 80 00 00 */	li r4, 0
/* 80BB1B28  38 A0 00 00 */	li r5, 0
/* 80BB1B2C  38 C0 00 00 */	li r6, 0
/* 80BB1B30  4B 6B 58 C4 */	b __ct__5csXyzFsss
/* 80BB1B34  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80BB1B38  A8 1E 0F 96 */	lha r0, 0xf96(r30)
/* 80BB1B3C  7C 03 02 14 */	add r0, r3, r0
/* 80BB1B40  B0 01 00 22 */	sth r0, 0x22(r1)
/* 80BB1B44  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BB1B48  38 80 00 00 */	li r4, 0
/* 80BB1B4C  90 81 00 08 */	stw r4, 8(r1)
/* 80BB1B50  38 00 FF FF */	li r0, -1
/* 80BB1B54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB1B58  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB1B5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB1B60  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB1B64  38 80 00 00 */	li r4, 0
/* 80BB1B68  7C BB E2 2E */	lhzx r5, r27, r28
/* 80BB1B6C  38 DE 0F B8 */	addi r6, r30, 0xfb8
/* 80BB1B70  38 E0 00 00 */	li r7, 0
/* 80BB1B74  39 01 00 20 */	addi r8, r1, 0x20
/* 80BB1B78  39 20 00 00 */	li r9, 0
/* 80BB1B7C  39 40 00 FF */	li r10, 0xff
/* 80BB1B80  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB1B84  4B 49 AF 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB1B88  38 1D 10 18 */	addi r0, r29, 0x1018
/* 80BB1B8C  7C 7E 01 2E */	stwx r3, r30, r0
/* 80BB1B90  3B 39 00 01 */	addi r25, r25, 1
/* 80BB1B94  2C 19 00 02 */	cmpwi r25, 2
/* 80BB1B98  3B BD 00 04 */	addi r29, r29, 4
/* 80BB1B9C  3B 9C 00 02 */	addi r28, r28, 2
/* 80BB1BA0  41 80 FF 80 */	blt lbl_80BB1B20
/* 80BB1BA4  38 00 00 00 */	li r0, 0
/* 80BB1BA8  98 1E 0F ED */	stb r0, 0xfed(r30)
/* 80BB1BAC  98 1E 0F EA */	stb r0, 0xfea(r30)
/* 80BB1BB0  38 00 00 03 */	li r0, 3
/* 80BB1BB4  98 1E 0F E4 */	stb r0, 0xfe4(r30)
/* 80BB1BB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80BB1BBC  4B 7B 06 5C */	b _restgpr_25
/* 80BB1BC0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BB1BC4  7C 08 03 A6 */	mtlr r0
/* 80BB1BC8  38 21 00 50 */	addi r1, r1, 0x50
/* 80BB1BCC  4E 80 00 20 */	blr 
