lbl_80BA49E8:
/* 80BA49E8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80BA49EC  7C 08 02 A6 */	mflr r0
/* 80BA49F0  90 01 01 34 */	stw r0, 0x134(r1)
/* 80BA49F4  39 61 01 30 */	addi r11, r1, 0x130
/* 80BA49F8  4B 7B D7 D0 */	b _savegpr_24
/* 80BA49FC  7C 7A 1B 78 */	mr r26, r3
/* 80BA4A00  3C 80 80 BA */	lis r4, lit_3776@ha
/* 80BA4A04  3B E4 54 08 */	addi r31, r4, lit_3776@l
/* 80BA4A08  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BA4A0C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BA4A10  40 82 00 FC */	bne lbl_80BA4B0C
/* 80BA4A14  7F 40 D3 79 */	or. r0, r26, r26
/* 80BA4A18  41 82 00 E8 */	beq lbl_80BA4B00
/* 80BA4A1C  7C 1B 03 78 */	mr r27, r0
/* 80BA4A20  4B 5B 95 F0 */	b __ct__9dInsect_cFv
/* 80BA4A24  3C 60 80 BA */	lis r3, __vt__10daObjARI_c@ha
/* 80BA4A28  38 03 55 A8 */	addi r0, r3, __vt__10daObjARI_c@l
/* 80BA4A2C  90 1B 05 68 */	stw r0, 0x568(r27)
/* 80BA4A30  38 7B 05 90 */	addi r3, r27, 0x590
/* 80BA4A34  4B 4D 2B 48 */	b __ct__11dBgS_GndChkFv
/* 80BA4A38  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BA4A3C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BA4A40  90 1B 06 54 */	stw r0, 0x654(r27)
/* 80BA4A44  38 7B 06 58 */	addi r3, r27, 0x658
/* 80BA4A48  4B 4D ED 18 */	b __ct__10dCcD_GSttsFv
/* 80BA4A4C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BA4A50  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BA4A54  90 7B 06 54 */	stw r3, 0x654(r27)
/* 80BA4A58  38 03 00 20 */	addi r0, r3, 0x20
/* 80BA4A5C  90 1B 06 58 */	stw r0, 0x658(r27)
/* 80BA4A60  3B 1B 06 78 */	addi r24, r27, 0x678
/* 80BA4A64  7F 03 C3 78 */	mr r3, r24
/* 80BA4A68  4B 4D EF C0 */	b __ct__12dCcD_GObjInfFv
/* 80BA4A6C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BA4A70  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BA4A74  90 18 01 20 */	stw r0, 0x120(r24)
/* 80BA4A78  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha
/* 80BA4A7C  38 03 55 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BA4A80  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80BA4A84  3C 60 80 BA */	lis r3, __vt__8cM3dGSph@ha
/* 80BA4A88  38 03 55 90 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BA4A8C  90 18 01 34 */	stw r0, 0x134(r24)
/* 80BA4A90  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BA4A94  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BA4A98  90 78 01 20 */	stw r3, 0x120(r24)
/* 80BA4A9C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA4AA0  90 18 01 34 */	stw r0, 0x134(r24)
/* 80BA4AA4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BA4AA8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BA4AAC  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80BA4AB0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA4AB4  90 18 01 20 */	stw r0, 0x120(r24)
/* 80BA4AB8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA4ABC  90 18 01 34 */	stw r0, 0x134(r24)
/* 80BA4AC0  38 7B 07 C0 */	addi r3, r27, 0x7c0
/* 80BA4AC4  4B 71 B9 04 */	b __ct__10Z2CreatureFv
/* 80BA4AC8  38 7B 08 50 */	addi r3, r27, 0x850
/* 80BA4ACC  4B 4D 13 E0 */	b __ct__12dBgS_AcchCirFv
/* 80BA4AD0  3B 1B 08 90 */	addi r24, r27, 0x890
/* 80BA4AD4  7F 03 C3 78 */	mr r3, r24
/* 80BA4AD8  4B 4D 15 C8 */	b __ct__9dBgS_AcchFv
/* 80BA4ADC  3C 60 80 BA */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BA4AE0  38 63 55 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BA4AE4  90 78 00 10 */	stw r3, 0x10(r24)
/* 80BA4AE8  38 03 00 0C */	addi r0, r3, 0xc
/* 80BA4AEC  90 18 00 14 */	stw r0, 0x14(r24)
/* 80BA4AF0  38 03 00 18 */	addi r0, r3, 0x18
/* 80BA4AF4  90 18 00 24 */	stw r0, 0x24(r24)
/* 80BA4AF8  38 78 00 14 */	addi r3, r24, 0x14
/* 80BA4AFC  4B 4D 43 6C */	b SetObj__16dBgS_PolyPassChkFv
lbl_80BA4B00:
/* 80BA4B00  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80BA4B04  60 00 00 08 */	ori r0, r0, 8
/* 80BA4B08  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80BA4B0C:
/* 80BA4B0C  38 7A 0A 6C */	addi r3, r26, 0xa6c
/* 80BA4B10  3C 80 80 BA */	lis r4, stringBase0@ha
/* 80BA4B14  38 84 55 0C */	addi r4, r4, stringBase0@l
/* 80BA4B18  4B 48 83 A4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BA4B1C  7C 7C 1B 78 */	mr r28, r3
/* 80BA4B20  2C 1C 00 04 */	cmpwi r28, 4
/* 80BA4B24  40 82 07 18 */	bne lbl_80BA523C
/* 80BA4B28  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80BA4B2C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BA4B30  98 1A 06 31 */	stb r0, 0x631(r26)
/* 80BA4B34  88 1A 06 31 */	lbz r0, 0x631(r26)
/* 80BA4B38  28 00 00 02 */	cmplwi r0, 2
/* 80BA4B3C  40 82 00 28 */	bne lbl_80BA4B64
/* 80BA4B40  38 00 00 00 */	li r0, 0
/* 80BA4B44  98 1A 05 6C */	stb r0, 0x56c(r26)
/* 80BA4B48  A8 7A 04 E4 */	lha r3, 0x4e4(r26)
/* 80BA4B4C  38 03 E0 00 */	addi r0, r3, -8192
/* 80BA4B50  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80BA4B54  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80BA4B58  60 00 40 00 */	ori r0, r0, 0x4000
/* 80BA4B5C  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 80BA4B60  48 00 00 0C */	b lbl_80BA4B6C
lbl_80BA4B64:
/* 80BA4B64  38 00 00 01 */	li r0, 1
/* 80BA4B68  98 1A 05 6D */	stb r0, 0x56d(r26)
lbl_80BA4B6C:
/* 80BA4B6C  38 00 00 5D */	li r0, 0x5d
/* 80BA4B70  98 1A 05 48 */	stb r0, 0x548(r26)
/* 80BA4B74  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80BA4B78  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80BA4B7C  98 1A 06 30 */	stb r0, 0x630(r26)
/* 80BA4B80  88 1A 06 30 */	lbz r0, 0x630(r26)
/* 80BA4B84  38 7F 00 08 */	addi r3, r31, 8
/* 80BA4B88  7C 03 00 AE */	lbzx r0, r3, r0
/* 80BA4B8C  98 1A 05 80 */	stb r0, 0x580(r26)
/* 80BA4B90  88 1A 06 30 */	lbz r0, 0x630(r26)
/* 80BA4B94  54 00 08 3C */	slwi r0, r0, 1
/* 80BA4B98  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 80BA4B9C  7C 03 02 2E */	lhzx r0, r3, r0
/* 80BA4BA0  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 80BA4BA4  88 1A 06 30 */	lbz r0, 0x630(r26)
/* 80BA4BA8  28 00 00 01 */	cmplwi r0, 1
/* 80BA4BAC  40 82 00 28 */	bne lbl_80BA4BD4
/* 80BA4BB0  3C 60 80 BA */	lis r3, l_HIO@ha
/* 80BA4BB4  38 63 55 F0 */	addi r3, r3, l_HIO@l
/* 80BA4BB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BA4BBC  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80BA4BC0  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80BA4BC4  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80BA4BC8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BA4BCC  D0 1A 06 38 */	stfs f0, 0x638(r26)
/* 80BA4BD0  48 00 00 2C */	b lbl_80BA4BFC
lbl_80BA4BD4:
/* 80BA4BD4  28 00 00 00 */	cmplwi r0, 0
/* 80BA4BD8  40 82 00 24 */	bne lbl_80BA4BFC
/* 80BA4BDC  3C 60 80 BA */	lis r3, l_HIO@ha
/* 80BA4BE0  38 63 55 F0 */	addi r3, r3, l_HIO@l
/* 80BA4BE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BA4BE8  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80BA4BEC  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80BA4BF0  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80BA4BF4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80BA4BF8  D0 1A 06 38 */	stfs f0, 0x638(r26)
lbl_80BA4BFC:
/* 80BA4BFC  7F 43 D3 78 */	mr r3, r26
/* 80BA4C00  4B FF FC 3D */	bl CreateChk__10daObjARI_cFv
/* 80BA4C04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA4C08  40 82 00 0C */	bne lbl_80BA4C14
/* 80BA4C0C  38 60 00 05 */	li r3, 5
/* 80BA4C10  48 00 06 30 */	b lbl_80BA5240
lbl_80BA4C14:
/* 80BA4C14  7F 43 D3 78 */	mr r3, r26
/* 80BA4C18  3C 80 80 BA */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80BA4C1C  38 84 28 A0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80BA4C20  38 A0 0A A0 */	li r5, 0xaa0
/* 80BA4C24  4B 47 58 8C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BA4C28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA4C2C  40 82 00 0C */	bne lbl_80BA4C38
/* 80BA4C30  38 60 00 05 */	li r3, 5
/* 80BA4C34  48 00 06 0C */	b lbl_80BA5240
lbl_80BA4C38:
/* 80BA4C38  3C 60 80 BA */	lis r3, data_80BA55E0@ha
/* 80BA4C3C  8C 03 55 E0 */	lbzu r0, data_80BA55E0@l(r3)
/* 80BA4C40  28 00 00 00 */	cmplwi r0, 0
/* 80BA4C44  40 82 00 20 */	bne lbl_80BA4C64
/* 80BA4C48  38 00 00 01 */	li r0, 1
/* 80BA4C4C  98 03 00 00 */	stb r0, 0(r3)
/* 80BA4C50  98 1A 0A 74 */	stb r0, 0xa74(r26)
/* 80BA4C54  38 00 FF FF */	li r0, -1
/* 80BA4C58  3C 60 80 BA */	lis r3, l_HIO@ha
/* 80BA4C5C  38 63 55 F0 */	addi r3, r3, l_HIO@l
/* 80BA4C60  98 03 00 04 */	stb r0, 4(r3)
lbl_80BA4C64:
/* 80BA4C64  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA4C68  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 80BA4C6C  38 00 00 00 */	li r0, 0
/* 80BA4C70  90 01 00 08 */	stw r0, 8(r1)
/* 80BA4C74  38 7A 08 90 */	addi r3, r26, 0x890
/* 80BA4C78  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BA4C7C  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80BA4C80  7F 46 D3 78 */	mr r6, r26
/* 80BA4C84  38 E0 00 01 */	li r7, 1
/* 80BA4C88  39 1A 08 50 */	addi r8, r26, 0x850
/* 80BA4C8C  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80BA4C90  39 40 00 00 */	li r10, 0
/* 80BA4C94  4B 4D 15 B4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BA4C98  3B 60 00 00 */	li r27, 0
/* 80BA4C9C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BA4CA0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80BA4CA4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80BA4CA8  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80BA4CAC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BA4CB0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80BA4CB4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80BA4CB8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80BA4CBC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BA4CC0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80BA4CC4  4B 4D 2F A4 */	b __ct__11dBgS_LinChkFv
/* 80BA4CC8  3B C1 00 F8 */	addi r30, r1, 0xf8
/* 80BA4CCC  7F C3 F3 78 */	mr r3, r30
/* 80BA4CD0  4B 4D 41 98 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BA4CD4  3B 00 00 00 */	li r24, 0
/* 80BA4CD8  3B 20 00 00 */	li r25, 0
/* 80BA4CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA4CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA4CE4  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80BA4CE8:
/* 80BA4CE8  38 61 00 54 */	addi r3, r1, 0x54
/* 80BA4CEC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BA4CF0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80BA4CF4  7C 00 CA 14 */	add r0, r0, r25
/* 80BA4CF8  7C 05 07 34 */	extsh r5, r0
/* 80BA4CFC  38 C1 00 6C */	addi r6, r1, 0x6c
/* 80BA4D00  4B 6C C0 C0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80BA4D04  38 61 00 48 */	addi r3, r1, 0x48
/* 80BA4D08  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BA4D0C  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80BA4D10  7C 00 CA 14 */	add r0, r0, r25
/* 80BA4D14  7C 05 07 34 */	extsh r5, r0
/* 80BA4D18  38 C1 00 60 */	addi r6, r1, 0x60
/* 80BA4D1C  4B 6C C0 A4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80BA4D20  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80BA4D24  38 81 00 54 */	addi r4, r1, 0x54
/* 80BA4D28  38 A1 00 48 */	addi r5, r1, 0x48
/* 80BA4D2C  38 C0 00 00 */	li r6, 0
/* 80BA4D30  4B 4D 30 34 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA4D34  7F C3 F3 78 */	mr r3, r30
/* 80BA4D38  4B 4D 41 30 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BA4D3C  7F A3 EB 78 */	mr r3, r29
/* 80BA4D40  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80BA4D44  4B 4C F6 70 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80BA4D48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA4D4C  41 82 01 B8 */	beq lbl_80BA4F04
/* 80BA4D50  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA4D54  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA4D58  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80BA4D5C  7F A3 EB 78 */	mr r3, r29
/* 80BA4D60  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80BA4D64  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80BA4D68  4B 4C F9 DC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA4D6C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80BA4D70  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80BA4D74  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80BA4D78  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80BA4D7C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80BA4D80  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80BA4D84  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA4D88  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BA4D8C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BA4D90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BA4D94  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BA4D98  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80BA4D9C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BA4DA0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80BA4DA4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BA4DA8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BA4DAC  38 81 00 30 */	addi r4, r1, 0x30
/* 80BA4DB0  4B 7A 25 EC */	b PSVECSquareDistance
/* 80BA4DB4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA4DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA4DBC  40 81 00 58 */	ble lbl_80BA4E14
/* 80BA4DC0  FC 00 08 34 */	frsqrte f0, f1
/* 80BA4DC4  C8 9F 00 88 */	lfd f4, 0x88(r31)
/* 80BA4DC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA4DCC  C8 7F 00 90 */	lfd f3, 0x90(r31)
/* 80BA4DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA4DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA4DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA4DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA4DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA4DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA4DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA4DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA4DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA4DF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA4DF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA4DFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA4E00  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA4E04  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA4E08  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA4E0C  FC 40 10 18 */	frsp f2, f2
/* 80BA4E10  48 00 00 90 */	b lbl_80BA4EA0
lbl_80BA4E14:
/* 80BA4E14  C8 1F 00 98 */	lfd f0, 0x98(r31)
/* 80BA4E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA4E1C  40 80 00 10 */	bge lbl_80BA4E2C
/* 80BA4E20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA4E24  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA4E28  48 00 00 78 */	b lbl_80BA4EA0
lbl_80BA4E2C:
/* 80BA4E2C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BA4E30  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80BA4E34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA4E38  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA4E3C  7C 03 00 00 */	cmpw r3, r0
/* 80BA4E40  41 82 00 14 */	beq lbl_80BA4E54
/* 80BA4E44  40 80 00 40 */	bge lbl_80BA4E84
/* 80BA4E48  2C 03 00 00 */	cmpwi r3, 0
/* 80BA4E4C  41 82 00 20 */	beq lbl_80BA4E6C
/* 80BA4E50  48 00 00 34 */	b lbl_80BA4E84
lbl_80BA4E54:
/* 80BA4E54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA4E58  41 82 00 0C */	beq lbl_80BA4E64
/* 80BA4E5C  38 00 00 01 */	li r0, 1
/* 80BA4E60  48 00 00 28 */	b lbl_80BA4E88
lbl_80BA4E64:
/* 80BA4E64  38 00 00 02 */	li r0, 2
/* 80BA4E68  48 00 00 20 */	b lbl_80BA4E88
lbl_80BA4E6C:
/* 80BA4E6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA4E70  41 82 00 0C */	beq lbl_80BA4E7C
/* 80BA4E74  38 00 00 05 */	li r0, 5
/* 80BA4E78  48 00 00 10 */	b lbl_80BA4E88
lbl_80BA4E7C:
/* 80BA4E7C  38 00 00 03 */	li r0, 3
/* 80BA4E80  48 00 00 08 */	b lbl_80BA4E88
lbl_80BA4E84:
/* 80BA4E84  38 00 00 04 */	li r0, 4
lbl_80BA4E88:
/* 80BA4E88  2C 00 00 01 */	cmpwi r0, 1
/* 80BA4E8C  40 82 00 10 */	bne lbl_80BA4E9C
/* 80BA4E90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA4E94  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA4E98  48 00 00 08 */	b lbl_80BA4EA0
lbl_80BA4E9C:
/* 80BA4E9C  FC 40 08 90 */	fmr f2, f1
lbl_80BA4EA0:
/* 80BA4EA0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80BA4EA4  4B 6C 27 D0 */	b cM_atan2s__Fff
/* 80BA4EA8  7C 03 00 D0 */	neg r0, r3
/* 80BA4EAC  B0 1A 06 02 */	sth r0, 0x602(r26)
/* 80BA4EB0  B0 1A 06 08 */	sth r0, 0x608(r26)
/* 80BA4EB4  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80BA4EB8  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80BA4EBC  4B 6C 27 B8 */	b cM_atan2s__Fff
/* 80BA4EC0  B0 7A 05 FE */	sth r3, 0x5fe(r26)
/* 80BA4EC4  B0 7A 06 04 */	sth r3, 0x604(r26)
/* 80BA4EC8  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80BA4ECC  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80BA4ED0  4B 6C 27 A4 */	b cM_atan2s__Fff
/* 80BA4ED4  B0 7A 06 0E */	sth r3, 0x60e(r26)
/* 80BA4ED8  3B 60 00 01 */	li r27, 1
/* 80BA4EDC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA4EE0  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80BA4EE4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA4EE8  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80BA4EEC  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA4EF0  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80BA4EF4  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA4EF8  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA4EFC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80BA4F00  48 00 00 14 */	b lbl_80BA4F14
lbl_80BA4F04:
/* 80BA4F04  3B 18 00 01 */	addi r24, r24, 1
/* 80BA4F08  2C 18 00 04 */	cmpwi r24, 4
/* 80BA4F0C  3B 39 40 00 */	addi r25, r25, 0x4000
/* 80BA4F10  41 80 FD D8 */	blt lbl_80BA4CE8
lbl_80BA4F14:
/* 80BA4F14  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80BA4F18  40 82 02 04 */	bne lbl_80BA511C
/* 80BA4F1C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BA4F20  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80BA4F24  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80BA4F28  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BA4F2C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80BA4F30  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80BA4F34  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80BA4F38  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BA4F3C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80BA4F40  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80BA4F44  38 81 00 6C */	addi r4, r1, 0x6c
/* 80BA4F48  38 A1 00 54 */	addi r5, r1, 0x54
/* 80BA4F4C  38 C0 00 00 */	li r6, 0
/* 80BA4F50  4B 4D 2E 14 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA4F54  7F C3 F3 78 */	mr r3, r30
/* 80BA4F58  4B 4D 3F 10 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BA4F5C  7F A3 EB 78 */	mr r3, r29
/* 80BA4F60  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80BA4F64  4B 4C F4 50 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80BA4F68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA4F6C  41 82 01 B0 */	beq lbl_80BA511C
/* 80BA4F70  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA4F74  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA4F78  90 01 00 88 */	stw r0, 0x88(r1)
/* 80BA4F7C  7F A3 EB 78 */	mr r3, r29
/* 80BA4F80  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80BA4F84  38 A1 00 78 */	addi r5, r1, 0x78
/* 80BA4F88  4B 4C F7 BC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA4F8C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80BA4F90  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80BA4F94  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80BA4F98  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80BA4F9C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80BA4FA0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80BA4FA4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA4FA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BA4FAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BA4FB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BA4FB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BA4FB8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80BA4FBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BA4FC0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80BA4FC4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BA4FC8  38 61 00 24 */	addi r3, r1, 0x24
/* 80BA4FCC  38 81 00 18 */	addi r4, r1, 0x18
/* 80BA4FD0  4B 7A 23 CC */	b PSVECSquareDistance
/* 80BA4FD4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BA4FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA4FDC  40 81 00 58 */	ble lbl_80BA5034
/* 80BA4FE0  FC 00 08 34 */	frsqrte f0, f1
/* 80BA4FE4  C8 9F 00 88 */	lfd f4, 0x88(r31)
/* 80BA4FE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA4FEC  C8 7F 00 90 */	lfd f3, 0x90(r31)
/* 80BA4FF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA4FF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA4FF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA4FFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA5000  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA5004  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA5008  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA500C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA5010  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA5014  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA5018  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA501C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA5020  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA5024  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA5028  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA502C  FC 40 10 18 */	frsp f2, f2
/* 80BA5030  48 00 00 90 */	b lbl_80BA50C0
lbl_80BA5034:
/* 80BA5034  C8 1F 00 98 */	lfd f0, 0x98(r31)
/* 80BA5038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA503C  40 80 00 10 */	bge lbl_80BA504C
/* 80BA5040  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA5044  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA5048  48 00 00 78 */	b lbl_80BA50C0
lbl_80BA504C:
/* 80BA504C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BA5050  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BA5054  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA5058  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA505C  7C 03 00 00 */	cmpw r3, r0
/* 80BA5060  41 82 00 14 */	beq lbl_80BA5074
/* 80BA5064  40 80 00 40 */	bge lbl_80BA50A4
/* 80BA5068  2C 03 00 00 */	cmpwi r3, 0
/* 80BA506C  41 82 00 20 */	beq lbl_80BA508C
/* 80BA5070  48 00 00 34 */	b lbl_80BA50A4
lbl_80BA5074:
/* 80BA5074  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA5078  41 82 00 0C */	beq lbl_80BA5084
/* 80BA507C  38 00 00 01 */	li r0, 1
/* 80BA5080  48 00 00 28 */	b lbl_80BA50A8
lbl_80BA5084:
/* 80BA5084  38 00 00 02 */	li r0, 2
/* 80BA5088  48 00 00 20 */	b lbl_80BA50A8
lbl_80BA508C:
/* 80BA508C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA5090  41 82 00 0C */	beq lbl_80BA509C
/* 80BA5094  38 00 00 05 */	li r0, 5
/* 80BA5098  48 00 00 10 */	b lbl_80BA50A8
lbl_80BA509C:
/* 80BA509C  38 00 00 03 */	li r0, 3
/* 80BA50A0  48 00 00 08 */	b lbl_80BA50A8
lbl_80BA50A4:
/* 80BA50A4  38 00 00 04 */	li r0, 4
lbl_80BA50A8:
/* 80BA50A8  2C 00 00 01 */	cmpwi r0, 1
/* 80BA50AC  40 82 00 10 */	bne lbl_80BA50BC
/* 80BA50B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA50B4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80BA50B8  48 00 00 08 */	b lbl_80BA50C0
lbl_80BA50BC:
/* 80BA50BC  FC 40 08 90 */	fmr f2, f1
lbl_80BA50C0:
/* 80BA50C0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80BA50C4  4B 6C 25 B0 */	b cM_atan2s__Fff
/* 80BA50C8  7C 03 00 D0 */	neg r0, r3
/* 80BA50CC  B0 1A 06 02 */	sth r0, 0x602(r26)
/* 80BA50D0  B0 1A 06 08 */	sth r0, 0x608(r26)
/* 80BA50D4  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80BA50D8  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80BA50DC  4B 6C 25 98 */	b cM_atan2s__Fff
/* 80BA50E0  B0 7A 05 FE */	sth r3, 0x5fe(r26)
/* 80BA50E4  B0 7A 06 04 */	sth r3, 0x604(r26)
/* 80BA50E8  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80BA50EC  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80BA50F0  4B 6C 25 84 */	b cM_atan2s__Fff
/* 80BA50F4  B0 7A 06 0E */	sth r3, 0x60e(r26)
/* 80BA50F8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA50FC  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80BA5100  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA5104  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80BA5108  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA510C  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80BA5110  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha
/* 80BA5114  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80BA5118  90 01 00 88 */	stw r0, 0x88(r1)
lbl_80BA511C:
/* 80BA511C  80 7A 0A 68 */	lwz r3, 0xa68(r26)
/* 80BA5120  80 A3 00 04 */	lwz r5, 4(r3)
/* 80BA5124  93 45 00 14 */	stw r26, 0x14(r5)
/* 80BA5128  38 E0 00 00 */	li r7, 0
/* 80BA512C  3C 60 80 BA */	lis r3, JointCallBack__FP8J3DJointi@ha
/* 80BA5130  38 83 28 54 */	addi r4, r3, JointCallBack__FP8J3DJointi@l
/* 80BA5134  48 00 00 20 */	b lbl_80BA5154
lbl_80BA5138:
/* 80BA5138  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80BA513C  41 82 00 14 */	beq lbl_80BA5150
/* 80BA5140  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80BA5144  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80BA5148  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BA514C  90 83 00 04 */	stw r4, 4(r3)
lbl_80BA5150:
/* 80BA5150  38 E7 00 01 */	addi r7, r7, 1
lbl_80BA5154:
/* 80BA5154  80 C5 00 04 */	lwz r6, 4(r5)
/* 80BA5158  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80BA515C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80BA5160  7C 00 18 40 */	cmplw r0, r3
/* 80BA5164  41 80 FF D4 */	blt lbl_80BA5138
/* 80BA5168  88 1A 06 31 */	lbz r0, 0x631(r26)
/* 80BA516C  28 00 00 00 */	cmplwi r0, 0
/* 80BA5170  40 82 00 0C */	bne lbl_80BA517C
/* 80BA5174  7F 43 D3 78 */	mr r3, r26
/* 80BA5178  4B FF D5 45 */	bl InitCcSph__10daObjARI_cFv
lbl_80BA517C:
/* 80BA517C  88 1A 06 31 */	lbz r0, 0x631(r26)
/* 80BA5180  28 00 00 02 */	cmplwi r0, 2
/* 80BA5184  40 82 00 3C */	bne lbl_80BA51C0
/* 80BA5188  3C 60 80 BA */	lis r3, stringBase0@ha
/* 80BA518C  38 63 55 0C */	addi r3, r3, stringBase0@l
/* 80BA5190  38 63 00 06 */	addi r3, r3, 6
/* 80BA5194  38 9D 3E C8 */	addi r4, r29, 0x3ec8
/* 80BA5198  4B 7C 37 FC */	b strcmp
/* 80BA519C  2C 03 00 00 */	cmpwi r3, 0
/* 80BA51A0  40 82 00 18 */	bne lbl_80BA51B8
/* 80BA51A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA51A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA51AC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BA51B0  2C 00 00 03 */	cmpwi r0, 3
/* 80BA51B4  41 82 00 0C */	beq lbl_80BA51C0
lbl_80BA51B8:
/* 80BA51B8  7F 43 D3 78 */	mr r3, r26
/* 80BA51BC  4B FF D5 01 */	bl InitCcSph__10daObjARI_cFv
lbl_80BA51C0:
/* 80BA51C0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BA51C4  D0 1A 06 14 */	stfs f0, 0x614(r26)
/* 80BA51C8  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BA51CC  D0 1A 06 18 */	stfs f0, 0x618(r26)
/* 80BA51D0  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BA51D4  D0 1A 06 1C */	stfs f0, 0x61c(r26)
/* 80BA51D8  80 7A 0A 68 */	lwz r3, 0xa68(r26)
/* 80BA51DC  80 63 00 04 */	lwz r3, 4(r3)
/* 80BA51E0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA51E4  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80BA51E8  7F 43 D3 78 */	mr r3, r26
/* 80BA51EC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BA51F0  FC 40 08 90 */	fmr f2, f1
/* 80BA51F4  FC 60 08 90 */	fmr f3, f1
/* 80BA51F8  4B 47 53 30 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BA51FC  7F 43 D3 78 */	mr r3, r26
/* 80BA5200  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80BA5204  FC 40 08 90 */	fmr f2, f1
/* 80BA5208  FC 60 08 90 */	fmr f3, f1
/* 80BA520C  4B 47 53 2C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BA5210  38 7A 07 C0 */	addi r3, r26, 0x7c0
/* 80BA5214  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BA5218  38 BA 05 38 */	addi r5, r26, 0x538
/* 80BA521C  38 C0 00 03 */	li r6, 3
/* 80BA5220  38 E0 00 01 */	li r7, 1
/* 80BA5224  4B 71 B3 0C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80BA5228  7F 43 D3 78 */	mr r3, r26
/* 80BA522C  4B FF F5 F1 */	bl daObjARI_Execute__FP10daObjARI_c
/* 80BA5230  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80BA5234  38 80 FF FF */	li r4, -1
/* 80BA5238  4B 4D 2A A4 */	b __dt__11dBgS_LinChkFv
lbl_80BA523C:
/* 80BA523C  7F 83 E3 78 */	mr r3, r28
lbl_80BA5240:
/* 80BA5240  39 61 01 30 */	addi r11, r1, 0x130
/* 80BA5244  4B 7B CF D0 */	b _restgpr_24
/* 80BA5248  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80BA524C  7C 08 03 A6 */	mtlr r0
/* 80BA5250  38 21 01 30 */	addi r1, r1, 0x130
/* 80BA5254  4E 80 00 20 */	blr 
