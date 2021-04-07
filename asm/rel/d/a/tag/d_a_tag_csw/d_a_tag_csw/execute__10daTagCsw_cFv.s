lbl_80D579E8:
/* 80D579E8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80D579EC  7C 08 02 A6 */	mflr r0
/* 80D579F0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80D579F4  39 61 00 90 */	addi r11, r1, 0x90
/* 80D579F8  4B 60 A7 DD */	bl _savegpr_27
/* 80D579FC  7C 7F 1B 78 */	mr r31, r3
/* 80D57A00  3C 60 80 D6 */	lis r3, l_bmd_idx@ha /* 0x80D585B8@ha */
/* 80D57A04  3B A3 85 B8 */	addi r29, r3, l_bmd_idx@l /* 0x80D585B8@l */
/* 80D57A08  3B 80 00 00 */	li r28, 0
/* 80D57A0C  3C 60 80 D5 */	lis r3, searchCStatue__FPvPv@ha /* 0x80D57840@ha */
/* 80D57A10  38 63 78 40 */	addi r3, r3, searchCStatue__FPvPv@l /* 0x80D57840@l */
/* 80D57A14  7F E4 FB 78 */	mr r4, r31
/* 80D57A18  4B 2C 1D E1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D57A1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D57A20  41 82 01 58 */	beq lbl_80D57B78
/* 80D57A24  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D57A28  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D57A2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D57A30  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80D57A34  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D57A38  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D57A3C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80D57A40  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D57A44  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D57A48  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D57A4C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80D57A50  38 61 00 1C */	addi r3, r1, 0x1c
/* 80D57A54  38 81 00 28 */	addi r4, r1, 0x28
/* 80D57A58  4B 5E F9 45 */	bl PSVECSquareDistance
/* 80D57A5C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80D57A60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D57A64  40 81 00 58 */	ble lbl_80D57ABC
/* 80D57A68  FC 00 08 34 */	frsqrte f0, f1
/* 80D57A6C  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 80D57A70  FC 44 00 32 */	fmul f2, f4, f0
/* 80D57A74  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 80D57A78  FC 00 00 32 */	fmul f0, f0, f0
/* 80D57A7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D57A80  FC 03 00 28 */	fsub f0, f3, f0
/* 80D57A84  FC 02 00 32 */	fmul f0, f2, f0
/* 80D57A88  FC 44 00 32 */	fmul f2, f4, f0
/* 80D57A8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D57A90  FC 01 00 32 */	fmul f0, f1, f0
/* 80D57A94  FC 03 00 28 */	fsub f0, f3, f0
/* 80D57A98  FC 02 00 32 */	fmul f0, f2, f0
/* 80D57A9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D57AA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D57AA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D57AA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D57AAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D57AB0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D57AB4  FC 20 08 18 */	frsp f1, f1
/* 80D57AB8  48 00 00 88 */	b lbl_80D57B40
lbl_80D57ABC:
/* 80D57ABC  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 80D57AC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D57AC4  40 80 00 10 */	bge lbl_80D57AD4
/* 80D57AC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D57ACC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D57AD0  48 00 00 70 */	b lbl_80D57B40
lbl_80D57AD4:
/* 80D57AD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D57AD8  80 81 00 08 */	lwz r4, 8(r1)
/* 80D57ADC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D57AE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D57AE4  7C 03 00 00 */	cmpw r3, r0
/* 80D57AE8  41 82 00 14 */	beq lbl_80D57AFC
/* 80D57AEC  40 80 00 40 */	bge lbl_80D57B2C
/* 80D57AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80D57AF4  41 82 00 20 */	beq lbl_80D57B14
/* 80D57AF8  48 00 00 34 */	b lbl_80D57B2C
lbl_80D57AFC:
/* 80D57AFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D57B00  41 82 00 0C */	beq lbl_80D57B0C
/* 80D57B04  38 00 00 01 */	li r0, 1
/* 80D57B08  48 00 00 28 */	b lbl_80D57B30
lbl_80D57B0C:
/* 80D57B0C  38 00 00 02 */	li r0, 2
/* 80D57B10  48 00 00 20 */	b lbl_80D57B30
lbl_80D57B14:
/* 80D57B14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D57B18  41 82 00 0C */	beq lbl_80D57B24
/* 80D57B1C  38 00 00 05 */	li r0, 5
/* 80D57B20  48 00 00 10 */	b lbl_80D57B30
lbl_80D57B24:
/* 80D57B24  38 00 00 03 */	li r0, 3
/* 80D57B28  48 00 00 08 */	b lbl_80D57B30
lbl_80D57B2C:
/* 80D57B2C  38 00 00 04 */	li r0, 4
lbl_80D57B30:
/* 80D57B30  2C 00 00 01 */	cmpwi r0, 1
/* 80D57B34  40 82 00 0C */	bne lbl_80D57B40
/* 80D57B38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D57B3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D57B40:
/* 80D57B40  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80D57B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D57B48  40 80 00 30 */	bge lbl_80D57B78
/* 80D57B4C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D57B50  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D57B54  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80D57B58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D57B5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D57B60  40 81 00 18 */	ble lbl_80D57B78
/* 80D57B64  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80D57B68  EC 00 08 2A */	fadds f0, f0, f1
/* 80D57B6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D57B70  40 80 00 08 */	bge lbl_80D57B78
/* 80D57B74  3B 80 00 01 */	li r28, 1
lbl_80D57B78:
/* 80D57B78  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80D57B7C  2C 00 00 00 */	cmpwi r0, 0
/* 80D57B80  40 82 03 A8 */	bne lbl_80D57F28
/* 80D57B84  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80D57B88  41 82 02 3C */	beq lbl_80D57DC4
/* 80D57B8C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57B90  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D57B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57B98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57B9C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57BA0  7C 05 07 74 */	extsb r5, r0
/* 80D57BA4  4B 2D D7 BD */	bl isSwitch__10dSv_info_cCFii
/* 80D57BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80D57BAC  40 82 02 18 */	bne lbl_80D57DC4
/* 80D57BB0  28 1E 00 00 */	cmplwi r30, 0
/* 80D57BB4  41 82 00 14 */	beq lbl_80D57BC8
/* 80D57BB8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D57BBC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D57BC0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D57BC4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80D57BC8:
/* 80D57BC8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57BCC  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D57BD0  2C 04 00 06 */	cmpwi r4, 6
/* 80D57BD4  41 82 01 B4 */	beq lbl_80D57D88
/* 80D57BD8  3C 60 80 D5 */	lis r3, searchTagCswOut__FPvPv@ha /* 0x80D577C0@ha */
/* 80D57BDC  38 63 77 C0 */	addi r3, r3, searchTagCswOut__FPvPv@l /* 0x80D577C0@l */
/* 80D57BE0  7F E4 FB 78 */	mr r4, r31
/* 80D57BE4  4B 2C 1C 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D57BE8  7C 7B 1B 78 */	mr r27, r3
/* 80D57BEC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D57BF0  D0 1E 0B 14 */	stfs f0, 0xb14(r30)
/* 80D57BF4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D57BF8  D0 1E 0B 18 */	stfs f0, 0xb18(r30)
/* 80D57BFC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D57C00  D0 1E 0B 1C */	stfs f0, 0xb1c(r30)
/* 80D57C04  38 00 00 03 */	li r0, 3
/* 80D57C08  98 1E 0A E1 */	stb r0, 0xae1(r30)
/* 80D57C0C  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80D57C10  FC 00 02 10 */	fabs f0, f0
/* 80D57C14  FC 20 00 18 */	frsp f1, f0
/* 80D57C18  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80D57C1C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80D57C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D57C24  40 80 00 28 */	bge lbl_80D57C4C
/* 80D57C28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57C2C  54 04 BE 3E */	rlwinm r4, r0, 0x17, 0x18, 0x1f
/* 80D57C30  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D57C34  41 82 00 18 */	beq lbl_80D57C4C
/* 80D57C38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57C3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57C40  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57C44  7C 05 07 74 */	extsb r5, r0
/* 80D57C48  4B 2D D5 B9 */	bl onSwitch__10dSv_info_cFii
lbl_80D57C4C:
/* 80D57C4C  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 80D57C50  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 80D57C54  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D57C58  4B 51 05 7D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D57C5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D57C60  40 82 00 28 */	bne lbl_80D57C88
/* 80D57C64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57C68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57C6C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D57C70  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80D57C74  7F E5 FB 78 */	mr r5, r31
/* 80D57C78  4B 31 CD 91 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D57C7C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80D57C80  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80D57C84  48 00 00 34 */	b lbl_80D57CB8
lbl_80D57C88:
/* 80D57C88  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 80D57C8C  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80D57C90  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D57C94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D57C98  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D57C9C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80D57CA0  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80D57CA4  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80D57CA8  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80D57CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D57CB0  40 81 00 08 */	ble lbl_80D57CB8
/* 80D57CB4  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
lbl_80D57CB8:
/* 80D57CB8  38 7F 07 8C */	addi r3, r31, 0x78c
/* 80D57CBC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D57CC0  4B 51 75 1D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D57CC4  38 7F 07 8C */	addi r3, r31, 0x78c
/* 80D57CC8  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 80D57CCC  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 80D57CD0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D57CD4  4B 51 75 2D */	bl SetR__8cM3dGCylFf
/* 80D57CD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57CDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57CE0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D57CE4  38 9F 06 68 */	addi r4, r31, 0x668
/* 80D57CE8  4B 50 CE C1 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D57CEC  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80D57CF0  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D57CF4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D57CF8  40 82 00 CC */	bne lbl_80D57DC4
/* 80D57CFC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D57D00  4B 51 04 D5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D57D04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D57D08  41 82 00 20 */	beq lbl_80D57D28
/* 80D57D0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57D10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57D14  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D57D18  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80D57D1C  4B 31 C5 35 */	bl Release__4cBgSFP9dBgW_Base
/* 80D57D20  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80D57D24  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
lbl_80D57D28:
/* 80D57D28  28 1B 00 00 */	cmplwi r27, 0
/* 80D57D2C  41 82 00 28 */	beq lbl_80D57D54
/* 80D57D30  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80D57D34  D0 1E 0B 14 */	stfs f0, 0xb14(r30)
/* 80D57D38  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80D57D3C  D0 1E 0B 18 */	stfs f0, 0xb18(r30)
/* 80D57D40  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80D57D44  D0 1E 0B 1C */	stfs f0, 0xb1c(r30)
/* 80D57D48  38 00 00 01 */	li r0, 1
/* 80D57D4C  98 1E 0A E1 */	stb r0, 0xae1(r30)
/* 80D57D50  48 00 00 18 */	b lbl_80D57D68
lbl_80D57D54:
/* 80D57D54  80 1E 0A EC */	lwz r0, 0xaec(r30)
/* 80D57D58  60 00 00 01 */	ori r0, r0, 1
/* 80D57D5C  90 1E 0A EC */	stw r0, 0xaec(r30)
/* 80D57D60  38 00 00 01 */	li r0, 1
/* 80D57D64  98 1E 0A E1 */	stb r0, 0xae1(r30)
lbl_80D57D68:
/* 80D57D68  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57D6C  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D57D70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57D74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57D78  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57D7C  7C 05 07 74 */	extsb r5, r0
/* 80D57D80  4B 2D D4 81 */	bl onSwitch__10dSv_info_cFii
/* 80D57D84  48 00 00 40 */	b lbl_80D57DC4
lbl_80D57D88:
/* 80D57D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57D8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57D90  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57D94  7C 05 07 74 */	extsb r5, r0
/* 80D57D98  4B 2D D4 69 */	bl onSwitch__10dSv_info_cFii
/* 80D57D9C  38 00 00 3C */	li r0, 0x3c
/* 80D57DA0  B0 1F 08 E2 */	sth r0, 0x8e2(r31)
/* 80D57DA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D57DA8  D0 1E 0B 14 */	stfs f0, 0xb14(r30)
/* 80D57DAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D57DB0  D0 1E 0B 18 */	stfs f0, 0xb18(r30)
/* 80D57DB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D57DB8  D0 1E 0B 1C */	stfs f0, 0xb1c(r30)
/* 80D57DBC  38 00 00 03 */	li r0, 3
/* 80D57DC0  98 1E 0A E1 */	stb r0, 0xae1(r30)
lbl_80D57DC4:
/* 80D57DC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57DC8  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D57DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57DD4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57DD8  7C 05 07 74 */	extsb r5, r0
/* 80D57DDC  4B 2D D5 85 */	bl isSwitch__10dSv_info_cCFii
/* 80D57DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80D57DE4  41 82 00 10 */	beq lbl_80D57DF4
/* 80D57DE8  7F E3 FB 78 */	mr r3, r31
/* 80D57DEC  4B FF FB BD */	bl offLight__10daTagCsw_cFv
/* 80D57DF0  48 00 00 64 */	b lbl_80D57E54
lbl_80D57DF4:
/* 80D57DF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57DF8  54 00 FE 3F */	rlwinm. r0, r0, 0x1f, 0x18, 0x1f
/* 80D57DFC  40 82 00 24 */	bne lbl_80D57E20
/* 80D57E00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57E04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57E08  38 80 00 0B */	li r4, 0xb
/* 80D57E0C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57E10  7C 05 07 74 */	extsb r5, r0
/* 80D57E14  4B 2D D5 4D */	bl isSwitch__10dSv_info_cCFii
/* 80D57E18  2C 03 00 00 */	cmpwi r3, 0
/* 80D57E1C  40 82 00 30 */	bne lbl_80D57E4C
lbl_80D57E20:
/* 80D57E20  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57E24  54 04 FE 3F */	rlwinm. r4, r0, 0x1f, 0x18, 0x1f
/* 80D57E28  41 82 00 2C */	beq lbl_80D57E54
/* 80D57E2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57E30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57E34  38 84 FF FF */	addi r4, r4, -1
/* 80D57E38  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57E3C  7C 05 07 74 */	extsb r5, r0
/* 80D57E40  4B 2D D5 21 */	bl isSwitch__10dSv_info_cCFii
/* 80D57E44  2C 03 00 00 */	cmpwi r3, 0
/* 80D57E48  41 82 00 0C */	beq lbl_80D57E54
lbl_80D57E4C:
/* 80D57E4C  7F E3 FB 78 */	mr r3, r31
/* 80D57E50  4B FF FB 19 */	bl onLight__10daTagCsw_cFv
lbl_80D57E54:
/* 80D57E54  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80D57E58  2C 00 00 00 */	cmpwi r0, 0
/* 80D57E5C  40 82 00 84 */	bne lbl_80D57EE0
/* 80D57E60  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57E64  54 00 FE 3E */	rlwinm r0, r0, 0x1f, 0x18, 0x1f
/* 80D57E68  2C 00 00 06 */	cmpwi r0, 6
/* 80D57E6C  40 82 00 74 */	bne lbl_80D57EE0
/* 80D57E70  A8 9F 08 E2 */	lha r4, 0x8e2(r31)
/* 80D57E74  7C 80 07 35 */	extsh. r0, r4
/* 80D57E78  41 82 00 68 */	beq lbl_80D57EE0
/* 80D57E7C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80D57E80  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D57E84  7C 03 00 50 */	subf r0, r3, r0
/* 80D57E88  7C 00 07 34 */	extsh r0, r0
/* 80D57E8C  7C 00 23 D6 */	divw r0, r0, r4
/* 80D57E90  7C 00 07 34 */	extsh r0, r0
/* 80D57E94  2C 00 08 00 */	cmpwi r0, 0x800
/* 80D57E98  40 81 00 10 */	ble lbl_80D57EA8
/* 80D57E9C  38 03 08 00 */	addi r0, r3, 0x800
/* 80D57EA0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D57EA4  48 00 00 20 */	b lbl_80D57EC4
lbl_80D57EA8:
/* 80D57EA8  2C 00 F8 00 */	cmpwi r0, -2048
/* 80D57EAC  40 80 00 10 */	bge lbl_80D57EBC
/* 80D57EB0  38 03 F8 00 */	addi r0, r3, -2048
/* 80D57EB4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D57EB8  48 00 00 0C */	b lbl_80D57EC4
lbl_80D57EBC:
/* 80D57EBC  7C 03 02 14 */	add r0, r3, r0
/* 80D57EC0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80D57EC4:
/* 80D57EC4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D57EC8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D57ECC  7F E3 FB 78 */	mr r3, r31
/* 80D57ED0  4B FF FA 99 */	bl onLight__10daTagCsw_cFv
/* 80D57ED4  A8 7F 08 E2 */	lha r3, 0x8e2(r31)
/* 80D57ED8  38 03 FF FF */	addi r0, r3, -1
/* 80D57EDC  B0 1F 08 E2 */	sth r0, 0x8e2(r31)
lbl_80D57EE0:
/* 80D57EE0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80D57EE4  40 82 00 D4 */	bne lbl_80D57FB8
/* 80D57EE8  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80D57EEC  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D57EF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D57EF4  40 82 00 C4 */	bne lbl_80D57FB8
/* 80D57EF8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57EFC  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D57F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57F08  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57F0C  7C 05 07 74 */	extsb r5, r0
/* 80D57F10  4B 2D D4 51 */	bl isSwitch__10dSv_info_cCFii
/* 80D57F14  2C 03 00 00 */	cmpwi r3, 0
/* 80D57F18  41 82 00 A0 */	beq lbl_80D57FB8
/* 80D57F1C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80D57F20  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 80D57F24  48 00 00 94 */	b lbl_80D57FB8
lbl_80D57F28:
/* 80D57F28  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80D57F2C  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80D57F30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D57F34  40 82 00 6C */	bne lbl_80D57FA0
/* 80D57F38  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D57F3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D57F40  40 82 00 60 */	bne lbl_80D57FA0
/* 80D57F44  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57F48  54 04 FE 3E */	rlwinm r4, r0, 0x1f, 0x18, 0x1f
/* 80D57F4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57F50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57F54  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57F58  7C 05 07 74 */	extsb r5, r0
/* 80D57F5C  4B 2D D4 05 */	bl isSwitch__10dSv_info_cCFii
/* 80D57F60  2C 03 00 00 */	cmpwi r3, 0
/* 80D57F64  41 82 00 3C */	beq lbl_80D57FA0
/* 80D57F68  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57F6C  54 04 BE 3E */	rlwinm r4, r0, 0x17, 0x18, 0x1f
/* 80D57F70  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D57F74  41 82 00 18 */	beq lbl_80D57F8C
/* 80D57F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57F80  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D57F84  7C 05 07 74 */	extsb r5, r0
/* 80D57F88  4B 2D D2 79 */	bl onSwitch__10dSv_info_cFii
lbl_80D57F8C:
/* 80D57F8C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80D57F90  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 80D57F94  7F E3 FB 78 */	mr r3, r31
/* 80D57F98  4B FF F9 D1 */	bl onLight__10daTagCsw_cFv
/* 80D57F9C  48 00 00 1C */	b lbl_80D57FB8
lbl_80D57FA0:
/* 80D57FA0  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 80D57FA4  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D57FA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D57FAC  40 82 00 0C */	bne lbl_80D57FB8
/* 80D57FB0  7F E3 FB 78 */	mr r3, r31
/* 80D57FB4  4B FF F9 F5 */	bl offLight__10daTagCsw_cFv
lbl_80D57FB8:
/* 80D57FB8  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 80D57FBC  C0 7F 06 28 */	lfs f3, 0x628(r31)
/* 80D57FC0  FC 02 18 00 */	fcmpu cr0, f2, f3
/* 80D57FC4  41 82 01 B8 */	beq lbl_80D5817C
/* 80D57FC8  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80D57FCC  40 81 00 AC */	ble lbl_80D58078
/* 80D57FD0  C0 3F 06 24 */	lfs f1, 0x624(r31)
/* 80D57FD4  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80D57FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D57FDC  40 80 00 18 */	bge lbl_80D57FF4
/* 80D57FE0  EC 01 18 2A */	fadds f0, f1, f3
/* 80D57FE4  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 80D57FE8  38 00 00 01 */	li r0, 1
/* 80D57FEC  98 1F 08 E1 */	stb r0, 0x8e1(r31)
/* 80D57FF0  48 00 01 28 */	b lbl_80D58118
lbl_80D57FF4:
/* 80D57FF4  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 80D57FF8  D0 5F 06 28 */	stfs f2, 0x628(r31)
/* 80D57FFC  88 1F 08 E1 */	lbz r0, 0x8e1(r31)
/* 80D58000  28 00 00 00 */	cmplwi r0, 0
/* 80D58004  41 82 01 14 */	beq lbl_80D58118
/* 80D58008  38 00 00 00 */	li r0, 0
/* 80D5800C  98 1F 08 E1 */	stb r0, 0x8e1(r31)
/* 80D58010  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D58014  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80D58018  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D5801C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80D58020  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D58024  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D58028  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D5802C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D58030  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D58034  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F8@ha */
/* 80D58038  38 03 01 F8 */	addi r0, r3, 0x01F8 /* 0x000801F8@l */
/* 80D5803C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D58040  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D58044  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D58048  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5804C  38 81 00 18 */	addi r4, r1, 0x18
/* 80D58050  38 A1 00 64 */	addi r5, r1, 0x64
/* 80D58054  38 C0 00 00 */	li r6, 0
/* 80D58058  38 E0 00 00 */	li r7, 0
/* 80D5805C  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80D58060  FC 40 08 90 */	fmr f2, f1
/* 80D58064  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 80D58068  FC 80 18 90 */	fmr f4, f3
/* 80D5806C  39 00 00 00 */	li r8, 0
/* 80D58070  4B 55 39 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D58074  48 00 00 A4 */	b lbl_80D58118
lbl_80D58078:
/* 80D58078  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D5807C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D58080  40 81 00 18 */	ble lbl_80D58098
/* 80D58084  EC 00 18 2A */	fadds f0, f0, f3
/* 80D58088  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 80D5808C  38 00 00 01 */	li r0, 1
/* 80D58090  98 1F 08 E1 */	stb r0, 0x8e1(r31)
/* 80D58094  48 00 00 84 */	b lbl_80D58118
lbl_80D58098:
/* 80D58098  D0 5F 06 24 */	stfs f2, 0x624(r31)
/* 80D5809C  D0 5F 06 28 */	stfs f2, 0x628(r31)
/* 80D580A0  88 1F 08 E1 */	lbz r0, 0x8e1(r31)
/* 80D580A4  28 00 00 00 */	cmplwi r0, 0
/* 80D580A8  41 82 00 70 */	beq lbl_80D58118
/* 80D580AC  38 00 00 00 */	li r0, 0
/* 80D580B0  98 1F 08 E1 */	stb r0, 0x8e1(r31)
/* 80D580B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D580B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80D580BC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D580C0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80D580C4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D580C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D580CC  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D580D0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D580D4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D580D8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F7@ha */
/* 80D580DC  38 03 01 F7 */	addi r0, r3, 0x01F7 /* 0x000801F7@l */
/* 80D580E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D580E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D580E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D580EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D580F0  38 81 00 14 */	addi r4, r1, 0x14
/* 80D580F4  38 A1 00 58 */	addi r5, r1, 0x58
/* 80D580F8  38 C0 00 00 */	li r6, 0
/* 80D580FC  38 E0 00 00 */	li r7, 0
/* 80D58100  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80D58104  FC 40 08 90 */	fmr f2, f1
/* 80D58108  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 80D5810C  FC 80 18 90 */	fmr f4, f3
/* 80D58110  39 00 00 00 */	li r8, 0
/* 80D58114  4B 55 38 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D58118:
/* 80D58118  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D5811C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80D58120  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D58124  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80D58128  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D5812C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80D58130  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D58134  EC 01 00 2A */	fadds f0, f1, f0
/* 80D58138  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80D5813C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F9@ha */
/* 80D58140  38 03 01 F9 */	addi r0, r3, 0x01F9 /* 0x000801F9@l */
/* 80D58144  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D58148  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D5814C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D58150  80 63 00 00 */	lwz r3, 0(r3)
/* 80D58154  38 81 00 10 */	addi r4, r1, 0x10
/* 80D58158  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80D5815C  38 C0 00 00 */	li r6, 0
/* 80D58160  38 E0 00 00 */	li r7, 0
/* 80D58164  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80D58168  FC 40 08 90 */	fmr f2, f1
/* 80D5816C  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 80D58170  FC 80 18 90 */	fmr f4, f3
/* 80D58174  39 00 00 00 */	li r8, 0
/* 80D58178  4B 55 43 95 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D5817C:
/* 80D5817C  C0 5F 06 24 */	lfs f2, 0x624(r31)
/* 80D58180  FC 00 12 10 */	fabs f0, f2
/* 80D58184  FC 20 00 18 */	frsp f1, f0
/* 80D58188  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80D5818C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80D58190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D58194  41 80 01 74 */	blt lbl_80D58308
/* 80D58198  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D5819C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D581A0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D581A4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80D581A8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D581AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80D581B0  EC 01 10 2A */	fadds f0, f1, f2
/* 80D581B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D581B8  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 80D581BC  4B 32 C2 A5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80D581C0  28 03 00 00 */	cmplwi r3, 0
/* 80D581C4  41 82 01 24 */	beq lbl_80D582E8
/* 80D581C8  88 1F 08 F4 */	lbz r0, 0x8f4(r31)
/* 80D581CC  28 00 00 00 */	cmplwi r0, 0
/* 80D581D0  40 82 00 64 */	bne lbl_80D58234
/* 80D581D4  80 1F 08 E4 */	lwz r0, 0x8e4(r31)
/* 80D581D8  2C 00 00 FF */	cmpwi r0, 0xff
/* 80D581DC  41 82 00 58 */	beq lbl_80D58234
/* 80D581E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D581E4  54 04 7E 3E */	rlwinm r4, r0, 0xf, 0x18, 0x1f
/* 80D581E8  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D581EC  41 82 00 48 */	beq lbl_80D58234
/* 80D581F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D581F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D581F8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D581FC  7C 05 07 74 */	extsb r5, r0
/* 80D58200  4B 2D D3 91 */	bl isItem__10dSv_info_cCFii
/* 80D58204  2C 03 00 00 */	cmpwi r3, 0
/* 80D58208  40 82 00 2C */	bne lbl_80D58234
/* 80D5820C  38 61 00 40 */	addi r3, r1, 0x40
/* 80D58210  80 9F 08 E4 */	lwz r4, 0x8e4(r31)
/* 80D58214  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D58218  54 05 7E 3E */	rlwinm r5, r0, 0xf, 0x18, 0x1f
/* 80D5821C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D58220  7C 06 07 74 */	extsb r6, r0
/* 80D58224  38 E0 00 00 */	li r7, 0
/* 80D58228  39 00 00 00 */	li r8, 0
/* 80D5822C  39 20 00 00 */	li r9, 0
/* 80D58230  4B 2C 40 11 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_80D58234:
/* 80D58234  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C0@ha */
/* 80D58238  38 03 02 C0 */	addi r0, r3, 0x02C0 /* 0x000802C0@l */
/* 80D5823C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D58240  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D58244  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D58248  80 63 00 00 */	lwz r3, 0(r3)
/* 80D5824C  38 81 00 0C */	addi r4, r1, 0xc
/* 80D58250  38 A1 00 40 */	addi r5, r1, 0x40
/* 80D58254  38 C0 00 00 */	li r6, 0
/* 80D58258  38 E0 00 00 */	li r7, 0
/* 80D5825C  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80D58260  FC 40 08 90 */	fmr f2, f1
/* 80D58264  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 80D58268  FC 80 18 90 */	fmr f4, f3
/* 80D5826C  39 00 00 00 */	li r8, 0
/* 80D58270  4B 55 37 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D58274  38 00 00 01 */	li r0, 1
/* 80D58278  98 1F 08 F4 */	stb r0, 0x8f4(r31)
/* 80D5827C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D58280  C0 1F 08 78 */	lfs f0, 0x878(r31)
/* 80D58284  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D58288  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 80D5828C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80D58290  C0 1F 08 80 */	lfs f0, 0x880(r31)
/* 80D58294  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D58298  D0 1F 08 F0 */	stfs f0, 0x8f0(r31)
/* 80D5829C  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 80D582A0  4B 5E EE 99 */	bl PSVECSquareMag
/* 80D582A4  FC 00 0A 10 */	fabs f0, f1
/* 80D582A8  FC 20 00 18 */	frsp f1, f0
/* 80D582AC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80D582B0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80D582B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D582B8  41 80 00 24 */	blt lbl_80D582DC
/* 80D582BC  38 61 00 34 */	addi r3, r1, 0x34
/* 80D582C0  38 9F 08 E8 */	addi r4, r31, 0x8e8
/* 80D582C4  4B 50 EC 31 */	bl normalize__4cXyzFv
/* 80D582C8  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 80D582CC  7C 64 1B 78 */	mr r4, r3
/* 80D582D0  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 80D582D4  4B 5E EE 05 */	bl PSVECScale
/* 80D582D8  48 00 00 10 */	b lbl_80D582E8
lbl_80D582DC:
/* 80D582DC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80D582E0  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 80D582E4  D0 1F 08 F0 */	stfs f0, 0x8f0(r31)
lbl_80D582E8:
/* 80D582E8  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80D582EC  38 81 00 40 */	addi r4, r1, 0x40
/* 80D582F0  4B 51 6E ED */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D582F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D582F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D582FC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D58300  38 9F 07 A4 */	addi r4, r31, 0x7a4
/* 80D58304  4B 50 C8 A5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80D58308:
/* 80D58308  38 7F 08 E8 */	addi r3, r31, 0x8e8
/* 80D5830C  4B 5E EE 2D */	bl PSVECSquareMag
/* 80D58310  FC 00 0A 10 */	fabs f0, f1
/* 80D58314  FC 20 00 18 */	frsp f1, f0
/* 80D58318  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80D5831C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80D58320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D58324  41 80 00 24 */	blt lbl_80D58348
/* 80D58328  C0 1F 08 E8 */	lfs f0, 0x8e8(r31)
/* 80D5832C  C0 3D 00 64 */	lfs f1, 0x64(r29)
/* 80D58330  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D58334  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 80D58338  C0 1F 08 F0 */	lfs f0, 0x8f0(r31)
/* 80D5833C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D58340  D0 1F 08 F0 */	stfs f0, 0x8f0(r31)
/* 80D58344  48 00 00 10 */	b lbl_80D58354
lbl_80D58348:
/* 80D58348  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80D5834C  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 80D58350  D0 1F 08 F0 */	stfs f0, 0x8f0(r31)
lbl_80D58354:
/* 80D58354  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D58358  4B 2B 50 D1 */	bl play__14mDoExt_baseAnmFv
/* 80D5835C  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80D58360  28 03 00 00 */	cmplwi r3, 0
/* 80D58364  41 82 00 08 */	beq lbl_80D5836C
/* 80D58368  4B 2B 50 C1 */	bl play__14mDoExt_baseAnmFv
lbl_80D5836C:
/* 80D5836C  7F E3 FB 78 */	mr r3, r31
/* 80D58370  4B FF EA 29 */	bl setMtx__10daTagCsw_cFv
/* 80D58374  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80D58378  4B 32 36 49 */	bl Move__4dBgWFv
/* 80D5837C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D58380  4B 32 36 41 */	bl Move__4dBgWFv
/* 80D58384  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80D58388  28 03 00 00 */	cmplwi r3, 0
/* 80D5838C  41 82 00 08 */	beq lbl_80D58394
/* 80D58390  4B 32 36 31 */	bl Move__4dBgWFv
lbl_80D58394:
/* 80D58394  38 7F 06 48 */	addi r3, r31, 0x648
/* 80D58398  4B 32 B4 99 */	bl Move__10dCcD_GSttsFv
/* 80D5839C  38 60 00 01 */	li r3, 1
/* 80D583A0  39 61 00 90 */	addi r11, r1, 0x90
/* 80D583A4  4B 60 9E 7D */	bl _restgpr_27
/* 80D583A8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80D583AC  7C 08 03 A6 */	mtlr r0
/* 80D583B0  38 21 00 90 */	addi r1, r1, 0x90
/* 80D583B4  4E 80 00 20 */	blr 
