lbl_80C37AA0:
/* 80C37AA0  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80C37AA4  7C 08 02 A6 */	mflr r0
/* 80C37AA8  90 01 01 34 */	stw r0, 0x134(r1)
/* 80C37AAC  39 61 01 30 */	addi r11, r1, 0x130
/* 80C37AB0  4B 72 A7 18 */	b _savegpr_24
/* 80C37AB4  7C 7A 1B 78 */	mr r26, r3
/* 80C37AB8  3C 80 80 C4 */	lis r4, lit_3775@ha
/* 80C37ABC  3B E4 84 08 */	addi r31, r4, lit_3775@l
/* 80C37AC0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C37AC4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C37AC8  40 82 00 FC */	bne lbl_80C37BC4
/* 80C37ACC  7F 40 D3 79 */	or. r0, r26, r26
/* 80C37AD0  41 82 00 E8 */	beq lbl_80C37BB8
/* 80C37AD4  7C 1B 03 78 */	mr r27, r0
/* 80C37AD8  4B 52 65 38 */	b __ct__9dInsect_cFv
/* 80C37ADC  3C 60 80 C4 */	lis r3, __vt__10daObjKAM_c@ha
/* 80C37AE0  38 03 85 98 */	addi r0, r3, __vt__10daObjKAM_c@l
/* 80C37AE4  90 1B 05 68 */	stw r0, 0x568(r27)
/* 80C37AE8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C37AEC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C37AF0  90 1B 05 A8 */	stw r0, 0x5a8(r27)
/* 80C37AF4  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 80C37AF8  4B 44 BC 68 */	b __ct__10dCcD_GSttsFv
/* 80C37AFC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C37B00  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C37B04  90 7B 05 A8 */	stw r3, 0x5a8(r27)
/* 80C37B08  38 03 00 20 */	addi r0, r3, 0x20
/* 80C37B0C  90 1B 05 AC */	stw r0, 0x5ac(r27)
/* 80C37B10  3B 1B 05 CC */	addi r24, r27, 0x5cc
/* 80C37B14  7F 03 C3 78 */	mr r3, r24
/* 80C37B18  4B 44 BF 10 */	b __ct__12dCcD_GObjInfFv
/* 80C37B1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C37B20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C37B24  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C37B28  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha
/* 80C37B2C  38 03 85 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C37B30  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80C37B34  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha
/* 80C37B38  38 03 85 80 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C37B3C  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C37B40  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C37B44  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C37B48  90 78 01 20 */	stw r3, 0x120(r24)
/* 80C37B4C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C37B50  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C37B54  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C37B58  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C37B5C  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80C37B60  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C37B64  90 18 01 20 */	stw r0, 0x120(r24)
/* 80C37B68  38 03 00 84 */	addi r0, r3, 0x84
/* 80C37B6C  90 18 01 34 */	stw r0, 0x134(r24)
/* 80C37B70  38 7B 07 10 */	addi r3, r27, 0x710
/* 80C37B74  4B 43 E3 38 */	b __ct__12dBgS_AcchCirFv
/* 80C37B78  3B 1B 07 50 */	addi r24, r27, 0x750
/* 80C37B7C  7F 03 C3 78 */	mr r3, r24
/* 80C37B80  4B 43 E5 20 */	b __ct__9dBgS_AcchFv
/* 80C37B84  3C 60 80 C4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C37B88  38 63 85 5C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C37B8C  90 78 00 10 */	stw r3, 0x10(r24)
/* 80C37B90  38 03 00 0C */	addi r0, r3, 0xc
/* 80C37B94  90 18 00 14 */	stw r0, 0x14(r24)
/* 80C37B98  38 03 00 18 */	addi r0, r3, 0x18
/* 80C37B9C  90 18 00 24 */	stw r0, 0x24(r24)
/* 80C37BA0  38 78 00 14 */	addi r3, r24, 0x14
/* 80C37BA4  4B 44 12 C4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C37BA8  38 7B 09 28 */	addi r3, r27, 0x928
/* 80C37BAC  4B 43 F9 D0 */	b __ct__11dBgS_GndChkFv
/* 80C37BB0  38 7B 09 C4 */	addi r3, r27, 0x9c4
/* 80C37BB4  4B 68 88 14 */	b __ct__10Z2CreatureFv
lbl_80C37BB8:
/* 80C37BB8  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80C37BBC  60 00 00 08 */	ori r0, r0, 8
/* 80C37BC0  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80C37BC4:
/* 80C37BC4  38 7A 0A 5C */	addi r3, r26, 0xa5c
/* 80C37BC8  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C37BCC  38 84 84 FC */	addi r4, r4, stringBase0@l
/* 80C37BD0  4B 3F 52 EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C37BD4  7C 7C 1B 78 */	mr r28, r3
/* 80C37BD8  2C 1C 00 04 */	cmpwi r28, 4
/* 80C37BDC  40 82 06 60 */	bne lbl_80C3823C
/* 80C37BE0  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C37BE4  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C37BE8  98 1A 09 C0 */	stb r0, 0x9c0(r26)
/* 80C37BEC  88 1A 09 C0 */	lbz r0, 0x9c0(r26)
/* 80C37BF0  28 00 00 02 */	cmplwi r0, 2
/* 80C37BF4  40 82 00 28 */	bne lbl_80C37C1C
/* 80C37BF8  38 00 00 00 */	li r0, 0
/* 80C37BFC  98 1A 05 6C */	stb r0, 0x56c(r26)
/* 80C37C00  A8 7A 04 E4 */	lha r3, 0x4e4(r26)
/* 80C37C04  38 03 E0 00 */	addi r0, r3, -8192
/* 80C37C08  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80C37C0C  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80C37C10  60 00 40 00 */	ori r0, r0, 0x4000
/* 80C37C14  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 80C37C18  48 00 00 0C */	b lbl_80C37C24
lbl_80C37C1C:
/* 80C37C1C  38 00 00 01 */	li r0, 1
/* 80C37C20  98 1A 05 6D */	stb r0, 0x56d(r26)
lbl_80C37C24:
/* 80C37C24  38 00 00 5D */	li r0, 0x5d
/* 80C37C28  98 1A 05 48 */	stb r0, 0x548(r26)
/* 80C37C2C  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C37C30  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80C37C34  98 1A 05 81 */	stb r0, 0x581(r26)
/* 80C37C38  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C37C3C  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80C37C40  7C 03 00 AE */	lbzx r0, r3, r0
/* 80C37C44  98 1A 05 80 */	stb r0, 0x580(r26)
/* 80C37C48  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C37C4C  54 00 08 3C */	slwi r0, r0, 1
/* 80C37C50  38 7F 00 DC */	addi r3, r31, 0xdc
/* 80C37C54  7C 03 02 2E */	lhzx r0, r3, r0
/* 80C37C58  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 80C37C5C  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80C37C60  28 00 00 01 */	cmplwi r0, 1
/* 80C37C64  40 82 00 28 */	bne lbl_80C37C8C
/* 80C37C68  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C37C6C  38 63 85 E0 */	addi r3, r3, l_HIO@l
/* 80C37C70  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C37C74  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C37C78  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C37C7C  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80C37C80  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C37C84  D0 1A 09 AC */	stfs f0, 0x9ac(r26)
/* 80C37C88  48 00 00 2C */	b lbl_80C37CB4
lbl_80C37C8C:
/* 80C37C8C  28 00 00 00 */	cmplwi r0, 0
/* 80C37C90  40 82 00 24 */	bne lbl_80C37CB4
/* 80C37C94  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C37C98  38 63 85 E0 */	addi r3, r3, l_HIO@l
/* 80C37C9C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C37CA0  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80C37CA4  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80C37CA8  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80C37CAC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80C37CB0  D0 1A 09 AC */	stfs f0, 0x9ac(r26)
lbl_80C37CB4:
/* 80C37CB4  7F 43 D3 78 */	mr r3, r26
/* 80C37CB8  4B FF FC 3D */	bl CreateChk__10daObjKAM_cFv
/* 80C37CBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C37CC0  40 82 00 0C */	bne lbl_80C37CCC
/* 80C37CC4  38 60 00 05 */	li r3, 5
/* 80C37CC8  48 00 05 78 */	b lbl_80C38240
lbl_80C37CCC:
/* 80C37CCC  7F 43 D3 78 */	mr r3, r26
/* 80C37CD0  3C 80 80 C3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C37CD4  38 84 52 80 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C37CD8  38 A0 0B 50 */	li r5, 0xb50
/* 80C37CDC  4B 3E 27 D4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C37CE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C37CE4  40 82 00 0C */	bne lbl_80C37CF0
/* 80C37CE8  38 60 00 05 */	li r3, 5
/* 80C37CEC  48 00 05 54 */	b lbl_80C38240
lbl_80C37CF0:
/* 80C37CF0  3C 60 80 C4 */	lis r3, data_80C385D0@ha
/* 80C37CF4  8C 03 85 D0 */	lbzu r0, data_80C385D0@l(r3)
/* 80C37CF8  28 00 00 00 */	cmplwi r0, 0
/* 80C37CFC  40 82 00 20 */	bne lbl_80C37D1C
/* 80C37D00  38 00 00 01 */	li r0, 1
/* 80C37D04  98 03 00 00 */	stb r0, 0(r3)
/* 80C37D08  98 1A 0A 64 */	stb r0, 0xa64(r26)
/* 80C37D0C  38 00 FF FF */	li r0, -1
/* 80C37D10  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C37D14  38 63 85 E0 */	addi r3, r3, l_HIO@l
/* 80C37D18  98 03 00 04 */	stb r0, 4(r3)
lbl_80C37D1C:
/* 80C37D1C  38 00 00 00 */	li r0, 0
/* 80C37D20  98 1A 09 80 */	stb r0, 0x980(r26)
/* 80C37D24  38 00 00 01 */	li r0, 1
/* 80C37D28  98 1A 09 81 */	stb r0, 0x981(r26)
/* 80C37D2C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C37D30  D0 3A 05 30 */	stfs f1, 0x530(r26)
/* 80C37D34  3B 60 00 00 */	li r27, 0
/* 80C37D38  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C37D3C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C37D40  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80C37D44  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C37D48  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C37D4C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80C37D50  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80C37D54  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C37D58  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C37D5C  4B 43 FF 0C */	b __ct__11dBgS_LinChkFv
/* 80C37D60  3B C1 00 F8 */	addi r30, r1, 0xf8
/* 80C37D64  7F C3 F3 78 */	mr r3, r30
/* 80C37D68  4B 44 11 00 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C37D6C  3B 00 00 00 */	li r24, 0
/* 80C37D70  3B 20 00 00 */	li r25, 0
/* 80C37D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C37D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C37D7C  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80C37D80:
/* 80C37D80  38 61 00 54 */	addi r3, r1, 0x54
/* 80C37D84  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C37D88  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C37D8C  7C 00 CA 14 */	add r0, r0, r25
/* 80C37D90  7C 05 07 34 */	extsh r5, r0
/* 80C37D94  38 C1 00 6C */	addi r6, r1, 0x6c
/* 80C37D98  4B 63 90 28 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C37D9C  38 61 00 48 */	addi r3, r1, 0x48
/* 80C37DA0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C37DA4  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80C37DA8  7C 00 CA 14 */	add r0, r0, r25
/* 80C37DAC  7C 05 07 34 */	extsh r5, r0
/* 80C37DB0  38 C1 00 60 */	addi r6, r1, 0x60
/* 80C37DB4  4B 63 90 0C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C37DB8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C37DBC  38 81 00 48 */	addi r4, r1, 0x48
/* 80C37DC0  38 A1 00 54 */	addi r5, r1, 0x54
/* 80C37DC4  38 C0 00 00 */	li r6, 0
/* 80C37DC8  4B 43 FF 9C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C37DCC  7F C3 F3 78 */	mr r3, r30
/* 80C37DD0  4B 44 10 98 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C37DD4  7F A3 EB 78 */	mr r3, r29
/* 80C37DD8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C37DDC  4B 43 C5 D8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C37DE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C37DE4  41 82 01 88 */	beq lbl_80C37F6C
/* 80C37DE8  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C37DEC  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C37DF0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C37DF4  7F A3 EB 78 */	mr r3, r29
/* 80C37DF8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C37DFC  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80C37E00  4B 43 C9 44 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C37E04  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C37E08  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C37E0C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C37E10  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C37E14  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C37E18  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C37E1C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C37E20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C37E24  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C37E28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C37E2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C37E30  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C37E34  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C37E38  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C37E3C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C37E40  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C37E44  38 81 00 30 */	addi r4, r1, 0x30
/* 80C37E48  4B 70 F5 54 */	b PSVECSquareDistance
/* 80C37E4C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C37E50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C37E54  40 81 00 58 */	ble lbl_80C37EAC
/* 80C37E58  FC 00 08 34 */	frsqrte f0, f1
/* 80C37E5C  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C37E60  FC 44 00 32 */	fmul f2, f4, f0
/* 80C37E64  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C37E68  FC 00 00 32 */	fmul f0, f0, f0
/* 80C37E6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C37E70  FC 03 00 28 */	fsub f0, f3, f0
/* 80C37E74  FC 02 00 32 */	fmul f0, f2, f0
/* 80C37E78  FC 44 00 32 */	fmul f2, f4, f0
/* 80C37E7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C37E80  FC 01 00 32 */	fmul f0, f1, f0
/* 80C37E84  FC 03 00 28 */	fsub f0, f3, f0
/* 80C37E88  FC 02 00 32 */	fmul f0, f2, f0
/* 80C37E8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C37E90  FC 00 00 32 */	fmul f0, f0, f0
/* 80C37E94  FC 01 00 32 */	fmul f0, f1, f0
/* 80C37E98  FC 03 00 28 */	fsub f0, f3, f0
/* 80C37E9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C37EA0  FC 41 00 32 */	fmul f2, f1, f0
/* 80C37EA4  FC 40 10 18 */	frsp f2, f2
/* 80C37EA8  48 00 00 90 */	b lbl_80C37F38
lbl_80C37EAC:
/* 80C37EAC  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C37EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C37EB4  40 80 00 10 */	bge lbl_80C37EC4
/* 80C37EB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C37EBC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C37EC0  48 00 00 78 */	b lbl_80C37F38
lbl_80C37EC4:
/* 80C37EC4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C37EC8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C37ECC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C37ED0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C37ED4  7C 03 00 00 */	cmpw r3, r0
/* 80C37ED8  41 82 00 14 */	beq lbl_80C37EEC
/* 80C37EDC  40 80 00 40 */	bge lbl_80C37F1C
/* 80C37EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80C37EE4  41 82 00 20 */	beq lbl_80C37F04
/* 80C37EE8  48 00 00 34 */	b lbl_80C37F1C
lbl_80C37EEC:
/* 80C37EEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C37EF0  41 82 00 0C */	beq lbl_80C37EFC
/* 80C37EF4  38 00 00 01 */	li r0, 1
/* 80C37EF8  48 00 00 28 */	b lbl_80C37F20
lbl_80C37EFC:
/* 80C37EFC  38 00 00 02 */	li r0, 2
/* 80C37F00  48 00 00 20 */	b lbl_80C37F20
lbl_80C37F04:
/* 80C37F04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C37F08  41 82 00 0C */	beq lbl_80C37F14
/* 80C37F0C  38 00 00 05 */	li r0, 5
/* 80C37F10  48 00 00 10 */	b lbl_80C37F20
lbl_80C37F14:
/* 80C37F14  38 00 00 03 */	li r0, 3
/* 80C37F18  48 00 00 08 */	b lbl_80C37F20
lbl_80C37F1C:
/* 80C37F1C  38 00 00 04 */	li r0, 4
lbl_80C37F20:
/* 80C37F20  2C 00 00 01 */	cmpwi r0, 1
/* 80C37F24  40 82 00 10 */	bne lbl_80C37F34
/* 80C37F28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C37F2C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C37F30  48 00 00 08 */	b lbl_80C37F38
lbl_80C37F34:
/* 80C37F34  FC 40 08 90 */	fmr f2, f1
lbl_80C37F38:
/* 80C37F38  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C37F3C  4B 62 F7 38 */	b cM_atan2s__Fff
/* 80C37F40  7C 03 00 D0 */	neg r0, r3
/* 80C37F44  B0 1A 09 9E */	sth r0, 0x99e(r26)
/* 80C37F48  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80C37F4C  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80C37F50  4B 62 F7 24 */	b cM_atan2s__Fff
/* 80C37F54  B0 7A 09 9A */	sth r3, 0x99a(r26)
/* 80C37F58  3B 60 00 01 */	li r27, 1
/* 80C37F5C  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C37F60  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C37F64  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C37F68  48 00 00 14 */	b lbl_80C37F7C
lbl_80C37F6C:
/* 80C37F6C  3B 18 00 01 */	addi r24, r24, 1
/* 80C37F70  2C 18 00 04 */	cmpwi r24, 4
/* 80C37F74  3B 39 40 00 */	addi r25, r25, 0x4000
/* 80C37F78  41 80 FE 08 */	blt lbl_80C37D80
lbl_80C37F7C:
/* 80C37F7C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C37F80  40 82 01 D4 */	bne lbl_80C38154
/* 80C37F84  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C37F88  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C37F8C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80C37F90  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C37F94  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80C37F98  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C37F9C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80C37FA0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C37FA4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80C37FA8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C37FAC  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C37FB0  38 A1 00 54 */	addi r5, r1, 0x54
/* 80C37FB4  38 C0 00 00 */	li r6, 0
/* 80C37FB8  4B 43 FD AC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C37FBC  7F C3 F3 78 */	mr r3, r30
/* 80C37FC0  4B 44 0E A8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C37FC4  7F A3 EB 78 */	mr r3, r29
/* 80C37FC8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80C37FCC  4B 43 C3 E8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C37FD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C37FD4  41 82 01 80 */	beq lbl_80C38154
/* 80C37FD8  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C37FDC  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C37FE0  90 01 00 88 */	stw r0, 0x88(r1)
/* 80C37FE4  7F A3 EB 78 */	mr r3, r29
/* 80C37FE8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80C37FEC  38 A1 00 78 */	addi r5, r1, 0x78
/* 80C37FF0  4B 43 C7 54 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C37FF4  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80C37FF8  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C37FFC  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80C38000  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C38004  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80C38008  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C3800C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C38010  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C38014  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C38018  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3801C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C38020  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C38024  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C38028  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C3802C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C38030  38 61 00 24 */	addi r3, r1, 0x24
/* 80C38034  38 81 00 18 */	addi r4, r1, 0x18
/* 80C38038  4B 70 F3 64 */	b PSVECSquareDistance
/* 80C3803C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C38040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C38044  40 81 00 58 */	ble lbl_80C3809C
/* 80C38048  FC 00 08 34 */	frsqrte f0, f1
/* 80C3804C  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C38050  FC 44 00 32 */	fmul f2, f4, f0
/* 80C38054  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C38058  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3805C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C38060  FC 03 00 28 */	fsub f0, f3, f0
/* 80C38064  FC 02 00 32 */	fmul f0, f2, f0
/* 80C38068  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3806C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C38070  FC 01 00 32 */	fmul f0, f1, f0
/* 80C38074  FC 03 00 28 */	fsub f0, f3, f0
/* 80C38078  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3807C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C38080  FC 00 00 32 */	fmul f0, f0, f0
/* 80C38084  FC 01 00 32 */	fmul f0, f1, f0
/* 80C38088  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3808C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C38090  FC 41 00 32 */	fmul f2, f1, f0
/* 80C38094  FC 40 10 18 */	frsp f2, f2
/* 80C38098  48 00 00 90 */	b lbl_80C38128
lbl_80C3809C:
/* 80C3809C  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C380A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C380A4  40 80 00 10 */	bge lbl_80C380B4
/* 80C380A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C380AC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C380B0  48 00 00 78 */	b lbl_80C38128
lbl_80C380B4:
/* 80C380B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C380B8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80C380BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C380C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C380C4  7C 03 00 00 */	cmpw r3, r0
/* 80C380C8  41 82 00 14 */	beq lbl_80C380DC
/* 80C380CC  40 80 00 40 */	bge lbl_80C3810C
/* 80C380D0  2C 03 00 00 */	cmpwi r3, 0
/* 80C380D4  41 82 00 20 */	beq lbl_80C380F4
/* 80C380D8  48 00 00 34 */	b lbl_80C3810C
lbl_80C380DC:
/* 80C380DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C380E0  41 82 00 0C */	beq lbl_80C380EC
/* 80C380E4  38 00 00 01 */	li r0, 1
/* 80C380E8  48 00 00 28 */	b lbl_80C38110
lbl_80C380EC:
/* 80C380EC  38 00 00 02 */	li r0, 2
/* 80C380F0  48 00 00 20 */	b lbl_80C38110
lbl_80C380F4:
/* 80C380F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C380F8  41 82 00 0C */	beq lbl_80C38104
/* 80C380FC  38 00 00 05 */	li r0, 5
/* 80C38100  48 00 00 10 */	b lbl_80C38110
lbl_80C38104:
/* 80C38104  38 00 00 03 */	li r0, 3
/* 80C38108  48 00 00 08 */	b lbl_80C38110
lbl_80C3810C:
/* 80C3810C  38 00 00 04 */	li r0, 4
lbl_80C38110:
/* 80C38110  2C 00 00 01 */	cmpwi r0, 1
/* 80C38114  40 82 00 10 */	bne lbl_80C38124
/* 80C38118  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C3811C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C38120  48 00 00 08 */	b lbl_80C38128
lbl_80C38124:
/* 80C38124  FC 40 08 90 */	fmr f2, f1
lbl_80C38128:
/* 80C38128  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80C3812C  4B 62 F5 48 */	b cM_atan2s__Fff
/* 80C38130  7C 03 00 D0 */	neg r0, r3
/* 80C38134  B0 1A 09 9E */	sth r0, 0x99e(r26)
/* 80C38138  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80C3813C  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80C38140  4B 62 F5 34 */	b cM_atan2s__Fff
/* 80C38144  B0 7A 09 9A */	sth r3, 0x99a(r26)
/* 80C38148  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C3814C  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C38150  90 01 00 88 */	stw r0, 0x88(r1)
lbl_80C38154:
/* 80C38154  88 1A 09 C0 */	lbz r0, 0x9c0(r26)
/* 80C38158  28 00 00 00 */	cmplwi r0, 0
/* 80C3815C  40 82 00 0C */	bne lbl_80C38168
/* 80C38160  7F 43 D3 78 */	mr r3, r26
/* 80C38164  4B FF D0 59 */	bl InitCcSph__10daObjKAM_cFv
lbl_80C38168:
/* 80C38168  88 1A 09 C0 */	lbz r0, 0x9c0(r26)
/* 80C3816C  28 00 00 02 */	cmplwi r0, 2
/* 80C38170  40 82 00 3C */	bne lbl_80C381AC
/* 80C38174  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C38178  38 63 84 FC */	addi r3, r3, stringBase0@l
/* 80C3817C  38 63 00 06 */	addi r3, r3, 6
/* 80C38180  38 9D 3E C8 */	addi r4, r29, 0x3ec8
/* 80C38184  4B 73 08 10 */	b strcmp
/* 80C38188  2C 03 00 00 */	cmpwi r3, 0
/* 80C3818C  40 82 00 18 */	bne lbl_80C381A4
/* 80C38190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C38194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C38198  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C3819C  2C 00 00 03 */	cmpwi r0, 3
/* 80C381A0  41 82 00 0C */	beq lbl_80C381AC
lbl_80C381A4:
/* 80C381A4  7F 43 D3 78 */	mr r3, r26
/* 80C381A8  4B FF D0 15 */	bl InitCcSph__10daObjKAM_cFv
lbl_80C381AC:
/* 80C381AC  38 00 00 00 */	li r0, 0
/* 80C381B0  90 01 00 08 */	stw r0, 8(r1)
/* 80C381B4  38 7A 07 50 */	addi r3, r26, 0x750
/* 80C381B8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C381BC  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80C381C0  7F 46 D3 78 */	mr r6, r26
/* 80C381C4  38 E0 00 01 */	li r7, 1
/* 80C381C8  39 1A 07 10 */	addi r8, r26, 0x710
/* 80C381CC  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80C381D0  39 40 00 00 */	li r10, 0
/* 80C381D4  4B 43 E0 74 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C381D8  80 7A 0A 58 */	lwz r3, 0xa58(r26)
/* 80C381DC  80 63 00 04 */	lwz r3, 4(r3)
/* 80C381E0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C381E4  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80C381E8  7F 43 D3 78 */	mr r3, r26
/* 80C381EC  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80C381F0  FC 40 08 90 */	fmr f2, f1
/* 80C381F4  FC 60 08 90 */	fmr f3, f1
/* 80C381F8  4B 3E 23 30 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C381FC  7F 43 D3 78 */	mr r3, r26
/* 80C38200  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C38204  FC 40 08 90 */	fmr f2, f1
/* 80C38208  FC 60 08 90 */	fmr f3, f1
/* 80C3820C  4B 3E 23 2C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C38210  38 7A 09 C4 */	addi r3, r26, 0x9c4
/* 80C38214  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C38218  38 BA 05 38 */	addi r5, r26, 0x538
/* 80C3821C  38 C0 00 03 */	li r6, 3
/* 80C38220  38 E0 00 01 */	li r7, 1
/* 80C38224  4B 68 83 0C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80C38228  7F 43 D3 78 */	mr r3, r26
/* 80C3822C  4B FF F6 A9 */	bl daObjKAM_Execute__FP10daObjKAM_c
/* 80C38230  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C38234  38 80 FF FF */	li r4, -1
/* 80C38238  4B 43 FA A4 */	b __dt__11dBgS_LinChkFv
lbl_80C3823C:
/* 80C3823C  7F 83 E3 78 */	mr r3, r28
lbl_80C38240:
/* 80C38240  39 61 01 30 */	addi r11, r1, 0x130
/* 80C38244  4B 72 9F D0 */	b _restgpr_24
/* 80C38248  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80C3824C  7C 08 03 A6 */	mtlr r0
/* 80C38250  38 21 01 30 */	addi r1, r1, 0x130
/* 80C38254  4E 80 00 20 */	blr 
