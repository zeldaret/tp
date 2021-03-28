lbl_80AB9A40:
/* 80AB9A40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB9A44  7C 08 02 A6 */	mflr r0
/* 80AB9A48  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB9A4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB9A50  4B 8A 87 78 */	b _savegpr_24
/* 80AB9A54  7C 7C 1B 78 */	mr r28, r3
/* 80AB9A58  3C 80 80 AC */	lis r4, m__19daNpcRafrel_Param_c@ha
/* 80AB9A5C  3B E4 F9 E0 */	addi r31, r4, m__19daNpcRafrel_Param_c@l
/* 80AB9A60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AB9A64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AB9A68  40 82 00 1C */	bne lbl_80AB9A84
/* 80AB9A6C  28 1C 00 00 */	cmplwi r28, 0
/* 80AB9A70  41 82 00 08 */	beq lbl_80AB9A78
/* 80AB9A74  4B FF FB B9 */	bl __ct__13daNpcRafrel_cFv
lbl_80AB9A78:
/* 80AB9A78  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80AB9A7C  60 00 00 08 */	ori r0, r0, 8
/* 80AB9A80  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80AB9A84:
/* 80AB9A84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB9A88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB9A8C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80AB9A90  3B 1E 3E C8 */	addi r24, r30, 0x3ec8
/* 80AB9A94  7F 03 C3 78 */	mr r3, r24
/* 80AB9A98  3C 80 80 AC */	lis r4, struct_80ABFDBC+0x0@ha
/* 80AB9A9C  38 84 FD BC */	addi r4, r4, struct_80ABFDBC+0x0@l
/* 80AB9AA0  38 84 00 8B */	addi r4, r4, 0x8b
/* 80AB9AA4  4B 8A EE F0 */	b strcmp
/* 80AB9AA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9AAC  40 82 00 54 */	bne lbl_80AB9B00
/* 80AB9AB0  38 60 00 00 */	li r3, 0
/* 80AB9AB4  4B 57 2E C8 */	b getLayerNo__14dComIfG_play_cFi
/* 80AB9AB8  2C 03 00 04 */	cmpwi r3, 4
/* 80AB9ABC  40 82 00 44 */	bne lbl_80AB9B00
/* 80AB9AC0  38 60 01 69 */	li r3, 0x169
/* 80AB9AC4  4B 69 BB 70 */	b daNpcF_chkEvtBit__FUl
/* 80AB9AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9ACC  40 82 00 0C */	bne lbl_80AB9AD8
/* 80AB9AD0  38 60 00 05 */	li r3, 5
/* 80AB9AD4  48 00 03 50 */	b lbl_80AB9E24
lbl_80AB9AD8:
/* 80AB9AD8  38 60 00 18 */	li r3, 0x18
/* 80AB9ADC  38 80 00 4B */	li r4, 0x4b
/* 80AB9AE0  4B 57 3C 60 */	b dComIfGs_isStageSwitch__Fii
/* 80AB9AE4  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9AE8  41 82 00 0C */	beq lbl_80AB9AF4
/* 80AB9AEC  38 60 00 05 */	li r3, 5
/* 80AB9AF0  48 00 03 34 */	b lbl_80AB9E24
lbl_80AB9AF4:
/* 80AB9AF4  38 00 00 00 */	li r0, 0
/* 80AB9AF8  98 1C 0E 17 */	stb r0, 0xe17(r28)
/* 80AB9AFC  48 00 00 BC */	b lbl_80AB9BB8
lbl_80AB9B00:
/* 80AB9B00  7F 03 C3 78 */	mr r3, r24
/* 80AB9B04  3C 80 80 AC */	lis r4, struct_80ABFDBC+0x0@ha
/* 80AB9B08  38 84 FD BC */	addi r4, r4, struct_80ABFDBC+0x0@l
/* 80AB9B0C  38 84 00 93 */	addi r4, r4, 0x93
/* 80AB9B10  4B 8A EE 84 */	b strcmp
/* 80AB9B14  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9B18  40 82 00 4C */	bne lbl_80AB9B64
/* 80AB9B1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB9B20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB9B24  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AB9B28  7C 00 07 75 */	extsb. r0, r0
/* 80AB9B2C  40 82 00 38 */	bne lbl_80AB9B64
/* 80AB9B30  38 60 01 69 */	li r3, 0x169
/* 80AB9B34  4B 69 BB 00 */	b daNpcF_chkEvtBit__FUl
/* 80AB9B38  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9B3C  40 82 00 14 */	bne lbl_80AB9B50
/* 80AB9B40  38 60 01 08 */	li r3, 0x108
/* 80AB9B44  4B 69 BA F0 */	b daNpcF_chkEvtBit__FUl
/* 80AB9B48  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9B4C  40 82 00 0C */	bne lbl_80AB9B58
lbl_80AB9B50:
/* 80AB9B50  38 60 00 05 */	li r3, 5
/* 80AB9B54  48 00 02 D0 */	b lbl_80AB9E24
lbl_80AB9B58:
/* 80AB9B58  38 00 00 01 */	li r0, 1
/* 80AB9B5C  98 1C 0E 17 */	stb r0, 0xe17(r28)
/* 80AB9B60  48 00 00 58 */	b lbl_80AB9BB8
lbl_80AB9B64:
/* 80AB9B64  7F 03 C3 78 */	mr r3, r24
/* 80AB9B68  3C 80 80 AC */	lis r4, struct_80ABFDBC+0x0@ha
/* 80AB9B6C  38 84 FD BC */	addi r4, r4, struct_80ABFDBC+0x0@l
/* 80AB9B70  38 84 00 9B */	addi r4, r4, 0x9b
/* 80AB9B74  4B 8A EE 20 */	b strcmp
/* 80AB9B78  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9B7C  40 82 00 3C */	bne lbl_80AB9BB8
/* 80AB9B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB9B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB9B88  38 63 09 58 */	addi r3, r3, 0x958
/* 80AB9B8C  38 80 00 14 */	li r4, 0x14
/* 80AB9B90  4B 57 AC D0 */	b isSwitch__12dSv_memBit_cCFi
/* 80AB9B94  2C 03 00 00 */	cmpwi r3, 0
/* 80AB9B98  41 82 00 0C */	beq lbl_80AB9BA4
/* 80AB9B9C  38 60 00 05 */	li r3, 5
/* 80AB9BA0  48 00 02 84 */	b lbl_80AB9E24
lbl_80AB9BA4:
/* 80AB9BA4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80AB9BA8  60 00 40 00 */	ori r0, r0, 0x4000
/* 80AB9BAC  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80AB9BB0  38 00 00 02 */	li r0, 2
/* 80AB9BB4  98 1C 0E 17 */	stb r0, 0xe17(r28)
lbl_80AB9BB8:
/* 80AB9BB8  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80AB9BBC  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80AB9BC0  B0 1C 0E 0C */	sth r0, 0xe0c(r28)
/* 80AB9BC4  3B A0 00 05 */	li r29, 5
/* 80AB9BC8  3B 60 00 00 */	li r27, 0
/* 80AB9BCC  3B 40 00 00 */	li r26, 0
/* 80AB9BD0  3C 60 80 AC */	lis r3, l_arcNames@ha
/* 80AB9BD4  3B 03 00 98 */	addi r24, r3, l_arcNames@l
/* 80AB9BD8  3C 60 80 AC */	lis r3, l_loadRes_list@ha
/* 80AB9BDC  3B 23 00 8C */	addi r25, r3, l_loadRes_list@l
/* 80AB9BE0  48 00 00 30 */	b lbl_80AB9C10
lbl_80AB9BE4:
/* 80AB9BE4  38 7A 0D EC */	addi r3, r26, 0xdec
/* 80AB9BE8  7C 7C 1A 14 */	add r3, r28, r3
/* 80AB9BEC  54 00 10 3A */	slwi r0, r0, 2
/* 80AB9BF0  7C 98 00 2E */	lwzx r4, r24, r0
/* 80AB9BF4  4B 57 32 C8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AB9BF8  7C 7D 1B 78 */	mr r29, r3
/* 80AB9BFC  2C 1D 00 04 */	cmpwi r29, 4
/* 80AB9C00  41 82 00 08 */	beq lbl_80AB9C08
/* 80AB9C04  48 00 02 20 */	b lbl_80AB9E24
lbl_80AB9C08:
/* 80AB9C08  3B 7B 00 04 */	addi r27, r27, 4
/* 80AB9C0C  3B 5A 00 08 */	addi r26, r26, 8
lbl_80AB9C10:
/* 80AB9C10  88 9C 0E 17 */	lbz r4, 0xe17(r28)
/* 80AB9C14  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80AB9C18  7C 79 00 2E */	lwzx r3, r25, r0
/* 80AB9C1C  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80AB9C20  2C 00 00 00 */	cmpwi r0, 0
/* 80AB9C24  40 80 FF C0 */	bge lbl_80AB9BE4
/* 80AB9C28  2C 1D 00 04 */	cmpwi r29, 4
/* 80AB9C2C  40 82 01 F4 */	bne lbl_80AB9E20
/* 80AB9C30  38 A0 00 00 */	li r5, 0
/* 80AB9C34  2C 04 00 01 */	cmpwi r4, 1
/* 80AB9C38  41 82 00 28 */	beq lbl_80AB9C60
/* 80AB9C3C  40 80 00 10 */	bge lbl_80AB9C4C
/* 80AB9C40  2C 04 00 00 */	cmpwi r4, 0
/* 80AB9C44  40 80 00 14 */	bge lbl_80AB9C58
/* 80AB9C48  48 00 00 24 */	b lbl_80AB9C6C
lbl_80AB9C4C:
/* 80AB9C4C  2C 04 00 03 */	cmpwi r4, 3
/* 80AB9C50  40 80 00 1C */	bge lbl_80AB9C6C
/* 80AB9C54  48 00 00 14 */	b lbl_80AB9C68
lbl_80AB9C58:
/* 80AB9C58  38 A0 5C A0 */	li r5, 0x5ca0
/* 80AB9C5C  48 00 00 10 */	b lbl_80AB9C6C
lbl_80AB9C60:
/* 80AB9C60  38 A0 64 90 */	li r5, 0x6490
/* 80AB9C64  48 00 00 08 */	b lbl_80AB9C6C
lbl_80AB9C68:
/* 80AB9C68  38 A0 64 90 */	li r5, 0x6490
lbl_80AB9C6C:
/* 80AB9C6C  7F 83 E3 78 */	mr r3, r28
/* 80AB9C70  3C 80 80 AC */	lis r4, createHeapCallBack__13daNpcRafrel_cFP10fopAc_ac_c@ha
/* 80AB9C74  38 84 A6 78 */	addi r4, r4, createHeapCallBack__13daNpcRafrel_cFP10fopAc_ac_c@l
/* 80AB9C78  4B 56 08 38 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AB9C7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AB9C80  40 82 00 0C */	bne lbl_80AB9C8C
/* 80AB9C84  38 60 00 05 */	li r3, 5
/* 80AB9C88  48 00 01 9C */	b lbl_80AB9E24
lbl_80AB9C8C:
/* 80AB9C8C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AB9C90  80 63 00 04 */	lwz r3, 4(r3)
/* 80AB9C94  38 03 00 24 */	addi r0, r3, 0x24
/* 80AB9C98  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80AB9C9C  7F 83 E3 78 */	mr r3, r28
/* 80AB9CA0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80AB9CA4  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80AB9CA8  FC 60 08 90 */	fmr f3, f1
/* 80AB9CAC  C0 9F 00 7C */	lfs f4, 0x7c(r31)
/* 80AB9CB0  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 80AB9CB4  FC C0 20 90 */	fmr f6, f4
/* 80AB9CB8  4B 56 08 90 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AB9CBC  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80AB9CC0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80AB9CC4  38 BC 05 38 */	addi r5, r28, 0x538
/* 80AB9CC8  38 C0 00 03 */	li r6, 3
/* 80AB9CCC  38 E0 00 01 */	li r7, 1
/* 80AB9CD0  4B 80 68 60 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AB9CD4  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 80AB9CD8  38 9F 00 00 */	addi r4, r31, 0
/* 80AB9CDC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AB9CE0  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80AB9CE4  4B 5B C2 74 */	b SetWall__12dBgS_AcchCirFff
/* 80AB9CE8  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80AB9CEC  90 01 00 08 */	stw r0, 8(r1)
/* 80AB9CF0  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80AB9CF4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80AB9CF8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80AB9CFC  7F 86 E3 78 */	mr r6, r28
/* 80AB9D00  38 E0 00 01 */	li r7, 1
/* 80AB9D04  39 1C 07 E4 */	addi r8, r28, 0x7e4
/* 80AB9D08  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80AB9D0C  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80AB9D10  4B 5B C5 38 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AB9D14  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80AB9D18  60 00 00 08 */	ori r0, r0, 8
/* 80AB9D1C  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80AB9D20  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80AB9D24  60 00 04 00 */	ori r0, r0, 0x400
/* 80AB9D28  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80AB9D2C  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80AB9D30  7F C4 F3 78 */	mr r4, r30
/* 80AB9D34  4B 5B CD 78 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AB9D38  38 7C 07 A8 */	addi r3, r28, 0x7a8
/* 80AB9D3C  38 9F 00 00 */	addi r4, r31, 0
/* 80AB9D40  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AB9D44  FC 00 00 1E */	fctiwz f0, f0
/* 80AB9D48  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AB9D4C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AB9D50  38 A0 00 00 */	li r5, 0
/* 80AB9D54  7F 86 E3 78 */	mr r6, r28
/* 80AB9D58  4B 5C 9B 08 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AB9D5C  38 7C 0C A4 */	addi r3, r28, 0xca4
/* 80AB9D60  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80AB9D64  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80AB9D68  4B 5C AB 4C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AB9D6C  38 1C 07 A8 */	addi r0, r28, 0x7a8
/* 80AB9D70  90 1C 0C E8 */	stw r0, 0xce8(r28)
/* 80AB9D74  38 00 00 00 */	li r0, 0
/* 80AB9D78  90 1C 0C CC */	stw r0, 0xccc(r28)
/* 80AB9D7C  90 1C 0C BC */	stw r0, 0xcbc(r28)
/* 80AB9D80  80 1C 06 AC */	lwz r0, 0x6ac(r28)
/* 80AB9D84  90 1C 0A 44 */	stw r0, 0xa44(r28)
/* 80AB9D88  80 1C 06 B0 */	lwz r0, 0x6b0(r28)
/* 80AB9D8C  90 1C 0A 48 */	stw r0, 0xa48(r28)
/* 80AB9D90  80 1C 06 B4 */	lwz r0, 0x6b4(r28)
/* 80AB9D94  90 1C 0A 4C */	stw r0, 0xa4c(r28)
/* 80AB9D98  88 1C 06 B8 */	lbz r0, 0x6b8(r28)
/* 80AB9D9C  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 80AB9DA0  A0 1C 06 C0 */	lhz r0, 0x6c0(r28)
/* 80AB9DA4  B0 1C 0A 58 */	sth r0, 0xa58(r28)
/* 80AB9DA8  A0 1C 06 C2 */	lhz r0, 0x6c2(r28)
/* 80AB9DAC  B0 1C 0A 5A */	sth r0, 0xa5a(r28)
/* 80AB9DB0  80 1C 06 C4 */	lwz r0, 0x6c4(r28)
/* 80AB9DB4  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 80AB9DB8  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 80AB9DBC  90 1C 0A 60 */	stw r0, 0xa60(r28)
/* 80AB9DC0  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 80AB9DC4  D0 1C 0A 68 */	stfs f0, 0xa68(r28)
/* 80AB9DC8  C0 1C 06 D4 */	lfs f0, 0x6d4(r28)
/* 80AB9DCC  D0 1C 0A 6C */	stfs f0, 0xa6c(r28)
/* 80AB9DD0  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 80AB9DD4  D0 1C 0A 70 */	stfs f0, 0xa70(r28)
/* 80AB9DD8  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80AB9DDC  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80AB9DE0  C0 1C 06 E0 */	lfs f0, 0x6e0(r28)
/* 80AB9DE4  D0 1C 0A 78 */	stfs f0, 0xa78(r28)
/* 80AB9DE8  80 1C 06 E4 */	lwz r0, 0x6e4(r28)
/* 80AB9DEC  90 1C 0A 7C */	stw r0, 0xa7c(r28)
/* 80AB9DF0  C0 1C 06 68 */	lfs f0, 0x668(r28)
/* 80AB9DF4  D0 1C 09 80 */	stfs f0, 0x980(r28)
/* 80AB9DF8  7F 83 E3 78 */	mr r3, r28
/* 80AB9DFC  4B 69 8F 88 */	b setEnvTevColor__8daNpcF_cFv
/* 80AB9E00  7F 83 E3 78 */	mr r3, r28
/* 80AB9E04  4B 69 8F DC */	b setRoomNo__8daNpcF_cFv
/* 80AB9E08  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AB9E0C  4B 55 73 E0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80AB9E10  7F 83 E3 78 */	mr r3, r28
/* 80AB9E14  48 00 0D 75 */	bl reset__13daNpcRafrel_cFv
/* 80AB9E18  7F 83 E3 78 */	mr r3, r28
/* 80AB9E1C  48 00 05 99 */	bl Execute__13daNpcRafrel_cFv
lbl_80AB9E20:
/* 80AB9E20  7F A3 EB 78 */	mr r3, r29
lbl_80AB9E24:
/* 80AB9E24  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB9E28  4B 8A 83 EC */	b _restgpr_24
/* 80AB9E2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB9E30  7C 08 03 A6 */	mtlr r0
/* 80AB9E34  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB9E38  4E 80 00 20 */	blr 
