lbl_80D1B174:
/* 80D1B174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1B178  7C 08 02 A6 */	mflr r0
/* 80D1B17C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1B180  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1B184  4B 64 70 55 */	bl _savegpr_28
/* 80D1B188  7C 7D 1B 78 */	mr r29, r3
/* 80D1B18C  3C 80 80 D2 */	lis r4, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D1B190  3B E4 B6 D8 */	addi r31, r4, lit_3775@l /* 0x80D1B6D8@l */
/* 80D1B194  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D1B198  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D1B19C  40 82 00 F4 */	bne lbl_80D1B290
/* 80D1B1A0  7F A0 EB 79 */	or. r0, r29, r29
/* 80D1B1A4  41 82 00 E0 */	beq lbl_80D1B284
/* 80D1B1A8  7C 1E 03 78 */	mr r30, r0
/* 80D1B1AC  4B 44 2E 65 */	bl __ct__9dInsect_cFv
/* 80D1B1B0  3C 60 80 D2 */	lis r3, __vt__12daObjTOMBO_c@ha /* 0x80D1B890@ha */
/* 80D1B1B4  38 03 B8 90 */	addi r0, r3, __vt__12daObjTOMBO_c@l /* 0x80D1B890@l */
/* 80D1B1B8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D1B1BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D1B1C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D1B1C4  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80D1B1C8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80D1B1CC  4B 36 85 95 */	bl __ct__10dCcD_GSttsFv
/* 80D1B1D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D1B1D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D1B1D8  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80D1B1DC  38 03 00 20 */	addi r0, r3, 0x20
/* 80D1B1E0  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 80D1B1E4  3B 9E 05 CC */	addi r28, r30, 0x5cc
/* 80D1B1E8  7F 83 E3 78 */	mr r3, r28
/* 80D1B1EC  4B 36 88 3D */	bl __ct__12dCcD_GObjInfFv
/* 80D1B1F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D1B1F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D1B1F8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D1B1FC  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D1B878@ha */
/* 80D1B200  38 03 B8 78 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D1B878@l */
/* 80D1B204  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80D1B208  3C 60 80 D2 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D1B86C@ha */
/* 80D1B20C  38 03 B8 6C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D1B86C@l */
/* 80D1B210  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80D1B214  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D1B218  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D1B21C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80D1B220  38 03 00 58 */	addi r0, r3, 0x58
/* 80D1B224  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80D1B228  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D1B22C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D1B230  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80D1B234  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D1B238  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D1B23C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D1B240  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80D1B244  38 7E 07 60 */	addi r3, r30, 0x760
/* 80D1B248  4B 5A 51 81 */	bl __ct__10Z2CreatureFv
/* 80D1B24C  38 7E 07 F0 */	addi r3, r30, 0x7f0
/* 80D1B250  4B 35 AC 5D */	bl __ct__12dBgS_AcchCirFv
/* 80D1B254  3B 9E 08 34 */	addi r28, r30, 0x834
/* 80D1B258  7F 83 E3 78 */	mr r3, r28
/* 80D1B25C  4B 35 AE 45 */	bl __ct__9dBgS_AcchFv
/* 80D1B260  3C 60 80 D2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D1B848@ha */
/* 80D1B264  38 63 B8 48 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D1B848@l */
/* 80D1B268  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80D1B26C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D1B270  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80D1B274  38 03 00 18 */	addi r0, r3, 0x18
/* 80D1B278  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80D1B27C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80D1B280  4B 35 DB E9 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80D1B284:
/* 80D1B284  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D1B288  60 00 00 08 */	ori r0, r0, 8
/* 80D1B28C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D1B290:
/* 80D1B290  38 7D 0A 0C */	addi r3, r29, 0xa0c
/* 80D1B294  3C 80 80 D2 */	lis r4, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D1B298  38 84 B7 E8 */	addi r4, r4, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D1B29C  4B 31 1C 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D1B2A0  7C 7E 1B 78 */	mr r30, r3
/* 80D1B2A4  2C 1E 00 04 */	cmpwi r30, 4
/* 80D1B2A8  40 82 02 4C */	bne lbl_80D1B4F4
/* 80D1B2AC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D1B2B0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D1B2B4  98 1D 07 5C */	stb r0, 0x75c(r29)
/* 80D1B2B8  88 1D 07 5C */	lbz r0, 0x75c(r29)
/* 80D1B2BC  28 00 00 02 */	cmplwi r0, 2
/* 80D1B2C0  40 82 00 28 */	bne lbl_80D1B2E8
/* 80D1B2C4  38 00 00 00 */	li r0, 0
/* 80D1B2C8  98 1D 05 6C */	stb r0, 0x56c(r29)
/* 80D1B2CC  A8 7D 04 E4 */	lha r3, 0x4e4(r29)
/* 80D1B2D0  38 03 E0 00 */	addi r0, r3, -8192
/* 80D1B2D4  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80D1B2D8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80D1B2DC  60 00 40 00 */	ori r0, r0, 0x4000
/* 80D1B2E0  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80D1B2E4  48 00 00 0C */	b lbl_80D1B2F0
lbl_80D1B2E8:
/* 80D1B2E8  38 00 00 01 */	li r0, 1
/* 80D1B2EC  98 1D 05 6D */	stb r0, 0x56d(r29)
lbl_80D1B2F0:
/* 80D1B2F0  38 00 00 5D */	li r0, 0x5d
/* 80D1B2F4  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80D1B2F8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D1B2FC  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80D1B300  98 1D 05 81 */	stb r0, 0x581(r29)
/* 80D1B304  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80D1B308  38 7F 00 08 */	addi r3, r31, 8
/* 80D1B30C  7C 03 00 AE */	lbzx r0, r3, r0
/* 80D1B310  98 1D 05 80 */	stb r0, 0x580(r29)
/* 80D1B314  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80D1B318  54 00 08 3C */	slwi r0, r0, 1
/* 80D1B31C  38 7F 01 08 */	addi r3, r31, 0x108
/* 80D1B320  7C 03 02 2E */	lhzx r0, r3, r0
/* 80D1B324  B0 1D 05 82 */	sth r0, 0x582(r29)
/* 80D1B328  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80D1B32C  28 00 00 01 */	cmplwi r0, 1
/* 80D1B330  40 82 00 20 */	bne lbl_80D1B350
/* 80D1B334  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D1B900@ha */
/* 80D1B338  38 63 B9 00 */	addi r3, r3, l_HIO@l /* 0x80D1B900@l */
/* 80D1B33C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D1B340  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80D1B344  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80D1B348  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80D1B34C  48 00 00 24 */	b lbl_80D1B370
lbl_80D1B350:
/* 80D1B350  28 00 00 00 */	cmplwi r0, 0
/* 80D1B354  40 82 00 1C */	bne lbl_80D1B370
/* 80D1B358  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D1B900@ha */
/* 80D1B35C  38 63 B9 00 */	addi r3, r3, l_HIO@l /* 0x80D1B900@l */
/* 80D1B360  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D1B364  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80D1B368  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80D1B36C  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
lbl_80D1B370:
/* 80D1B370  7F A3 EB 78 */	mr r3, r29
/* 80D1B374  4B FF FC 55 */	bl CreateChk__12daObjTOMBO_cFv
/* 80D1B378  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1B37C  40 82 00 0C */	bne lbl_80D1B388
/* 80D1B380  38 60 00 05 */	li r3, 5
/* 80D1B384  48 00 01 74 */	b lbl_80D1B4F8
lbl_80D1B388:
/* 80D1B388  7F A3 EB 78 */	mr r3, r29
/* 80D1B38C  3C 80 80 D2 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80D192C4@ha */
/* 80D1B390  38 84 92 C4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80D192C4@l */
/* 80D1B394  38 A0 0A A0 */	li r5, 0xaa0
/* 80D1B398  4B 2F F1 19 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D1B39C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1B3A0  40 82 00 0C */	bne lbl_80D1B3AC
/* 80D1B3A4  38 60 00 05 */	li r3, 5
/* 80D1B3A8  48 00 01 50 */	b lbl_80D1B4F8
lbl_80D1B3AC:
/* 80D1B3AC  3C 60 80 D2 */	lis r3, data_80D1B8F0@ha /* 0x80D1B8F0@ha */
/* 80D1B3B0  8C 03 B8 F0 */	lbzu r0, data_80D1B8F0@l(r3)  /* 0x80D1B8F0@l */
/* 80D1B3B4  28 00 00 00 */	cmplwi r0, 0
/* 80D1B3B8  40 82 00 20 */	bne lbl_80D1B3D8
/* 80D1B3BC  38 00 00 01 */	li r0, 1
/* 80D1B3C0  98 03 00 00 */	stb r0, 0(r3)
/* 80D1B3C4  98 1D 0A 14 */	stb r0, 0xa14(r29)
/* 80D1B3C8  38 00 FF FF */	li r0, -1
/* 80D1B3CC  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D1B900@ha */
/* 80D1B3D0  38 63 B9 00 */	addi r3, r3, l_HIO@l /* 0x80D1B900@l */
/* 80D1B3D4  98 03 00 04 */	stb r0, 4(r3)
lbl_80D1B3D8:
/* 80D1B3D8  38 7D 07 F0 */	addi r3, r29, 0x7f0
/* 80D1B3DC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80D1B3E0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80D1B3E4  4B 35 AB 75 */	bl SetWall__12dBgS_AcchCirFff
/* 80D1B3E8  38 00 00 00 */	li r0, 0
/* 80D1B3EC  90 01 00 08 */	stw r0, 8(r1)
/* 80D1B3F0  38 7D 08 34 */	addi r3, r29, 0x834
/* 80D1B3F4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D1B3F8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D1B3FC  7F A6 EB 78 */	mr r6, r29
/* 80D1B400  38 E0 00 01 */	li r7, 1
/* 80D1B404  39 1D 07 F0 */	addi r8, r29, 0x7f0
/* 80D1B408  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D1B40C  39 40 00 00 */	li r10, 0
/* 80D1B410  4B 35 AE 39 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D1B414  80 1D 08 60 */	lwz r0, 0x860(r29)
/* 80D1B418  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80D1B41C  90 1D 08 60 */	stw r0, 0x860(r29)
/* 80D1B420  88 1D 07 5C */	lbz r0, 0x75c(r29)
/* 80D1B424  28 00 00 00 */	cmplwi r0, 0
/* 80D1B428  40 82 00 14 */	bne lbl_80D1B43C
/* 80D1B42C  38 00 00 00 */	li r0, 0
/* 80D1B430  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80D1B434  7F A3 EB 78 */	mr r3, r29
/* 80D1B438  4B FF DD C9 */	bl InitCcSph__12daObjTOMBO_cFv
lbl_80D1B43C:
/* 80D1B43C  88 1D 07 5C */	lbz r0, 0x75c(r29)
/* 80D1B440  28 00 00 02 */	cmplwi r0, 2
/* 80D1B444  40 82 00 44 */	bne lbl_80D1B488
/* 80D1B448  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D1B44C  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D1B450  38 63 00 06 */	addi r3, r3, 6
/* 80D1B454  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1B458  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1B45C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80D1B460  4B 64 D5 35 */	bl strcmp
/* 80D1B464  2C 03 00 00 */	cmpwi r3, 0
/* 80D1B468  40 82 00 20 */	bne lbl_80D1B488
/* 80D1B46C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1B470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1B474  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80D1B478  2C 00 00 03 */	cmpwi r0, 3
/* 80D1B47C  40 82 00 0C */	bne lbl_80D1B488
/* 80D1B480  38 00 00 03 */	li r0, 3
/* 80D1B484  98 1D 07 5C */	stb r0, 0x75c(r29)
lbl_80D1B488:
/* 80D1B488  38 00 00 00 */	li r0, 0
/* 80D1B48C  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80D1B490  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80D1B494  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D1B498  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80D1B49C  80 7D 08 30 */	lwz r3, 0x830(r29)
/* 80D1B4A0  80 63 00 04 */	lwz r3, 4(r3)
/* 80D1B4A4  38 03 00 24 */	addi r0, r3, 0x24
/* 80D1B4A8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D1B4AC  7F A3 EB 78 */	mr r3, r29
/* 80D1B4B0  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80D1B4B4  FC 40 08 90 */	fmr f2, f1
/* 80D1B4B8  FC 60 08 90 */	fmr f3, f1
/* 80D1B4BC  4B 2F F0 6D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D1B4C0  7F A3 EB 78 */	mr r3, r29
/* 80D1B4C4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80D1B4C8  FC 40 08 90 */	fmr f2, f1
/* 80D1B4CC  FC 60 08 90 */	fmr f3, f1
/* 80D1B4D0  4B 2F F0 69 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D1B4D4  38 7D 07 60 */	addi r3, r29, 0x760
/* 80D1B4D8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D1B4DC  38 BD 05 38 */	addi r5, r29, 0x538
/* 80D1B4E0  38 C0 00 03 */	li r6, 3
/* 80D1B4E4  38 E0 00 01 */	li r7, 1
/* 80D1B4E8  4B 5A 50 49 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80D1B4EC  7F A3 EB 78 */	mr r3, r29
/* 80D1B4F0  4B FF FA B9 */	bl daObjTOMBO_Execute__FP12daObjTOMBO_c
lbl_80D1B4F4:
/* 80D1B4F4  7F C3 F3 78 */	mr r3, r30
lbl_80D1B4F8:
/* 80D1B4F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1B4FC  4B 64 6D 29 */	bl _restgpr_28
/* 80D1B500  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1B504  7C 08 03 A6 */	mtlr r0
/* 80D1B508  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1B50C  4E 80 00 20 */	blr 
