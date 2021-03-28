lbl_80C36F58:
/* 80C36F58  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C36F5C  7C 08 02 A6 */	mflr r0
/* 80C36F60  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C36F64  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C36F68  4B 72 B2 70 */	b _savegpr_28
/* 80C36F6C  7C 7E 1B 78 */	mr r30, r3
/* 80C36F70  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C36F74  3B E3 84 08 */	addi r31, r3, lit_3775@l
/* 80C36F78  88 1E 09 C1 */	lbz r0, 0x9c1(r30)
/* 80C36F7C  28 00 00 00 */	cmplwi r0, 0
/* 80C36F80  41 82 03 8C */	beq lbl_80C3730C
/* 80C36F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C36F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C36F8C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80C36F90  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C36F94  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80C36F98  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C36F9C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C36FA0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C36FA4  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80C36FA8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C36FAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C36FB0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C36FB4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C36FB8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C36FBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C36FC0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C36FC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C36FC8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C36FCC  38 7E 07 04 */	addi r3, r30, 0x704
/* 80C36FD0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C36FD4  38 BE 04 E6 */	addi r5, r30, 0x4e6
/* 80C36FD8  38 C0 00 00 */	li r6, 0
/* 80C36FDC  38 E0 1C 00 */	li r7, 0x1c00
/* 80C36FE0  4B 52 76 74 */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80C36FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80C36FE8  41 82 00 24 */	beq lbl_80C3700C
/* 80C36FEC  38 7E 07 04 */	addi r3, r30, 0x704
/* 80C36FF0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C36FF4  4B 52 78 88 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C36FF8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C36FFC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C37000  EC 01 00 2A */	fadds f0, f1, f0
/* 80C37004  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C37008  48 00 03 04 */	b lbl_80C3730C
lbl_80C3700C:
/* 80C3700C  38 61 00 44 */	addi r3, r1, 0x44
/* 80C37010  4B 44 0C 58 */	b __ct__11dBgS_LinChkFv
/* 80C37014  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C37018  4B 44 1E 50 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C3701C  38 61 00 44 */	addi r3, r1, 0x44
/* 80C37020  38 81 00 24 */	addi r4, r1, 0x24
/* 80C37024  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C37028  38 C0 00 00 */	li r6, 0
/* 80C3702C  4B 44 0D 38 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C37030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C37034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C37038  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C3703C  7F 83 E3 78 */	mr r3, r28
/* 80C37040  38 81 00 44 */	addi r4, r1, 0x44
/* 80C37044  4B 43 D3 70 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C37048  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3704C  41 82 01 D0 */	beq lbl_80C3721C
/* 80C37050  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C37054  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C37058  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C3705C  7F 83 E3 78 */	mr r3, r28
/* 80C37060  38 81 00 58 */	addi r4, r1, 0x58
/* 80C37064  38 A1 00 30 */	addi r5, r1, 0x30
/* 80C37068  4B 43 D6 DC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3706C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C37070  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80C37074  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C37078  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80C3707C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C37080  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80C37084  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80C37088  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C3708C  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80C37090  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C37094  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80C37098  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C3709C  38 00 00 00 */	li r0, 0
/* 80C370A0  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C370A4  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C370A8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C370AC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C370B0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C370B4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C370B8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C370BC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C370C0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C370C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C370C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C370CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C370D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C370D4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C370D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C370DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C370E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C370E4  38 61 00 18 */	addi r3, r1, 0x18
/* 80C370E8  38 81 00 0C */	addi r4, r1, 0xc
/* 80C370EC  4B 71 02 B0 */	b PSVECSquareDistance
/* 80C370F0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C370F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C370F8  40 81 00 58 */	ble lbl_80C37150
/* 80C370FC  FC 00 08 34 */	frsqrte f0, f1
/* 80C37100  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C37104  FC 44 00 32 */	fmul f2, f4, f0
/* 80C37108  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C3710C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C37110  FC 01 00 32 */	fmul f0, f1, f0
/* 80C37114  FC 03 00 28 */	fsub f0, f3, f0
/* 80C37118  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3711C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C37120  FC 00 00 32 */	fmul f0, f0, f0
/* 80C37124  FC 01 00 32 */	fmul f0, f1, f0
/* 80C37128  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3712C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C37130  FC 44 00 32 */	fmul f2, f4, f0
/* 80C37134  FC 00 00 32 */	fmul f0, f0, f0
/* 80C37138  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3713C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C37140  FC 02 00 32 */	fmul f0, f2, f0
/* 80C37144  FC 41 00 32 */	fmul f2, f1, f0
/* 80C37148  FC 40 10 18 */	frsp f2, f2
/* 80C3714C  48 00 00 90 */	b lbl_80C371DC
lbl_80C37150:
/* 80C37150  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C37154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C37158  40 80 00 10 */	bge lbl_80C37168
/* 80C3715C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C37160  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C37164  48 00 00 78 */	b lbl_80C371DC
lbl_80C37168:
/* 80C37168  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C3716C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C37170  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C37174  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C37178  7C 03 00 00 */	cmpw r3, r0
/* 80C3717C  41 82 00 14 */	beq lbl_80C37190
/* 80C37180  40 80 00 40 */	bge lbl_80C371C0
/* 80C37184  2C 03 00 00 */	cmpwi r3, 0
/* 80C37188  41 82 00 20 */	beq lbl_80C371A8
/* 80C3718C  48 00 00 34 */	b lbl_80C371C0
lbl_80C37190:
/* 80C37190  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C37194  41 82 00 0C */	beq lbl_80C371A0
/* 80C37198  38 00 00 01 */	li r0, 1
/* 80C3719C  48 00 00 28 */	b lbl_80C371C4
lbl_80C371A0:
/* 80C371A0  38 00 00 02 */	li r0, 2
/* 80C371A4  48 00 00 20 */	b lbl_80C371C4
lbl_80C371A8:
/* 80C371A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C371AC  41 82 00 0C */	beq lbl_80C371B8
/* 80C371B0  38 00 00 05 */	li r0, 5
/* 80C371B4  48 00 00 10 */	b lbl_80C371C4
lbl_80C371B8:
/* 80C371B8  38 00 00 03 */	li r0, 3
/* 80C371BC  48 00 00 08 */	b lbl_80C371C4
lbl_80C371C0:
/* 80C371C0  38 00 00 04 */	li r0, 4
lbl_80C371C4:
/* 80C371C4  2C 00 00 01 */	cmpwi r0, 1
/* 80C371C8  40 82 00 10 */	bne lbl_80C371D8
/* 80C371CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C371D0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C371D4  48 00 00 08 */	b lbl_80C371DC
lbl_80C371D8:
/* 80C371D8  FC 40 08 90 */	fmr f2, f1
lbl_80C371DC:
/* 80C371DC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C371E0  4B 63 04 94 */	b cM_atan2s__Fff
/* 80C371E4  7C 03 00 D0 */	neg r0, r3
/* 80C371E8  B0 1E 09 9E */	sth r0, 0x99e(r30)
/* 80C371EC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80C371F0  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80C371F4  4B 63 04 80 */	b cM_atan2s__Fff
/* 80C371F8  B0 7E 09 9A */	sth r3, 0x99a(r30)
/* 80C371FC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C37200  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80C37204  4B 63 04 70 */	b cM_atan2s__Fff
/* 80C37208  B0 7E 09 A2 */	sth r3, 0x9a2(r30)
/* 80C3720C  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C37210  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C37214  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C37218  48 00 00 E0 */	b lbl_80C372F8
lbl_80C3721C:
/* 80C3721C  38 00 00 01 */	li r0, 1
/* 80C37220  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C37224  38 00 00 02 */	li r0, 2
/* 80C37228  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C3722C  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C37230  38 63 84 FC */	addi r3, r3, stringBase0@l
/* 80C37234  38 80 00 06 */	li r4, 6
/* 80C37238  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C3723C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C37240  3C A5 00 02 */	addis r5, r5, 2
/* 80C37244  38 C0 00 80 */	li r6, 0x80
/* 80C37248  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C3724C  4B 40 50 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C37250  7C 64 1B 78 */	mr r4, r3
/* 80C37254  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C37258  38 A0 00 02 */	li r5, 2
/* 80C3725C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C37260  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C37264  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C37268  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C3726C  4B 3D 9C 04 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C37270  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80C37274  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C37278  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C3727C  4B 63 06 D8 */	b cM_rndF__Ff
/* 80C37280  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80C37284  EC 00 08 2A */	fadds f0, f0, f1
/* 80C37288  D0 1E 09 88 */	stfs f0, 0x988(r30)
/* 80C3728C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C37290  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80C37294  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C37298  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C3729C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C372A0  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80C372A4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C372A8  D0 3E 09 8C */	stfs f1, 0x98c(r30)
/* 80C372AC  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80C372B0  38 00 00 32 */	li r0, 0x32
/* 80C372B4  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80C372B8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C372BC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C372C0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C372C4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C372C8  4B 63 06 8C */	b cM_rndF__Ff
/* 80C372CC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C372D0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C372D4  FC 00 00 1E */	fctiwz f0, f0
/* 80C372D8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C372DC  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C372E0  B0 1E 09 84 */	sth r0, 0x984(r30)
/* 80C372E4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C372E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C372EC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C372F0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80C372F4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C372F8:
/* 80C372F8  38 00 00 00 */	li r0, 0
/* 80C372FC  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C37300  38 61 00 44 */	addi r3, r1, 0x44
/* 80C37304  38 80 FF FF */	li r4, -1
/* 80C37308  4B 44 09 D4 */	b __dt__11dBgS_LinChkFv
lbl_80C3730C:
/* 80C3730C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C37310  4B 72 AF 14 */	b _restgpr_28
/* 80C37314  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C37318  7C 08 03 A6 */	mtlr r0
/* 80C3731C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C37320  4E 80 00 20 */	blr 
