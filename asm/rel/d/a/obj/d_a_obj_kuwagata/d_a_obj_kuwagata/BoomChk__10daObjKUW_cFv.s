lbl_80C4BFC0:
/* 80C4BFC0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C4BFC4  7C 08 02 A6 */	mflr r0
/* 80C4BFC8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C4BFCC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C4BFD0  4B 71 62 08 */	b _savegpr_28
/* 80C4BFD4  7C 7E 1B 78 */	mr r30, r3
/* 80C4BFD8  3C 60 80 C5 */	lis r3, lit_3775@ha
/* 80C4BFDC  3B E3 D4 90 */	addi r31, r3, lit_3775@l
/* 80C4BFE0  88 1E 09 C1 */	lbz r0, 0x9c1(r30)
/* 80C4BFE4  28 00 00 00 */	cmplwi r0, 0
/* 80C4BFE8  41 82 03 8C */	beq lbl_80C4C374
/* 80C4BFEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4BFF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4BFF4  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80C4BFF8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C4BFFC  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80C4C000  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C4C004  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C4C008  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C4C00C  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80C4C010  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C4C014  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C4C018  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C4C01C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C4C020  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C4C024  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C4C028  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C4C02C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4C030  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C4C034  38 7E 07 04 */	addi r3, r30, 0x704
/* 80C4C038  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C4C03C  38 BE 04 E6 */	addi r5, r30, 0x4e6
/* 80C4C040  38 C0 00 00 */	li r6, 0
/* 80C4C044  38 E0 1C 00 */	li r7, 0x1c00
/* 80C4C048  4B 51 26 0C */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80C4C04C  2C 03 00 00 */	cmpwi r3, 0
/* 80C4C050  41 82 00 24 */	beq lbl_80C4C074
/* 80C4C054  38 7E 07 04 */	addi r3, r30, 0x704
/* 80C4C058  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C4C05C  4B 51 28 20 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C4C060  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C4C064  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C4C068  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4C06C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C4C070  48 00 03 04 */	b lbl_80C4C374
lbl_80C4C074:
/* 80C4C074  38 61 00 44 */	addi r3, r1, 0x44
/* 80C4C078  4B 42 BB F0 */	b __ct__11dBgS_LinChkFv
/* 80C4C07C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80C4C080  4B 42 CD E8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C4C084  38 61 00 44 */	addi r3, r1, 0x44
/* 80C4C088  38 81 00 24 */	addi r4, r1, 0x24
/* 80C4C08C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C4C090  38 C0 00 00 */	li r6, 0
/* 80C4C094  4B 42 BC D0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C4C098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4C09C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4C0A0  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C4C0A4  7F 83 E3 78 */	mr r3, r28
/* 80C4C0A8  38 81 00 44 */	addi r4, r1, 0x44
/* 80C4C0AC  4B 42 83 08 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C4C0B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4C0B4  41 82 01 D0 */	beq lbl_80C4C284
/* 80C4C0B8  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C4C0BC  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C4C0C0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C4C0C4  7F 83 E3 78 */	mr r3, r28
/* 80C4C0C8  38 81 00 58 */	addi r4, r1, 0x58
/* 80C4C0CC  38 A1 00 30 */	addi r5, r1, 0x30
/* 80C4C0D0  4B 42 86 74 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C4C0D4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C4C0D8  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80C4C0DC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C4C0E0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80C4C0E4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C4C0E8  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80C4C0EC  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80C4C0F0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C4C0F4  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80C4C0F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C4C0FC  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80C4C100  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C4C104  38 00 00 00 */	li r0, 0
/* 80C4C108  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C4C10C  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4C110  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80C4C114  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C4C118  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80C4C11C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C4C120  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80C4C124  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C4C128  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4C12C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C4C130  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C4C134  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C4C138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C4C13C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C4C140  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C4C144  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C4C148  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C4C14C  38 61 00 18 */	addi r3, r1, 0x18
/* 80C4C150  38 81 00 0C */	addi r4, r1, 0xc
/* 80C4C154  4B 6F B2 48 */	b PSVECSquareDistance
/* 80C4C158  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4C15C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4C160  40 81 00 58 */	ble lbl_80C4C1B8
/* 80C4C164  FC 00 08 34 */	frsqrte f0, f1
/* 80C4C168  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80C4C16C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4C170  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80C4C174  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4C178  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4C17C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4C180  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4C184  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4C188  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4C18C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4C190  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4C194  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4C198  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4C19C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4C1A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4C1A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4C1A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4C1AC  FC 41 00 32 */	fmul f2, f1, f0
/* 80C4C1B0  FC 40 10 18 */	frsp f2, f2
/* 80C4C1B4  48 00 00 90 */	b lbl_80C4C244
lbl_80C4C1B8:
/* 80C4C1B8  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80C4C1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4C1C0  40 80 00 10 */	bge lbl_80C4C1D0
/* 80C4C1C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C4C1C8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C4C1CC  48 00 00 78 */	b lbl_80C4C244
lbl_80C4C1D0:
/* 80C4C1D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C4C1D4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C4C1D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4C1DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4C1E0  7C 03 00 00 */	cmpw r3, r0
/* 80C4C1E4  41 82 00 14 */	beq lbl_80C4C1F8
/* 80C4C1E8  40 80 00 40 */	bge lbl_80C4C228
/* 80C4C1EC  2C 03 00 00 */	cmpwi r3, 0
/* 80C4C1F0  41 82 00 20 */	beq lbl_80C4C210
/* 80C4C1F4  48 00 00 34 */	b lbl_80C4C228
lbl_80C4C1F8:
/* 80C4C1F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4C1FC  41 82 00 0C */	beq lbl_80C4C208
/* 80C4C200  38 00 00 01 */	li r0, 1
/* 80C4C204  48 00 00 28 */	b lbl_80C4C22C
lbl_80C4C208:
/* 80C4C208  38 00 00 02 */	li r0, 2
/* 80C4C20C  48 00 00 20 */	b lbl_80C4C22C
lbl_80C4C210:
/* 80C4C210  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4C214  41 82 00 0C */	beq lbl_80C4C220
/* 80C4C218  38 00 00 05 */	li r0, 5
/* 80C4C21C  48 00 00 10 */	b lbl_80C4C22C
lbl_80C4C220:
/* 80C4C220  38 00 00 03 */	li r0, 3
/* 80C4C224  48 00 00 08 */	b lbl_80C4C22C
lbl_80C4C228:
/* 80C4C228  38 00 00 04 */	li r0, 4
lbl_80C4C22C:
/* 80C4C22C  2C 00 00 01 */	cmpwi r0, 1
/* 80C4C230  40 82 00 10 */	bne lbl_80C4C240
/* 80C4C234  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C4C238  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C4C23C  48 00 00 08 */	b lbl_80C4C244
lbl_80C4C240:
/* 80C4C240  FC 40 08 90 */	fmr f2, f1
lbl_80C4C244:
/* 80C4C244  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C4C248  4B 61 B4 2C */	b cM_atan2s__Fff
/* 80C4C24C  7C 03 00 D0 */	neg r0, r3
/* 80C4C250  B0 1E 09 9E */	sth r0, 0x99e(r30)
/* 80C4C254  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80C4C258  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80C4C25C  4B 61 B4 18 */	b cM_atan2s__Fff
/* 80C4C260  B0 7E 09 9A */	sth r3, 0x99a(r30)
/* 80C4C264  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80C4C268  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80C4C26C  4B 61 B4 08 */	b cM_atan2s__Fff
/* 80C4C270  B0 7E 09 A2 */	sth r3, 0x9a2(r30)
/* 80C4C274  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C4C278  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C4C27C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C4C280  48 00 00 E0 */	b lbl_80C4C360
lbl_80C4C284:
/* 80C4C284  38 00 00 01 */	li r0, 1
/* 80C4C288  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C4C28C  38 00 00 02 */	li r0, 2
/* 80C4C290  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4C294  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4C298  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4C29C  38 80 00 06 */	li r4, 6
/* 80C4C2A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4C2A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4C2A8  3C A5 00 02 */	addis r5, r5, 2
/* 80C4C2AC  38 C0 00 80 */	li r6, 0x80
/* 80C4C2B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4C2B4  4B 3F 00 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4C2B8  7C 64 1B 78 */	mr r4, r3
/* 80C4C2BC  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C4C2C0  38 A0 00 02 */	li r5, 2
/* 80C4C2C4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4C2C8  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C4C2CC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C4C2D0  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C4C2D4  4B 3C 4B 9C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C4C2D8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C4C2DC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C4C2E0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4C2E4  4B 61 B6 70 */	b cM_rndF__Ff
/* 80C4C2E8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80C4C2EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4C2F0  D0 1E 09 88 */	stfs f0, 0x988(r30)
/* 80C4C2F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C4C2F8  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80C4C2FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C4C300  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C4C304  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C4C308  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80C4C30C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4C310  D0 3E 09 8C */	stfs f1, 0x98c(r30)
/* 80C4C314  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80C4C318  38 00 00 32 */	li r0, 0x32
/* 80C4C31C  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80C4C320  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C4C324  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4C328  EC 02 00 2A */	fadds f0, f2, f0
/* 80C4C32C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C4C330  4B 61 B6 24 */	b cM_rndF__Ff
/* 80C4C334  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C4C338  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4C33C  FC 00 00 1E */	fctiwz f0, f0
/* 80C4C340  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80C4C344  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80C4C348  B0 1E 09 84 */	sth r0, 0x984(r30)
/* 80C4C34C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C4C350  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C4C354  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4C358  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80C4C35C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C4C360:
/* 80C4C360  38 00 00 00 */	li r0, 0
/* 80C4C364  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C4C368  38 61 00 44 */	addi r3, r1, 0x44
/* 80C4C36C  38 80 FF FF */	li r4, -1
/* 80C4C370  4B 42 B9 6C */	b __dt__11dBgS_LinChkFv
lbl_80C4C374:
/* 80C4C374  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80C4C378  4B 71 5E AC */	b _restgpr_28
/* 80C4C37C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C4C380  7C 08 03 A6 */	mtlr r0
/* 80C4C384  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C4C388  4E 80 00 20 */	blr 
