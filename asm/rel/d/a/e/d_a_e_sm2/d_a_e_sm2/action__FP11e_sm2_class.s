lbl_8079AF94:
/* 8079AF94  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8079AF98  7C 08 02 A6 */	mflr r0
/* 8079AF9C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8079AFA0  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 8079AFA4  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 8079AFA8  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 8079AFAC  4B BC 71 F5 */	bl _savegpr_14
/* 8079AFB0  7C 7F 1B 78 */	mr r31, r3
/* 8079AFB4  3C 80 80 7A */	lis r4, cNullVec__6Z2Calc@ha /* 0x8079D734@ha */
/* 8079AFB8  3B A4 D7 34 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x8079D734@l */
/* 8079AFBC  3C 80 80 7A */	lis r4, lit_3790@ha /* 0x8079D5B0@ha */
/* 8079AFC0  3B C4 D5 B0 */	addi r30, r4, lit_3790@l /* 0x8079D5B0@l */
/* 8079AFC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079AFC8  39 C4 61 C0 */	addi r14, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079AFCC  80 8E 5D AC */	lwz r4, 0x5dac(r14)
/* 8079AFD0  4B 87 F7 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8079AFD4  B0 7F 06 90 */	sth r3, 0x690(r31)
/* 8079AFD8  7F E3 FB 78 */	mr r3, r31
/* 8079AFDC  80 8E 5D AC */	lwz r4, 0x5dac(r14)
/* 8079AFE0  4B 87 F8 01 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8079AFE4  D0 3F 06 94 */	stfs f1, 0x694(r31)
/* 8079AFE8  7F E3 FB 78 */	mr r3, r31
/* 8079AFEC  4B FF F9 C9 */	bl damage_check__FP11e_sm2_class
/* 8079AFF0  3A 20 00 01 */	li r17, 1
/* 8079AFF4  3B 80 00 01 */	li r28, 1
/* 8079AFF8  39 C0 00 01 */	li r14, 1
/* 8079AFFC  3A 40 00 01 */	li r18, 1
/* 8079B000  A8 1F 06 82 */	lha r0, 0x682(r31)
/* 8079B004  28 00 00 14 */	cmplwi r0, 0x14
/* 8079B008  41 81 00 88 */	bgt lbl_8079B090
/* 8079B00C  3C 60 80 7A */	lis r3, lit_5182@ha /* 0x8079D9D8@ha */
/* 8079B010  38 63 D9 D8 */	addi r3, r3, lit_5182@l /* 0x8079D9D8@l */
/* 8079B014  54 00 10 3A */	slwi r0, r0, 2
/* 8079B018  7C 03 00 2E */	lwzx r0, r3, r0
/* 8079B01C  7C 09 03 A6 */	mtctr r0
/* 8079B020  4E 80 04 20 */	bctr 
lbl_8079B024:
/* 8079B024  7F E3 FB 78 */	mr r3, r31
/* 8079B028  4B FF E3 CD */	bl normal_move__FP11e_sm2_class
/* 8079B02C  48 00 00 64 */	b lbl_8079B090
lbl_8079B030:
/* 8079B030  7F E3 FB 78 */	mr r3, r31
/* 8079B034  4B FF E7 51 */	bl attack__FP11e_sm2_class
/* 8079B038  48 00 00 58 */	b lbl_8079B090
lbl_8079B03C:
/* 8079B03C  7F E3 FB 78 */	mr r3, r31
/* 8079B040  4B FF EA 11 */	bl combine__FP11e_sm2_class
/* 8079B044  7C 7C 1B 78 */	mr r28, r3
/* 8079B048  48 00 00 48 */	b lbl_8079B090
lbl_8079B04C:
/* 8079B04C  7F E3 FB 78 */	mr r3, r31
/* 8079B050  4B FF ED 5D */	bl roof__FP11e_sm2_class
/* 8079B054  7C 72 1B 78 */	mr r18, r3
/* 8079B058  3B 80 00 00 */	li r28, 0
/* 8079B05C  3A 20 00 00 */	li r17, 0
/* 8079B060  48 00 00 30 */	b lbl_8079B090
lbl_8079B064:
/* 8079B064  7F E3 FB 78 */	mr r3, r31
/* 8079B068  4B FF F1 65 */	bl water__FP11e_sm2_class
/* 8079B06C  3B 80 00 00 */	li r28, 0
/* 8079B070  3A 20 00 00 */	li r17, 0
/* 8079B074  39 C0 00 00 */	li r14, 0
/* 8079B078  48 00 00 18 */	b lbl_8079B090
lbl_8079B07C:
/* 8079B07C  7F E3 FB 78 */	mr r3, r31
/* 8079B080  4B FF F3 2D */	bl fail__FP11e_sm2_class
/* 8079B084  3B 80 00 00 */	li r28, 0
/* 8079B088  3A 20 00 00 */	li r17, 0
/* 8079B08C  39 C0 00 00 */	li r14, 0
lbl_8079B090:
/* 8079B090  7D C0 07 75 */	extsb. r0, r14
/* 8079B094  41 82 01 88 */	beq lbl_8079B21C
/* 8079B098  3A 61 00 FC */	addi r19, r1, 0xfc
/* 8079B09C  7E 63 9B 78 */	mr r3, r19
/* 8079B0A0  4B 8D C4 DD */	bl __ct__11dBgS_GndChkFv
/* 8079B0A4  3C 60 80 7A */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8079DB28@ha */
/* 8079B0A8  38 63 DB 28 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x8079DB28@l */
/* 8079B0AC  90 61 01 0C */	stw r3, 0x10c(r1)
/* 8079B0B0  39 C3 00 0C */	addi r14, r3, 0xc
/* 8079B0B4  91 C1 01 1C */	stw r14, 0x11c(r1)
/* 8079B0B8  39 E3 00 18 */	addi r15, r3, 0x18
/* 8079B0BC  91 E1 01 38 */	stw r15, 0x138(r1)
/* 8079B0C0  3A 03 00 24 */	addi r16, r3, 0x24
/* 8079B0C4  92 01 01 48 */	stw r16, 0x148(r1)
/* 8079B0C8  38 73 00 3C */	addi r3, r19, 0x3c
/* 8079B0CC  4B 8D DD 9D */	bl SetObj__16dBgS_PolyPassChkFv
/* 8079B0D0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8079B0D4  4B 8D C6 DD */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 8079B0D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8079B0DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8079B0E0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8079B0E4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8079B0E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8079B0EC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079B0F0  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8079B0F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8079B0F8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079B0FC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8079B100  38 81 00 48 */	addi r4, r1, 0x48
/* 8079B104  4B AC CC 25 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8079B108  7E 63 9B 78 */	mr r3, r19
/* 8079B10C  38 81 00 48 */	addi r4, r1, 0x48
/* 8079B110  4B AC CC 19 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8079B114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079B118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079B11C  3A 63 0F 38 */	addi r19, r3, 0xf38
/* 8079B120  7E 63 9B 78 */	mr r3, r19
/* 8079B124  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8079B128  4B 8D 93 79 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8079B12C  FF E0 08 90 */	fmr f31, f1
/* 8079B130  7E 63 9B 78 */	mr r3, r19
/* 8079B134  38 81 00 FC */	addi r4, r1, 0xfc
/* 8079B138  4B 8D 93 69 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8079B13C  EC 3F 08 28 */	fsubs f1, f31, f1
/* 8079B140  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8079B144  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8079B148  40 80 00 A4 */	bge lbl_8079B1EC
/* 8079B14C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8079B150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079B154  40 81 00 98 */	ble lbl_8079B1EC
/* 8079B158  38 00 00 0B */	li r0, 0xb
/* 8079B15C  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 8079B160  38 80 00 00 */	li r4, 0
/* 8079B164  B0 9F 06 84 */	sth r4, 0x684(r31)
/* 8079B168  D3 FF 04 D4 */	stfs f31, 0x4d4(r31)
/* 8079B16C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000564FF@ha */
/* 8079B170  38 03 64 FF */	addi r0, r3, 0x64FF /* 0x000564FF@l */
/* 8079B174  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 8079B178  B0 9F 04 DC */	sth r4, 0x4dc(r31)
/* 8079B17C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079B180  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8079B184  98 9F 06 A8 */	stb r4, 0x6a8(r31)
/* 8079B188  38 00 00 14 */	li r0, 0x14
/* 8079B18C  98 1F 06 AA */	stb r0, 0x6aa(r31)
/* 8079B190  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8079B194  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8079B198  EF E1 00 32 */	fmuls f31, f1, f0
/* 8079B19C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8079B1A0  FC 20 F8 90 */	fmr f1, f31
/* 8079B1A4  38 80 00 00 */	li r4, 0
/* 8079B1A8  4B 88 46 D5 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 8079B1AC  38 7F 0F D8 */	addi r3, r31, 0xfd8
/* 8079B1B0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8079B1B4  FC 20 F8 90 */	fmr f1, f31
/* 8079B1B8  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8079B1BC  4B 88 1F 51 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 8079B1C0  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003001C@ha */
/* 8079B1C4  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0003001C@l */
/* 8079B1C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8079B1CC  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8079B1D0  38 81 00 20 */	addi r4, r1, 0x20
/* 8079B1D4  38 A0 00 00 */	li r5, 0
/* 8079B1D8  38 C0 FF FF */	li r6, -1
/* 8079B1DC  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8079B1E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079B1E4  7D 89 03 A6 */	mtctr r12
/* 8079B1E8  4E 80 04 21 */	bctrl 
lbl_8079B1EC:
/* 8079B1EC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8079B1F0  38 80 FF FF */	li r4, -1
/* 8079B1F4  4B 8D C6 55 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8079B1F8  3C 60 80 7A */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8079DB28@ha */
/* 8079B1FC  38 03 DB 28 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x8079DB28@l */
/* 8079B200  90 01 01 0C */	stw r0, 0x10c(r1)
/* 8079B204  91 C1 01 1C */	stw r14, 0x11c(r1)
/* 8079B208  91 E1 01 38 */	stw r15, 0x138(r1)
/* 8079B20C  92 01 01 48 */	stw r16, 0x148(r1)
/* 8079B210  38 61 00 FC */	addi r3, r1, 0xfc
/* 8079B214  38 80 00 00 */	li r4, 0
/* 8079B218  4B 8D C3 D9 */	bl __dt__11dBgS_GndChkFv
lbl_8079B21C:
/* 8079B21C  7E 20 07 75 */	extsb. r0, r17
/* 8079B220  41 82 00 10 */	beq lbl_8079B230
/* 8079B224  38 00 00 04 */	li r0, 4
/* 8079B228  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8079B22C  48 00 00 18 */	b lbl_8079B244
lbl_8079B230:
/* 8079B230  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8079B234  54 00 00 3E */	slwi r0, r0, 0
/* 8079B238  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8079B23C  38 00 00 00 */	li r0, 0
/* 8079B240  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8079B244:
/* 8079B244  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079B248  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079B24C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079B250  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8079B254  4B 87 11 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 8079B258  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079B25C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8079B260  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079B264  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8079B268  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8079B26C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079B270  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079B274  38 61 00 48 */	addi r3, r1, 0x48
/* 8079B278  38 81 00 3C */	addi r4, r1, 0x3c
/* 8079B27C  4B AD 5C 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079B280  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8079B284  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8079B288  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8079B28C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8079B290  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8079B294  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 8079B298  EC 01 00 2A */	fadds f0, f1, f0
/* 8079B29C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8079B2A0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8079B2A4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8079B2A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079B2AC  40 80 00 08 */	bge lbl_8079B2B4
/* 8079B2B0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_8079B2B4:
/* 8079B2B4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8079B2B8  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 8079B2BC  7C 65 1B 78 */	mr r5, r3
/* 8079B2C0  4B BA BD D1 */	bl PSVECAdd
/* 8079B2C4  34 7F 0A 6C */	addic. r3, r31, 0xa6c
/* 8079B2C8  41 82 00 30 */	beq lbl_8079B2F8
/* 8079B2CC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8079B2D0  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8079B2D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8079B2D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079B2DC  EC 01 00 2A */	fadds f0, f1, f0
/* 8079B2E0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8079B2E4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8079B2E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8079B2EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079B2F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8079B2F4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_8079B2F8:
/* 8079B2F8  7E 40 07 75 */	extsb. r0, r18
/* 8079B2FC  41 82 00 18 */	beq lbl_8079B314
/* 8079B300  38 7F 08 94 */	addi r3, r31, 0x894
/* 8079B304  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079B308  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079B30C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8079B310  4B 8D B7 9D */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_8079B314:
/* 8079B314  A8 1F 06 82 */	lha r0, 0x682(r31)
/* 8079B318  2C 00 00 0A */	cmpwi r0, 0xa
/* 8079B31C  41 82 01 74 */	beq lbl_8079B490
/* 8079B320  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 8079B324  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8079B328  41 82 01 20 */	beq lbl_8079B448
/* 8079B32C  38 61 00 54 */	addi r3, r1, 0x54
/* 8079B330  4B 8D C2 4D */	bl __ct__11dBgS_GndChkFv
/* 8079B334  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079B338  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079B33C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079B340  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8079B344  4B 87 10 99 */	bl mDoMtx_YrotS__FPA4_fs
/* 8079B348  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079B34C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8079B350  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079B354  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 8079B358  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8079B35C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079B360  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079B364  38 61 00 48 */	addi r3, r1, 0x48
/* 8079B368  38 81 00 3C */	addi r4, r1, 0x3c
/* 8079B36C  4B AD 5B 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079B370  38 61 00 3C */	addi r3, r1, 0x3c
/* 8079B374  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8079B378  7C 65 1B 78 */	mr r5, r3
/* 8079B37C  4B BA BD 15 */	bl PSVECAdd
/* 8079B380  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8079B384  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8079B388  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8079B38C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8079B390  EC 01 00 2A */	fadds f0, f1, f0
/* 8079B394  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8079B398  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8079B39C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8079B3A0  38 61 00 54 */	addi r3, r1, 0x54
/* 8079B3A4  38 81 00 30 */	addi r4, r1, 0x30
/* 8079B3A8  4B AC C9 65 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 8079B3AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079B3B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079B3B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8079B3B8  38 81 00 54 */	addi r4, r1, 0x54
/* 8079B3BC  4B 8D 90 E5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8079B3C0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8079B3C4  38 61 00 24 */	addi r3, r1, 0x24
/* 8079B3C8  38 81 00 3C */	addi r4, r1, 0x3c
/* 8079B3CC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8079B3D0  4B AC B7 65 */	bl __mi__4cXyzCFRC3Vec
/* 8079B3D4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8079B3D8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8079B3DC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8079B3E0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079B3E4  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8079B3E8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8079B3EC  FC 00 02 10 */	fabs f0, f0
/* 8079B3F0  FC 60 00 18 */	frsp f3, f0
/* 8079B3F4  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8079B3F8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8079B3FC  40 80 00 34 */	bge lbl_8079B430
/* 8079B400  EC 21 00 72 */	fmuls f1, f1, f1
/* 8079B404  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8079B408  EC 41 00 2A */	fadds f2, f1, f0
/* 8079B40C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079B410  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8079B414  40 81 00 0C */	ble lbl_8079B420
/* 8079B418  FC 00 10 34 */	frsqrte f0, f2
/* 8079B41C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8079B420:
/* 8079B420  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8079B424  4B AC C2 51 */	bl cM_atan2s__Fff
/* 8079B428  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 8079B42C  48 00 00 0C */	b lbl_8079B438
lbl_8079B430:
/* 8079B430  38 00 00 00 */	li r0, 0
/* 8079B434  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_8079B438:
/* 8079B438  38 61 00 54 */	addi r3, r1, 0x54
/* 8079B43C  38 80 FF FF */	li r4, -1
/* 8079B440  4B 8D C1 B1 */	bl __dt__11dBgS_GndChkFv
/* 8079B444  48 00 00 4C */	b lbl_8079B490
lbl_8079B448:
/* 8079B448  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 8079B44C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8079B450  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8079B454  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079B458  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8079B45C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8079B460  EC 21 00 72 */	fmuls f1, f1, f1
/* 8079B464  EC 00 00 32 */	fmuls f0, f0, f0
/* 8079B468  EC 41 00 2A */	fadds f2, f1, f0
/* 8079B46C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079B470  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8079B474  40 81 00 0C */	ble lbl_8079B480
/* 8079B478  FC 00 10 34 */	frsqrte f0, f2
/* 8079B47C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8079B480:
/* 8079B480  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8079B484  4B AC C1 F1 */	bl cM_atan2s__Fff
/* 8079B488  7C 03 00 D0 */	neg r0, r3
/* 8079B48C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_8079B490:
/* 8079B490  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8079B494  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8079B498  38 A0 00 04 */	li r5, 4
/* 8079B49C  38 C0 20 00 */	li r6, 0x2000
/* 8079B4A0  4B AD 51 69 */	bl cLib_addCalcAngleS2__FPssss
/* 8079B4A4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8079B4A8  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 8079B4AC  38 A0 00 04 */	li r5, 4
/* 8079B4B0  38 C0 10 00 */	li r6, 0x1000
/* 8079B4B4  4B AD 51 55 */	bl cLib_addCalcAngleS2__FPssss
/* 8079B4B8  7F E3 FB 78 */	mr r3, r31
/* 8079B4BC  4B FF F0 A5 */	bl dmcalc__FP11e_sm2_class
/* 8079B4C0  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 8079B4C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8079B4C8  41 82 00 3C */	beq lbl_8079B504
/* 8079B4CC  38 60 00 06 */	li r3, 6
/* 8079B4D0  38 00 00 07 */	li r0, 7
/* 8079B4D4  7C 09 03 A6 */	mtctr r0
lbl_8079B4D8:
/* 8079B4D8  38 03 07 68 */	addi r0, r3, 0x768
/* 8079B4DC  7C 1F 02 AE */	lhax r0, r31, r0
/* 8079B4E0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8079B4E4  41 81 00 0C */	bgt lbl_8079B4F0
/* 8079B4E8  2C 00 F0 00 */	cmpwi r0, -4096
/* 8079B4EC  40 80 00 10 */	bge lbl_8079B4FC
lbl_8079B4F0:
/* 8079B4F0  38 00 00 1E */	li r0, 0x1e
/* 8079B4F4  98 1F 08 3F */	stb r0, 0x83f(r31)
/* 8079B4F8  48 00 00 0C */	b lbl_8079B504
lbl_8079B4FC:
/* 8079B4FC  38 63 00 06 */	addi r3, r3, 6
/* 8079B500  42 00 FF D8 */	bdnz lbl_8079B4D8
lbl_8079B504:
/* 8079B504  C3 FE 00 78 */	lfs f31, 0x78(r30)
/* 8079B508  3A 20 00 04 */	li r17, 4
/* 8079B50C  88 1F 06 A9 */	lbz r0, 0x6a9(r31)
/* 8079B510  28 00 00 00 */	cmplwi r0, 0
/* 8079B514  40 82 01 40 */	bne lbl_8079B654
/* 8079B518  88 1F 06 AA */	lbz r0, 0x6aa(r31)
/* 8079B51C  28 00 00 0A */	cmplwi r0, 0xa
/* 8079B520  40 80 01 34 */	bge lbl_8079B654
/* 8079B524  88 7F 08 3F */	lbz r3, 0x83f(r31)
/* 8079B528  7C 60 07 75 */	extsb. r0, r3
/* 8079B52C  41 82 01 28 */	beq lbl_8079B654
/* 8079B530  38 03 FF FF */	addi r0, r3, -1
/* 8079B534  98 1F 08 3F */	stb r0, 0x83f(r31)
/* 8079B538  88 1F 08 3F */	lbz r0, 0x83f(r31)
/* 8079B53C  7C 04 07 74 */	extsb r4, r0
/* 8079B540  2C 04 00 0F */	cmpwi r4, 0xf
/* 8079B544  41 81 00 1C */	bgt lbl_8079B560
/* 8079B548  54 80 10 3A */	slwi r0, r4, 2
/* 8079B54C  38 7D 01 F8 */	addi r3, r29, 0x1f8
/* 8079B550  7F E3 04 2E */	lfsx f31, r3, r0
/* 8079B554  54 80 08 3C */	slwi r0, r4, 1
/* 8079B558  38 7D 02 38 */	addi r3, r29, 0x238
/* 8079B55C  7E 23 02 AE */	lhax r17, r3, r0
lbl_8079B560:
/* 8079B560  38 7F 08 40 */	addi r3, r31, 0x840
/* 8079B564  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8079B568  FC 40 F8 90 */	fmr f2, f31
/* 8079B56C  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 8079B570  4B AD 44 CD */	bl cLib_addCalc2__FPffff
/* 8079B574  38 7F 08 44 */	addi r3, r31, 0x844
/* 8079B578  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8079B57C  FC 40 F8 90 */	fmr f2, f31
/* 8079B580  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 8079B584  4B AD 44 B9 */	bl cLib_addCalc2__FPffff
/* 8079B588  38 7F 08 48 */	addi r3, r31, 0x848
/* 8079B58C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8079B590  FC 40 F8 90 */	fmr f2, f31
/* 8079B594  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 8079B598  4B AD 44 A5 */	bl cLib_addCalc2__FPffff
/* 8079B59C  38 7F 08 4C */	addi r3, r31, 0x84c
/* 8079B5A0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8079B5A4  7E 25 8B 78 */	mr r5, r17
/* 8079B5A8  38 C0 08 00 */	li r6, 0x800
/* 8079B5AC  4B AD 50 5D */	bl cLib_addCalcAngleS2__FPssss
/* 8079B5B0  38 7F 08 4E */	addi r3, r31, 0x84e
/* 8079B5B4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8079B5B8  7E 25 8B 78 */	mr r5, r17
/* 8079B5BC  38 C0 08 00 */	li r6, 0x800
/* 8079B5C0  4B AD 50 49 */	bl cLib_addCalcAngleS2__FPssss
/* 8079B5C4  3A 40 00 01 */	li r18, 1
/* 8079B5C8  39 C0 00 06 */	li r14, 6
/* 8079B5CC  39 E0 00 0C */	li r15, 0xc
lbl_8079B5D0:
/* 8079B5D0  7E 1F 7A 14 */	add r16, r31, r15
/* 8079B5D4  38 70 07 98 */	addi r3, r16, 0x798
/* 8079B5D8  C0 30 07 08 */	lfs f1, 0x708(r16)
/* 8079B5DC  FC 40 F8 90 */	fmr f2, f31
/* 8079B5E0  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 8079B5E4  4B AD 44 59 */	bl cLib_addCalc2__FPffff
/* 8079B5E8  38 70 07 9C */	addi r3, r16, 0x79c
/* 8079B5EC  C0 30 07 0C */	lfs f1, 0x70c(r16)
/* 8079B5F0  FC 40 F8 90 */	fmr f2, f31
/* 8079B5F4  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 8079B5F8  4B AD 44 45 */	bl cLib_addCalc2__FPffff
/* 8079B5FC  38 70 07 A0 */	addi r3, r16, 0x7a0
/* 8079B600  C0 30 07 10 */	lfs f1, 0x710(r16)
/* 8079B604  FC 40 F8 90 */	fmr f2, f31
/* 8079B608  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 8079B60C  4B AD 44 31 */	bl cLib_addCalc2__FPffff
/* 8079B610  7E 1F 72 14 */	add r16, r31, r14
/* 8079B614  38 70 07 F8 */	addi r3, r16, 0x7f8
/* 8079B618  A8 90 07 68 */	lha r4, 0x768(r16)
/* 8079B61C  7E 25 8B 78 */	mr r5, r17
/* 8079B620  38 C0 08 00 */	li r6, 0x800
/* 8079B624  4B AD 4F E5 */	bl cLib_addCalcAngleS2__FPssss
/* 8079B628  38 70 07 FA */	addi r3, r16, 0x7fa
/* 8079B62C  A8 90 07 6A */	lha r4, 0x76a(r16)
/* 8079B630  7E 25 8B 78 */	mr r5, r17
/* 8079B634  38 C0 08 00 */	li r6, 0x800
/* 8079B638  4B AD 4F D1 */	bl cLib_addCalcAngleS2__FPssss
/* 8079B63C  3A 52 00 01 */	addi r18, r18, 1
/* 8079B640  2C 12 00 08 */	cmpwi r18, 8
/* 8079B644  39 CE 00 06 */	addi r14, r14, 6
/* 8079B648  39 EF 00 0C */	addi r15, r15, 0xc
/* 8079B64C  41 80 FF 84 */	blt lbl_8079B5D0
/* 8079B650  48 00 00 88 */	b lbl_8079B6D8
lbl_8079B654:
/* 8079B654  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8079B658  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8079B65C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8079B660  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 8079B664  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8079B668  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 8079B66C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8079B670  B0 1F 08 4C */	sth r0, 0x84c(r31)
/* 8079B674  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8079B678  B0 1F 08 4E */	sth r0, 0x84e(r31)
/* 8079B67C  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8079B680  B0 1F 08 50 */	sth r0, 0x850(r31)
/* 8079B684  38 60 00 06 */	li r3, 6
/* 8079B688  38 80 00 0C */	li r4, 0xc
/* 8079B68C  38 00 00 07 */	li r0, 7
/* 8079B690  7C 09 03 A6 */	mtctr r0
lbl_8079B694:
/* 8079B694  7C BF 22 14 */	add r5, r31, r4
/* 8079B698  C0 05 07 08 */	lfs f0, 0x708(r5)
/* 8079B69C  D0 05 07 98 */	stfs f0, 0x798(r5)
/* 8079B6A0  C0 05 07 0C */	lfs f0, 0x70c(r5)
/* 8079B6A4  D0 05 07 9C */	stfs f0, 0x79c(r5)
/* 8079B6A8  C0 05 07 10 */	lfs f0, 0x710(r5)
/* 8079B6AC  D0 05 07 A0 */	stfs f0, 0x7a0(r5)
/* 8079B6B0  7C BF 1A 14 */	add r5, r31, r3
/* 8079B6B4  A8 05 07 68 */	lha r0, 0x768(r5)
/* 8079B6B8  B0 05 07 F8 */	sth r0, 0x7f8(r5)
/* 8079B6BC  A8 05 07 6A */	lha r0, 0x76a(r5)
/* 8079B6C0  B0 05 07 FA */	sth r0, 0x7fa(r5)
/* 8079B6C4  A8 05 07 6C */	lha r0, 0x76c(r5)
/* 8079B6C8  B0 05 07 FC */	sth r0, 0x7fc(r5)
/* 8079B6CC  38 63 00 06 */	addi r3, r3, 6
/* 8079B6D0  38 84 00 0C */	addi r4, r4, 0xc
/* 8079B6D4  42 00 FF C0 */	bdnz lbl_8079B694
lbl_8079B6D8:
/* 8079B6D8  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 8079B6DC  7C 00 07 75 */	extsb. r0, r0
/* 8079B6E0  40 82 01 50 */	bne lbl_8079B830
/* 8079B6E4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079B6E8  81 C3 00 04 */	lwz r14, 4(r3)
/* 8079B6EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B6F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B6F4  C0 3F 08 40 */	lfs f1, 0x840(r31)
/* 8079B6F8  C0 5F 08 44 */	lfs f2, 0x844(r31)
/* 8079B6FC  C0 7F 08 48 */	lfs f3, 0x848(r31)
/* 8079B700  4B BA B1 E9 */	bl PSMTXTrans
/* 8079B704  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B708  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B70C  A8 9F 08 4E */	lha r4, 0x84e(r31)
/* 8079B710  4B 87 0D 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 8079B714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B718  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B71C  A8 9F 08 4C */	lha r4, 0x84c(r31)
/* 8079B720  4B 87 0C 7D */	bl mDoMtx_XrotM__FPA4_fs
/* 8079B724  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B728  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B72C  A8 9F 07 6C */	lha r4, 0x76c(r31)
/* 8079B730  4B 87 0D 9D */	bl mDoMtx_ZrotM__FPA4_fs
/* 8079B734  C0 7F 08 34 */	lfs f3, 0x834(r31)
/* 8079B738  C0 9F 06 E8 */	lfs f4, 0x6e8(r31)
/* 8079B73C  C0 BF 06 C8 */	lfs f5, 0x6c8(r31)
/* 8079B740  EC 05 20 2A */	fadds f0, f5, f4
/* 8079B744  EC 23 00 32 */	fmuls f1, f3, f0
/* 8079B748  C0 5F 06 B0 */	lfs f2, 0x6b0(r31)
/* 8079B74C  EC 05 20 28 */	fsubs f0, f5, f4
/* 8079B750  EC 03 00 32 */	fmuls f0, f3, f0
/* 8079B754  EC 42 00 32 */	fmuls f2, f2, f0
/* 8079B758  C0 1F 08 30 */	lfs f0, 0x830(r31)
/* 8079B75C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8079B760  4B 87 16 D9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8079B764  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B768  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B76C  A8 1F 07 6C */	lha r0, 0x76c(r31)
/* 8079B770  7C 00 00 D0 */	neg r0, r0
/* 8079B774  7C 04 07 34 */	extsh r4, r0
/* 8079B778  4B 87 0D 55 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8079B77C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8079B780  FC 40 08 90 */	fmr f2, f1
/* 8079B784  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8079B788  4B 87 16 15 */	bl transM__14mDoMtx_stack_cFfff
/* 8079B78C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B790  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B794  38 8E 00 24 */	addi r4, r14, 0x24
/* 8079B798  4B BA AD 19 */	bl PSMTXCopy
/* 8079B79C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8079B7A0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8079B7A4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8079B7A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079B7AC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8079B7B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B7B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B7B8  38 81 00 48 */	addi r4, r1, 0x48
/* 8079B7BC  38 BF 07 08 */	addi r5, r31, 0x708
/* 8079B7C0  4B BA B5 AD */	bl PSMTXMultVec
/* 8079B7C4  C0 7E 01 14 */	lfs f3, 0x114(r30)
/* 8079B7C8  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 8079B7CC  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 8079B7D0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 8079B7D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8079B7D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079B7DC  EC 23 00 28 */	fsubs f1, f3, f0
/* 8079B7E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079B7E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079B7E8  40 80 00 08 */	bge lbl_8079B7F0
/* 8079B7EC  FC 20 00 90 */	fmr f1, f0
lbl_8079B7F0:
/* 8079B7F0  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8079B7F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079B7F8  40 81 00 08 */	ble lbl_8079B800
/* 8079B7FC  FC 20 00 90 */	fmr f1, f0
lbl_8079B800:
/* 8079B800  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8079B804  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8079B808  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8079B80C  7C 03 07 74 */	extsb r3, r0
/* 8079B810  4B 89 18 5D */	bl dComIfGp_getReverb__Fi
/* 8079B814  7C 65 1B 78 */	mr r5, r3
/* 8079B818  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079B81C  38 80 00 00 */	li r4, 0
/* 8079B820  4B 87 58 91 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8079B824  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079B828  4B 87 59 C5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8079B82C  48 00 00 F8 */	b lbl_8079B924
lbl_8079B830:
/* 8079B830  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8079B834  81 C3 00 04 */	lwz r14, 4(r3)
/* 8079B838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B83C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B840  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8079B844  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8079B848  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8079B84C  4B BA B0 9D */	bl PSMTXTrans
/* 8079B850  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B854  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B858  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8079B85C  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 8079B860  1C 00 FE 70 */	mulli r0, r0, -400
/* 8079B864  7C 04 02 14 */	add r0, r4, r0
/* 8079B868  7C 04 07 34 */	extsh r4, r0
/* 8079B86C  4B 87 0B C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8079B870  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 8079B874  1C 00 1F 40 */	mulli r0, r0, 0x1f40
/* 8079B878  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8079B87C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8079B880  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8079B884  7C C3 04 2E */	lfsx f6, r3, r0
/* 8079B888  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8079B88C  C0 5F 06 B0 */	lfs f2, 0x6b0(r31)
/* 8079B890  EC A0 10 24 */	fdivs f5, f0, f2
/* 8079B894  C0 9E 00 08 */	lfs f4, 8(r30)
/* 8079B898  C0 7E 01 20 */	lfs f3, 0x120(r30)
/* 8079B89C  A8 1F 06 88 */	lha r0, 0x688(r31)
/* 8079B8A0  C8 3E 01 30 */	lfd f1, 0x130(r30)
/* 8079B8A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8079B8A8  90 01 01 54 */	stw r0, 0x154(r1)
/* 8079B8AC  3C 00 43 30 */	lis r0, 0x4330
/* 8079B8B0  90 01 01 50 */	stw r0, 0x150(r1)
/* 8079B8B4  C8 01 01 50 */	lfd f0, 0x150(r1)
/* 8079B8B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8079B8BC  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8079B8C0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8079B8C4  EC 04 00 2A */	fadds f0, f4, f0
/* 8079B8C8  EC 65 00 32 */	fmuls f3, f5, f0
/* 8079B8CC  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 8079B8D0  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8079B8D4  4B 87 15 65 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8079B8D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B8DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B8E0  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 8079B8E4  1C 00 01 90 */	mulli r0, r0, 0x190
/* 8079B8E8  7C 04 07 34 */	extsh r4, r0
/* 8079B8EC  4B 87 0B 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 8079B8F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8079B8F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8079B8F8  38 8E 00 24 */	addi r4, r14, 0x24
/* 8079B8FC  4B BA AB B5 */	bl PSMTXCopy
/* 8079B900  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8079B904  7C 03 07 74 */	extsb r3, r0
/* 8079B908  4B 89 17 65 */	bl dComIfGp_getReverb__Fi
/* 8079B90C  7C 65 1B 78 */	mr r5, r3
/* 8079B910  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8079B914  38 80 00 00 */	li r4, 0
/* 8079B918  4B 87 57 99 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8079B91C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8079B920  4B 87 58 CD */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_8079B924:
/* 8079B924  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8079B928  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8079B92C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8079B930  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8079B934  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8079B938  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8079B93C  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 8079B940  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8079B944  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8079B948  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079B94C  EC 02 00 2A */	fadds f0, f2, f0
/* 8079B950  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8079B954  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8079B958  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8079B95C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8079B960  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8079B964  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8079B968  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8079B96C  C0 5F 05 54 */	lfs f2, 0x554(r31)
/* 8079B970  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8079B974  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8079B978  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079B97C  EC 02 00 2A */	fadds f0, f2, f0
/* 8079B980  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8079B984  3B 60 00 00 */	li r27, 0
/* 8079B988  3B 20 00 00 */	li r25, 0
/* 8079B98C  3B 00 00 00 */	li r24, 0
/* 8079B990  3A E0 00 00 */	li r23, 0
/* 8079B994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079B998  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079B99C  3A 34 23 3C */	addi r17, r20, 0x233c
/* 8079B9A0  39 FD 02 58 */	addi r15, r29, 0x258
/* 8079B9A4  C3 FE 01 28 */	lfs f31, 0x128(r30)
/* 8079B9A8  39 DD 02 68 */	addi r14, r29, 0x268
lbl_8079B9AC:
/* 8079B9AC  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079B9B0  28 00 00 05 */	cmplwi r0, 5
/* 8079B9B4  40 82 01 00 */	bne lbl_8079BAB4
/* 8079B9B8  3B 40 00 00 */	li r26, 0
/* 8079B9BC  3A C0 00 00 */	li r22, 0
/* 8079B9C0  3A A0 00 00 */	li r21, 0
/* 8079B9C4  7E 7F BA 14 */	add r19, r31, r23
/* 8079B9C8  3A 1D 02 58 */	addi r16, r29, 0x258
lbl_8079B9CC:
/* 8079B9CC  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 8079B9D0  7C 00 07 75 */	extsb. r0, r0
/* 8079B9D4  40 82 00 6C */	bne lbl_8079BA40
/* 8079B9D8  3A 55 0F B0 */	addi r18, r21, 0xfb0
/* 8079B9DC  7C 93 90 2E */	lwzx r4, r19, r18
/* 8079B9E0  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 8079B9E4  38 00 00 FF */	li r0, 0xff
/* 8079B9E8  90 01 00 08 */	stw r0, 8(r1)
/* 8079B9EC  38 A0 00 00 */	li r5, 0
/* 8079B9F0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8079B9F4  38 00 FF FF */	li r0, -1
/* 8079B9F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079B9FC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8079BA00  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8079BA04  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8079BA08  38 A0 00 00 */	li r5, 0
/* 8079BA0C  38 DD 02 78 */	addi r6, r29, 0x278
/* 8079BA10  7C C6 B2 2E */	lhzx r6, r6, r22
/* 8079BA14  7C 10 C0 2E */	lwzx r0, r16, r24
/* 8079BA18  1C E0 00 0C */	mulli r7, r0, 0xc
/* 8079BA1C  38 E7 07 08 */	addi r7, r7, 0x708
/* 8079BA20  7C FF 3A 14 */	add r7, r31, r7
/* 8079BA24  39 00 00 00 */	li r8, 0
/* 8079BA28  39 20 00 00 */	li r9, 0
/* 8079BA2C  39 40 00 00 */	li r10, 0
/* 8079BA30  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8079BA34  4B 8B 1A 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8079BA38  7C 73 91 2E */	stwx r3, r19, r18
/* 8079BA3C  48 00 00 64 */	b lbl_8079BAA0
lbl_8079BA40:
/* 8079BA40  2C 1B 00 00 */	cmpwi r27, 0
/* 8079BA44  40 82 00 5C */	bne lbl_8079BAA0
/* 8079BA48  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 8079BA4C  38 00 00 FF */	li r0, 0xff
/* 8079BA50  90 01 00 08 */	stw r0, 8(r1)
/* 8079BA54  38 80 00 00 */	li r4, 0
/* 8079BA58  90 81 00 0C */	stw r4, 0xc(r1)
/* 8079BA5C  38 00 FF FF */	li r0, -1
/* 8079BA60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079BA64  90 81 00 14 */	stw r4, 0x14(r1)
/* 8079BA68  90 81 00 18 */	stw r4, 0x18(r1)
/* 8079BA6C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8079BA70  3A 55 0F B0 */	addi r18, r21, 0xfb0
/* 8079BA74  7C 9F 90 2E */	lwzx r4, r31, r18
/* 8079BA78  38 A0 00 00 */	li r5, 0
/* 8079BA7C  38 DD 02 78 */	addi r6, r29, 0x278
/* 8079BA80  7C C6 B2 2E */	lhzx r6, r6, r22
/* 8079BA84  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8079BA88  39 00 00 00 */	li r8, 0
/* 8079BA8C  39 20 00 00 */	li r9, 0
/* 8079BA90  39 40 00 00 */	li r10, 0
/* 8079BA94  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8079BA98  4B 8B 1A 35 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8079BA9C  7C 7F 91 2E */	stwx r3, r31, r18
lbl_8079BAA0:
/* 8079BAA0  3B 5A 00 01 */	addi r26, r26, 1
/* 8079BAA4  2C 1A 00 02 */	cmpwi r26, 2
/* 8079BAA8  3A D6 00 02 */	addi r22, r22, 2
/* 8079BAAC  3A B5 00 04 */	addi r21, r21, 4
/* 8079BAB0  41 80 FF 1C */	blt lbl_8079B9CC
lbl_8079BAB4:
/* 8079BAB4  7E 1F CA 14 */	add r16, r31, r25
/* 8079BAB8  3A 50 0B CC */	addi r18, r16, 0xbcc
/* 8079BABC  7E 43 93 78 */	mr r3, r18
/* 8079BAC0  7C 0F C0 2E */	lwzx r0, r15, r24
/* 8079BAC4  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8079BAC8  38 84 07 08 */	addi r4, r4, 0x708
/* 8079BACC  7C 9F 22 14 */	add r4, r31, r4
/* 8079BAD0  4B AD 3B 79 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8079BAD4  7E 43 93 78 */	mr r3, r18
/* 8079BAD8  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 8079BADC  7C 0E C4 2E */	lfsx f0, r14, r24
/* 8079BAE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079BAE4  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8079BAE8  4B AD 3C 21 */	bl SetR__8cM3dGSphFf
/* 8079BAEC  7E 23 8B 78 */	mr r3, r17
/* 8079BAF0  38 90 0A A8 */	addi r4, r16, 0xaa8
/* 8079BAF4  4B AC 90 B5 */	bl Set__4cCcSFP8cCcD_Obj
/* 8079BAF8  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 8079BAFC  7C 00 07 75 */	extsb. r0, r0
/* 8079BB00  41 82 00 1C */	beq lbl_8079BB1C
/* 8079BB04  80 10 0A A8 */	lwz r0, 0xaa8(r16)
/* 8079BB08  60 00 00 01 */	ori r0, r0, 1
/* 8079BB0C  90 10 0A A8 */	stw r0, 0xaa8(r16)
/* 8079BB10  38 00 00 00 */	li r0, 0
/* 8079BB14  98 1F 0F 88 */	stb r0, 0xf88(r31)
/* 8079BB18  48 00 00 10 */	b lbl_8079BB28
lbl_8079BB1C:
/* 8079BB1C  80 10 0A A8 */	lwz r0, 0xaa8(r16)
/* 8079BB20  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8079BB24  90 10 0A A8 */	stw r0, 0xaa8(r16)
lbl_8079BB28:
/* 8079BB28  A8 1F 06 8C */	lha r0, 0x68c(r31)
/* 8079BB2C  2C 00 00 00 */	cmpwi r0, 0
/* 8079BB30  41 82 00 14 */	beq lbl_8079BB44
/* 8079BB34  80 10 0A C0 */	lwz r0, 0xac0(r16)
/* 8079BB38  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8079BB3C  90 10 0A C0 */	stw r0, 0xac0(r16)
/* 8079BB40  48 00 00 10 */	b lbl_8079BB50
lbl_8079BB44:
/* 8079BB44  80 10 0A C0 */	lwz r0, 0xac0(r16)
/* 8079BB48  60 00 00 01 */	ori r0, r0, 1
/* 8079BB4C  90 10 0A C0 */	stw r0, 0xac0(r16)
lbl_8079BB50:
/* 8079BB50  7F 80 07 75 */	extsb. r0, r28
/* 8079BB54  41 82 00 14 */	beq lbl_8079BB68
/* 8079BB58  80 10 0A D4 */	lwz r0, 0xad4(r16)
/* 8079BB5C  60 00 00 01 */	ori r0, r0, 1
/* 8079BB60  90 10 0A D4 */	stw r0, 0xad4(r16)
/* 8079BB64  48 00 00 10 */	b lbl_8079BB74
lbl_8079BB68:
/* 8079BB68  80 10 0A D4 */	lwz r0, 0xad4(r16)
/* 8079BB6C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8079BB70  90 10 0A D4 */	stw r0, 0xad4(r16)
lbl_8079BB74:
/* 8079BB74  3B 7B 00 01 */	addi r27, r27, 1
/* 8079BB78  2C 1B 00 04 */	cmpwi r27, 4
/* 8079BB7C  3B 39 01 38 */	addi r25, r25, 0x138
/* 8079BB80  3B 18 00 04 */	addi r24, r24, 4
/* 8079BB84  3A F7 00 08 */	addi r23, r23, 8
/* 8079BB88  41 80 FE 24 */	blt lbl_8079B9AC
/* 8079BB8C  A8 9F 08 28 */	lha r4, 0x828(r31)
/* 8079BB90  88 1F 08 3C */	lbz r0, 0x83c(r31)
/* 8079BB94  54 00 10 3A */	slwi r0, r0, 2
/* 8079BB98  38 7D 02 90 */	addi r3, r29, 0x290
/* 8079BB9C  7C 43 04 2E */	lfsx f2, r3, r0
/* 8079BBA0  C0 3F 08 2C */	lfs f1, 0x82c(r31)
/* 8079BBA4  38 7D 02 7C */	addi r3, r29, 0x27c
/* 8079BBA8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8079BBAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079BBB0  EC 02 00 2A */	fadds f0, f2, f0
/* 8079BBB4  FC 00 00 1E */	fctiwz f0, f0
/* 8079BBB8  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 8079BBBC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8079BBC0  7C 04 02 14 */	add r0, r4, r0
/* 8079BBC4  B0 1F 08 28 */	sth r0, 0x828(r31)
/* 8079BBC8  38 60 00 00 */	li r3, 0
/* 8079BBCC  38 80 00 00 */	li r4, 0
/* 8079BBD0  38 A0 00 00 */	li r5, 0
/* 8079BBD4  38 00 00 08 */	li r0, 8
/* 8079BBD8  7C 09 03 A6 */	mtctr r0
lbl_8079BBDC:
/* 8079BBDC  A8 1F 06 82 */	lha r0, 0x682(r31)
/* 8079BBE0  2C 00 00 14 */	cmpwi r0, 0x14
/* 8079BBE4  41 82 00 34 */	beq lbl_8079BC18
/* 8079BBE8  A8 1F 08 28 */	lha r0, 0x828(r31)
/* 8079BBEC  7C C0 2A 14 */	add r6, r0, r5
/* 8079BBF0  38 04 07 6C */	addi r0, r4, 0x76c
/* 8079BBF4  7C DF 03 2E */	sthx r6, r31, r0
/* 8079BBF8  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 8079BBFC  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8079BC00  C0 1F 08 2C */	lfs f0, 0x82c(r31)
/* 8079BC04  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079BC08  EC 02 00 2A */	fadds f0, f2, f0
/* 8079BC0C  38 03 06 E8 */	addi r0, r3, 0x6e8
/* 8079BC10  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8079BC14  48 00 00 1C */	b lbl_8079BC30
lbl_8079BC18:
/* 8079BC18  38 C0 00 00 */	li r6, 0
/* 8079BC1C  38 04 07 6C */	addi r0, r4, 0x76c
/* 8079BC20  7C DF 03 2E */	sthx r6, r31, r0
/* 8079BC24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079BC28  38 03 06 E8 */	addi r0, r3, 0x6e8
/* 8079BC2C  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_8079BC30:
/* 8079BC30  38 63 00 04 */	addi r3, r3, 4
/* 8079BC34  38 84 00 06 */	addi r4, r4, 6
/* 8079BC38  38 A5 1F 40 */	addi r5, r5, 0x1f40
/* 8079BC3C  42 00 FF A0 */	bdnz lbl_8079BBDC
/* 8079BC40  38 7F 08 2C */	addi r3, r31, 0x82c
/* 8079BC44  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8079BC48  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8079BC4C  4B AD 3E 35 */	bl cLib_addCalc0__FPfff
/* 8079BC50  88 1F 0F D4 */	lbz r0, 0xfd4(r31)
/* 8079BC54  7C 00 07 75 */	extsb. r0, r0
/* 8079BC58  41 82 00 24 */	beq lbl_8079BC7C
/* 8079BC5C  7F E3 FB 78 */	mr r3, r31
/* 8079BC60  38 9F 07 2C */	addi r4, r31, 0x72c
/* 8079BC64  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8079BC68  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8079BC6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8079BC70  4B FF E6 1D */	bl eff_set__FP11e_sm2_classP4cXyzf
/* 8079BC74  38 00 00 00 */	li r0, 0
/* 8079BC78  98 1F 0F D4 */	stb r0, 0xfd4(r31)
lbl_8079BC7C:
/* 8079BC7C  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 8079BC80  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 8079BC84  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 8079BC88  4B BC 65 65 */	bl _restgpr_14
/* 8079BC8C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8079BC90  7C 08 03 A6 */	mtlr r0
/* 8079BC94  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8079BC98  4E 80 00 20 */	blr 
