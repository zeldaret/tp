lbl_80B9CED8:
/* 80B9CED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9CEDC  7C 08 02 A6 */	mflr r0
/* 80B9CEE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9CEE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9CEE8  4B 7C 52 F1 */	bl _savegpr_28
/* 80B9CEEC  7C 7F 1B 78 */	mr r31, r3
/* 80B9CEF0  3C 80 80 BA */	lis r4, lit_3661@ha /* 0x80B9E8F4@ha */
/* 80B9CEF4  3B C4 E8 F4 */	addi r30, r4, lit_3661@l /* 0x80B9E8F4@l */
/* 80B9CEF8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B9CEFC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B9CF00  40 82 01 0C */	bne lbl_80B9D00C
/* 80B9CF04  7F E0 FB 79 */	or. r0, r31, r31
/* 80B9CF08  41 82 00 F8 */	beq lbl_80B9D000
/* 80B9CF0C  7C 1C 03 78 */	mr r28, r0
/* 80B9CF10  4B 4D B7 15 */	bl __ct__16dBgS_MoveBgActorFv
/* 80B9CF14  3C 60 80 BA */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80B9EB08@ha */
/* 80B9CF18  38 03 EB 08 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80B9EB08@l */
/* 80B9CF1C  90 1C 05 A8 */	stw r0, 0x5a8(r28)
/* 80B9CF20  93 9C 05 AC */	stw r28, 0x5ac(r28)
/* 80B9CF24  38 00 00 00 */	li r0, 0
/* 80B9CF28  90 1C 05 B0 */	stw r0, 0x5b0(r28)
/* 80B9CF2C  3C 60 80 BA */	lis r3, __vt__10daTurara_c@ha /* 0x80B9EB20@ha */
/* 80B9CF30  38 63 EB 20 */	addi r3, r3, __vt__10daTurara_c@l /* 0x80B9EB20@l */
/* 80B9CF34  90 7C 05 9C */	stw r3, 0x59c(r28)
/* 80B9CF38  38 03 00 28 */	addi r0, r3, 0x28
/* 80B9CF3C  90 1C 05 A8 */	stw r0, 0x5a8(r28)
/* 80B9CF40  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B9CF44  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B9CF48  90 1C 05 E4 */	stw r0, 0x5e4(r28)
/* 80B9CF4C  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80B9CF50  4B 4E 68 11 */	bl __ct__10dCcD_GSttsFv
/* 80B9CF54  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B9CF58  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B9CF5C  90 7C 05 E4 */	stw r3, 0x5e4(r28)
/* 80B9CF60  38 03 00 20 */	addi r0, r3, 0x20
/* 80B9CF64  90 1C 05 E8 */	stw r0, 0x5e8(r28)
/* 80B9CF68  3B BC 06 08 */	addi r29, r28, 0x608
/* 80B9CF6C  7F A3 EB 78 */	mr r3, r29
/* 80B9CF70  4B 4E 6A B9 */	bl __ct__12dCcD_GObjInfFv
/* 80B9CF74  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B9CF78  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B9CF7C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80B9CF80  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha /* 0x80B9EAFC@ha */
/* 80B9CF84  38 03 EA FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B9EAFC@l */
/* 80B9CF88  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80B9CF8C  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B9EAF0@ha */
/* 80B9CF90  38 03 EA F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B9EAF0@l */
/* 80B9CF94  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80B9CF98  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B9CF9C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B9CFA0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80B9CFA4  38 03 00 58 */	addi r0, r3, 0x58
/* 80B9CFA8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80B9CFAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B9CFB0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B9CFB4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80B9CFB8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B9CFBC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80B9CFC0  38 03 00 84 */	addi r0, r3, 0x84
/* 80B9CFC4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80B9CFC8  38 7C 07 68 */	addi r3, r28, 0x768
/* 80B9CFCC  4B 4D 8E E1 */	bl __ct__12dBgS_AcchCirFv
/* 80B9CFD0  3B 9C 07 A8 */	addi r28, r28, 0x7a8
/* 80B9CFD4  7F 83 E3 78 */	mr r3, r28
/* 80B9CFD8  4B 4D 90 C9 */	bl __ct__9dBgS_AcchFv
/* 80B9CFDC  3C 60 80 BA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B9EACC@ha */
/* 80B9CFE0  38 63 EA CC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B9EACC@l */
/* 80B9CFE4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80B9CFE8  38 03 00 0C */	addi r0, r3, 0xc
/* 80B9CFEC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80B9CFF0  38 03 00 18 */	addi r0, r3, 0x18
/* 80B9CFF4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80B9CFF8  38 7C 00 14 */	addi r3, r28, 0x14
/* 80B9CFFC  4B 4D BE 6D */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80B9D000:
/* 80B9D000  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80B9D004  60 00 00 08 */	ori r0, r0, 8
/* 80B9D008  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80B9D00C:
/* 80B9D00C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9D010  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B9D014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9D018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9D01C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9D020  7C 05 07 74 */	extsb r5, r0
/* 80B9D024  4B 49 83 3D */	bl isSwitch__10dSv_info_cCFii
/* 80B9D028  2C 03 00 00 */	cmpwi r3, 0
/* 80B9D02C  41 82 00 0C */	beq lbl_80B9D038
/* 80B9D030  38 60 00 05 */	li r3, 5
/* 80B9D034  48 00 02 50 */	b lbl_80B9D284
lbl_80B9D038:
/* 80B9D038  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80B9D03C  3C 80 80 BA */	lis r4, d_a_obj_Turara__stringBase0@ha /* 0x80B9E970@ha */
/* 80B9D040  38 84 E9 70 */	addi r4, r4, d_a_obj_Turara__stringBase0@l /* 0x80B9E970@l */
/* 80B9D044  4B 48 FE 79 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B9D048  7C 7D 1B 78 */	mr r29, r3
/* 80B9D04C  2C 1D 00 04 */	cmpwi r29, 4
/* 80B9D050  40 82 02 30 */	bne lbl_80B9D280
/* 80B9D054  3B 80 00 00 */	li r28, 0
/* 80B9D058  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B9D05C  98 1F 09 8C */	stb r0, 0x98c(r31)
/* 80B9D060  88 1F 09 8C */	lbz r0, 0x98c(r31)
/* 80B9D064  28 00 00 00 */	cmplwi r0, 0
/* 80B9D068  41 82 00 40 */	beq lbl_80B9D0A8
/* 80B9D06C  28 00 00 01 */	cmplwi r0, 1
/* 80B9D070  40 82 00 24 */	bne lbl_80B9D094
/* 80B9D074  3B 80 00 01 */	li r28, 1
/* 80B9D078  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9D07C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B9D080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9D084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9D088  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9D08C  7C 05 07 74 */	extsb r5, r0
/* 80B9D090  4B 49 81 71 */	bl onSwitch__10dSv_info_cFii
lbl_80B9D094:
/* 80B9D094  38 00 00 00 */	li r0, 0
/* 80B9D098  98 1F 04 96 */	stb r0, 0x496(r31)
/* 80B9D09C  38 00 00 01 */	li r0, 1
/* 80B9D0A0  98 1F 09 8C */	stb r0, 0x98c(r31)
/* 80B9D0A4  48 00 00 0C */	b lbl_80B9D0B0
lbl_80B9D0A8:
/* 80B9D0A8  38 00 00 02 */	li r0, 2
/* 80B9D0AC  98 1F 04 96 */	stb r0, 0x496(r31)
lbl_80B9D0B0:
/* 80B9D0B0  7F E3 FB 78 */	mr r3, r31
/* 80B9D0B4  3C 80 80 BA */	lis r4, d_a_obj_Turara__stringBase0@ha /* 0x80B9E970@ha */
/* 80B9D0B8  38 84 E9 70 */	addi r4, r4, d_a_obj_Turara__stringBase0@l /* 0x80B9E970@l */
/* 80B9D0BC  38 A0 00 0C */	li r5, 0xc
/* 80B9D0C0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80B9D0C4  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80B9D0C8  38 E0 21 80 */	li r7, 0x2180
/* 80B9D0CC  39 00 00 00 */	li r8, 0
/* 80B9D0D0  4B 4D B6 ED */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80B9D0D4  2C 03 00 05 */	cmpwi r3, 5
/* 80B9D0D8  40 82 00 0C */	bne lbl_80B9D0E4
/* 80B9D0DC  38 60 00 05 */	li r3, 5
/* 80B9D0E0  48 00 01 A4 */	b lbl_80B9D284
lbl_80B9D0E4:
/* 80B9D0E4  38 7F 07 68 */	addi r3, r31, 0x768
/* 80B9D0E8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80B9D0EC  FC 40 08 90 */	fmr f2, f1
/* 80B9D0F0  4B 4D 8E 69 */	bl SetWall__12dBgS_AcchCirFff
/* 80B9D0F4  38 00 00 00 */	li r0, 0
/* 80B9D0F8  90 01 00 08 */	stw r0, 8(r1)
/* 80B9D0FC  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80B9D100  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B9D104  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80B9D108  7F E6 FB 78 */	mr r6, r31
/* 80B9D10C  38 E0 00 01 */	li r7, 1
/* 80B9D110  39 1F 07 68 */	addi r8, r31, 0x768
/* 80B9D114  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80B9D118  39 40 00 00 */	li r10, 0
/* 80B9D11C  4B 4D 91 2D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B9D120  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80B9D124  D0 1F 08 78 */	stfs f0, 0x878(r31)
/* 80B9D128  38 00 00 00 */	li r0, 0
/* 80B9D12C  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80B9D130  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 80B9D134  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 80B9D138  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80B9D13C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80B9D140  D0 1F 07 58 */	stfs f0, 0x758(r31)
/* 80B9D144  D0 1F 07 5C */	stfs f0, 0x75c(r31)
/* 80B9D148  D0 1F 07 60 */	stfs f0, 0x760(r31)
/* 80B9D14C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80B9D150  38 80 00 FF */	li r4, 0xff
/* 80B9D154  38 A0 00 FF */	li r5, 0xff
/* 80B9D158  7F E6 FB 78 */	mr r6, r31
/* 80B9D15C  4B 4E 67 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B9D160  38 7F 06 08 */	addi r3, r31, 0x608
/* 80B9D164  3C 80 80 BA */	lis r4, mCcDCyl__10daTurara_c@ha /* 0x80B9E99C@ha */
/* 80B9D168  38 84 E9 9C */	addi r4, r4, mCcDCyl__10daTurara_c@l /* 0x80B9E99C@l */
/* 80B9D16C  4B 4E 77 49 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B9D170  38 1F 05 CC */	addi r0, r31, 0x5cc
/* 80B9D174  90 1F 06 4C */	stw r0, 0x64c(r31)
/* 80B9D178  80 1F 06 08 */	lwz r0, 0x608(r31)
/* 80B9D17C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B9D180  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80B9D184  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9D188  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B9D18C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9D190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9D194  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9D198  7C 05 07 74 */	extsb r5, r0
/* 80B9D19C  4B 49 81 C5 */	bl isSwitch__10dSv_info_cCFii
/* 80B9D1A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B9D1A4  41 82 00 7C */	beq lbl_80B9D220
/* 80B9D1A8  38 00 00 01 */	li r0, 1
/* 80B9D1AC  98 1F 09 84 */	stb r0, 0x984(r31)
/* 80B9D1B0  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 80B9D1B4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B9D1B8  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80B9D1BC  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80B9D1C0  28 04 00 00 */	cmplwi r4, 0
/* 80B9D1C4  41 82 00 14 */	beq lbl_80B9D1D8
/* 80B9D1C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9D1CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9D1D0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B9D1D4  4B 4D 70 7D */	bl Release__4cBgSFP9dBgW_Base
lbl_80B9D1D8:
/* 80B9D1D8  80 9F 09 80 */	lwz r4, 0x980(r31)
/* 80B9D1DC  28 04 00 00 */	cmplwi r4, 0
/* 80B9D1E0  41 82 00 20 */	beq lbl_80B9D200
/* 80B9D1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9D1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9D1EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B9D1F0  7F E5 FB 78 */	mr r5, r31
/* 80B9D1F4  4B 4D 78 15 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80B9D1F8  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80B9D1FC  4B 4D E7 C5 */	bl Move__4dBgWFv
lbl_80B9D200:
/* 80B9D200  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80B9D204  41 82 00 10 */	beq lbl_80B9D214
/* 80B9D208  38 00 00 03 */	li r0, 3
/* 80B9D20C  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80B9D210  48 00 00 2C */	b lbl_80B9D23C
lbl_80B9D214:
/* 80B9D214  7F E3 FB 78 */	mr r3, r31
/* 80B9D218  48 00 02 51 */	bl setFallStat__10daTurara_cFv
/* 80B9D21C  48 00 00 20 */	b lbl_80B9D23C
lbl_80B9D220:
/* 80B9D220  38 00 00 00 */	li r0, 0
/* 80B9D224  98 1F 09 84 */	stb r0, 0x984(r31)
/* 80B9D228  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9D22C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B9D230  98 1F 05 C9 */	stb r0, 0x5c9(r31)
/* 80B9D234  7F E3 FB 78 */	mr r3, r31
/* 80B9D238  48 00 04 F5 */	bl init_modeWait__10daTurara_cFv
lbl_80B9D23C:
/* 80B9D23C  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 80B9D240  54 00 10 3A */	slwi r0, r0, 2
/* 80B9D244  7C 7F 02 14 */	add r3, r31, r0
/* 80B9D248  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80B9D24C  38 03 00 24 */	addi r0, r3, 0x24
/* 80B9D250  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80B9D254  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 80B9D258  54 00 10 3A */	slwi r0, r0, 2
/* 80B9D25C  7C 7F 02 14 */	add r3, r31, r0
/* 80B9D260  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80B9D264  80 83 00 04 */	lwz r4, 4(r3)
/* 80B9D268  7F E3 FB 78 */	mr r3, r31
/* 80B9D26C  4B 47 D3 0D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80B9D270  7F E3 FB 78 */	mr r3, r31
/* 80B9D274  4B FF FA 29 */	bl setBaseMtx__10daTurara_cFv
/* 80B9D278  38 00 00 01 */	li r0, 1
/* 80B9D27C  98 1F 09 94 */	stb r0, 0x994(r31)
lbl_80B9D280:
/* 80B9D280  7F A3 EB 78 */	mr r3, r29
lbl_80B9D284:
/* 80B9D284  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9D288  4B 7C 4F 9D */	bl _restgpr_28
/* 80B9D28C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9D290  7C 08 03 A6 */	mtlr r0
/* 80B9D294  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9D298  4E 80 00 20 */	blr 
