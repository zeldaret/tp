lbl_80C39F0C:
/* 80C39F0C  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 80C39F10  7C 08 02 A6 */	mflr r0
/* 80C39F14  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 80C39F18  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80C39F1C  4B 72 82 C0 */	b _savegpr_29
/* 80C39F20  7C 7E 1B 78 */	mr r30, r3
/* 80C39F24  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C39F28  3B E3 C6 74 */	addi r31, r3, lit_3775@l
/* 80C39F2C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C39F30  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C39F34  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80C39F38  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80C39F3C  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80C39F40  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C39F44  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80C39F48  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80C39F4C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80C39F50  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 80C39F54  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80C39F58  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80C39F5C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C39F60  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C39F64  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80C39F68  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 80C39F6C  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80C39F70  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80C39F74  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80C39F78  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C39F7C  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 80C39F80  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80C39F84  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80C39F88  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80C39F8C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80C39F90  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80C39F94  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80C39F98  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80C39F9C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80C39FA0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80C39FA4  38 61 01 38 */	addi r3, r1, 0x138
/* 80C39FA8  4B 43 DC C0 */	b __ct__11dBgS_LinChkFv
/* 80C39FAC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C39FB0  4B 43 DC B8 */	b __ct__11dBgS_LinChkFv
/* 80C39FB4  38 61 01 90 */	addi r3, r1, 0x190
/* 80C39FB8  4B 43 EE B0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C39FBC  38 61 01 20 */	addi r3, r1, 0x120
/* 80C39FC0  4B 43 EE A8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C39FC4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C39FC8  4B 3D 2D 9C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C39FCC  38 7E 07 EA */	addi r3, r30, 0x7ea
/* 80C39FD0  4B 3D 2F 74 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C39FD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C39FD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C39FDC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C39FE0  4B 3D 24 54 */	b mDoMtx_YrotM__FPA4_fs
/* 80C39FE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C39FE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C39FEC  38 81 00 94 */	addi r4, r1, 0x94
/* 80C39FF0  38 A1 00 88 */	addi r5, r1, 0x88
/* 80C39FF4  4B 70 CD 78 */	b PSMTXMultVec
/* 80C39FF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C39FFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3A000  38 81 00 7C */	addi r4, r1, 0x7c
/* 80C3A004  38 A1 00 70 */	addi r5, r1, 0x70
/* 80C3A008  4B 70 CD 64 */	b PSMTXMultVec
/* 80C3A00C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3A010  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3A014  38 81 00 64 */	addi r4, r1, 0x64
/* 80C3A018  38 A1 00 58 */	addi r5, r1, 0x58
/* 80C3A01C  4B 70 CD 50 */	b PSMTXMultVec
/* 80C3A020  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3A024  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3A028  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C3A02C  38 A1 00 40 */	addi r5, r1, 0x40
/* 80C3A030  4B 70 CD 3C */	b PSMTXMultVec
/* 80C3A034  38 61 01 38 */	addi r3, r1, 0x138
/* 80C3A038  38 81 00 70 */	addi r4, r1, 0x70
/* 80C3A03C  38 A1 00 88 */	addi r5, r1, 0x88
/* 80C3A040  38 C0 00 00 */	li r6, 0
/* 80C3A044  4B 43 DD 20 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3A048  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C3A04C  38 81 00 58 */	addi r4, r1, 0x58
/* 80C3A050  38 A1 00 40 */	addi r5, r1, 0x40
/* 80C3A054  38 C0 00 00 */	li r6, 0
/* 80C3A058  4B 43 DD 0C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3A05C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3A060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3A064  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C3A068  7F A3 EB 78 */	mr r3, r29
/* 80C3A06C  38 81 01 38 */	addi r4, r1, 0x138
/* 80C3A070  4B 43 A3 44 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C3A074  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3A078  41 82 01 B0 */	beq lbl_80C3A228
/* 80C3A07C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C3A080  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C3A084  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C3A088  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C3A08C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C3A090  7F A3 EB 78 */	mr r3, r29
/* 80C3A094  38 81 01 4C */	addi r4, r1, 0x14c
/* 80C3A098  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80C3A09C  4B 43 A6 A8 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3A0A0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80C3A0A4  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80C3A0A8  4B 62 D5 CC */	b cM_atan2s__Fff
/* 80C3A0AC  7C 7D 1B 78 */	mr r29, r3
/* 80C3A0B0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3A0B4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3A0B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C3A0BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C3A0C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3A0C4  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80C3A0C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3A0CC  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80C3A0D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3A0D4  38 61 00 34 */	addi r3, r1, 0x34
/* 80C3A0D8  38 81 00 28 */	addi r4, r1, 0x28
/* 80C3A0DC  4B 70 D2 C0 */	b PSVECSquareDistance
/* 80C3A0E0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3A0E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A0E8  40 81 00 58 */	ble lbl_80C3A140
/* 80C3A0EC  FC 00 08 34 */	frsqrte f0, f1
/* 80C3A0F0  C8 9F 00 78 */	lfd f4, 0x78(r31)
/* 80C3A0F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A0F8  C8 7F 00 80 */	lfd f3, 0x80(r31)
/* 80C3A0FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A100  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A104  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A108  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A10C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A110  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A114  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A118  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A11C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A120  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A124  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A128  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A12C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A130  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A134  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3A138  FC 40 10 18 */	frsp f2, f2
/* 80C3A13C  48 00 00 90 */	b lbl_80C3A1CC
lbl_80C3A140:
/* 80C3A140  C8 1F 00 88 */	lfd f0, 0x88(r31)
/* 80C3A144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A148  40 80 00 10 */	bge lbl_80C3A158
/* 80C3A14C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C3A150  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C3A154  48 00 00 78 */	b lbl_80C3A1CC
lbl_80C3A158:
/* 80C3A158  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C3A15C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C3A160  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3A164  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3A168  7C 03 00 00 */	cmpw r3, r0
/* 80C3A16C  41 82 00 14 */	beq lbl_80C3A180
/* 80C3A170  40 80 00 40 */	bge lbl_80C3A1B0
/* 80C3A174  2C 03 00 00 */	cmpwi r3, 0
/* 80C3A178  41 82 00 20 */	beq lbl_80C3A198
/* 80C3A17C  48 00 00 34 */	b lbl_80C3A1B0
lbl_80C3A180:
/* 80C3A180  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3A184  41 82 00 0C */	beq lbl_80C3A190
/* 80C3A188  38 00 00 01 */	li r0, 1
/* 80C3A18C  48 00 00 28 */	b lbl_80C3A1B4
lbl_80C3A190:
/* 80C3A190  38 00 00 02 */	li r0, 2
/* 80C3A194  48 00 00 20 */	b lbl_80C3A1B4
lbl_80C3A198:
/* 80C3A198  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3A19C  41 82 00 0C */	beq lbl_80C3A1A8
/* 80C3A1A0  38 00 00 05 */	li r0, 5
/* 80C3A1A4  48 00 00 10 */	b lbl_80C3A1B4
lbl_80C3A1A8:
/* 80C3A1A8  38 00 00 03 */	li r0, 3
/* 80C3A1AC  48 00 00 08 */	b lbl_80C3A1B4
lbl_80C3A1B0:
/* 80C3A1B0  38 00 00 04 */	li r0, 4
lbl_80C3A1B4:
/* 80C3A1B4  2C 00 00 01 */	cmpwi r0, 1
/* 80C3A1B8  40 82 00 10 */	bne lbl_80C3A1C8
/* 80C3A1BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C3A1C0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C3A1C4  48 00 00 08 */	b lbl_80C3A1CC
lbl_80C3A1C8:
/* 80C3A1C8  FC 40 08 90 */	fmr f2, f1
lbl_80C3A1CC:
/* 80C3A1CC  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 80C3A1D0  D0 1E 07 C8 */	stfs f0, 0x7c8(r30)
/* 80C3A1D4  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 80C3A1D8  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 80C3A1DC  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 80C3A1E0  D0 1E 07 D0 */	stfs f0, 0x7d0(r30)
/* 80C3A1E4  B3 BE 07 F6 */	sth r29, 0x7f6(r30)
/* 80C3A1E8  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80C3A1EC  4B 62 D4 88 */	b cM_atan2s__Fff
/* 80C3A1F0  7C 03 00 D0 */	neg r0, r3
/* 80C3A1F4  B0 1E 07 C6 */	sth r0, 0x7c6(r30)
/* 80C3A1F8  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 80C3A1FC  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 80C3A200  4B 62 D4 74 */	b cM_atan2s__Fff
/* 80C3A204  B0 7E 07 C2 */	sth r3, 0x7c2(r30)
/* 80C3A208  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80C3A20C  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80C3A210  4B 62 D4 64 */	b cM_atan2s__Fff
/* 80C3A214  B0 7E 07 F6 */	sth r3, 0x7f6(r30)
/* 80C3A218  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C3A21C  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C3A220  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C3A224  48 00 01 D0 */	b lbl_80C3A3F4
lbl_80C3A228:
/* 80C3A228  7F A3 EB 78 */	mr r3, r29
/* 80C3A22C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80C3A230  4B 43 A1 84 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C3A234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3A238  41 82 01 B0 */	beq lbl_80C3A3E8
/* 80C3A23C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C3A240  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C3A244  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C3A248  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C3A24C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80C3A250  7F A3 EB 78 */	mr r3, r29
/* 80C3A254  38 81 00 DC */	addi r4, r1, 0xdc
/* 80C3A258  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80C3A25C  4B 43 A4 E8 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3A260  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80C3A264  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 80C3A268  4B 62 D4 0C */	b cM_atan2s__Fff
/* 80C3A26C  7C 7D 1B 78 */	mr r29, r3
/* 80C3A270  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3A274  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C3A278  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C3A27C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C3A280  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C3A284  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80C3A288  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3A28C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80C3A290  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3A294  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C3A298  38 81 00 10 */	addi r4, r1, 0x10
/* 80C3A29C  4B 70 D1 00 */	b PSVECSquareDistance
/* 80C3A2A0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3A2A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A2A8  40 81 00 58 */	ble lbl_80C3A300
/* 80C3A2AC  FC 00 08 34 */	frsqrte f0, f1
/* 80C3A2B0  C8 9F 00 78 */	lfd f4, 0x78(r31)
/* 80C3A2B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A2B8  C8 7F 00 80 */	lfd f3, 0x80(r31)
/* 80C3A2BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A2C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A2C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A2C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A2CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A2D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A2D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A2D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A2DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A2E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3A2E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3A2E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3A2EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3A2F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3A2F4  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3A2F8  FC 40 10 18 */	frsp f2, f2
/* 80C3A2FC  48 00 00 90 */	b lbl_80C3A38C
lbl_80C3A300:
/* 80C3A300  C8 1F 00 88 */	lfd f0, 0x88(r31)
/* 80C3A304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A308  40 80 00 10 */	bge lbl_80C3A318
/* 80C3A30C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C3A310  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C3A314  48 00 00 78 */	b lbl_80C3A38C
lbl_80C3A318:
/* 80C3A318  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C3A31C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C3A320  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3A324  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3A328  7C 03 00 00 */	cmpw r3, r0
/* 80C3A32C  41 82 00 14 */	beq lbl_80C3A340
/* 80C3A330  40 80 00 40 */	bge lbl_80C3A370
/* 80C3A334  2C 03 00 00 */	cmpwi r3, 0
/* 80C3A338  41 82 00 20 */	beq lbl_80C3A358
/* 80C3A33C  48 00 00 34 */	b lbl_80C3A370
lbl_80C3A340:
/* 80C3A340  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3A344  41 82 00 0C */	beq lbl_80C3A350
/* 80C3A348  38 00 00 01 */	li r0, 1
/* 80C3A34C  48 00 00 28 */	b lbl_80C3A374
lbl_80C3A350:
/* 80C3A350  38 00 00 02 */	li r0, 2
/* 80C3A354  48 00 00 20 */	b lbl_80C3A374
lbl_80C3A358:
/* 80C3A358  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3A35C  41 82 00 0C */	beq lbl_80C3A368
/* 80C3A360  38 00 00 05 */	li r0, 5
/* 80C3A364  48 00 00 10 */	b lbl_80C3A374
lbl_80C3A368:
/* 80C3A368  38 00 00 03 */	li r0, 3
/* 80C3A36C  48 00 00 08 */	b lbl_80C3A374
lbl_80C3A370:
/* 80C3A370  38 00 00 04 */	li r0, 4
lbl_80C3A374:
/* 80C3A374  2C 00 00 01 */	cmpwi r0, 1
/* 80C3A378  40 82 00 10 */	bne lbl_80C3A388
/* 80C3A37C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C3A380  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C3A384  48 00 00 08 */	b lbl_80C3A38C
lbl_80C3A388:
/* 80C3A388  FC 40 08 90 */	fmr f2, f1
lbl_80C3A38C:
/* 80C3A38C  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80C3A390  D0 1E 07 C8 */	stfs f0, 0x7c8(r30)
/* 80C3A394  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80C3A398  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 80C3A39C  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80C3A3A0  D0 1E 07 D0 */	stfs f0, 0x7d0(r30)
/* 80C3A3A4  B3 BE 07 F6 */	sth r29, 0x7f6(r30)
/* 80C3A3A8  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80C3A3AC  4B 62 D2 C8 */	b cM_atan2s__Fff
/* 80C3A3B0  7C 03 00 D0 */	neg r0, r3
/* 80C3A3B4  B0 1E 07 C6 */	sth r0, 0x7c6(r30)
/* 80C3A3B8  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80C3A3BC  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 80C3A3C0  4B 62 D2 B4 */	b cM_atan2s__Fff
/* 80C3A3C4  B0 7E 07 C2 */	sth r3, 0x7c2(r30)
/* 80C3A3C8  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80C3A3CC  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 80C3A3D0  4B 62 D2 A4 */	b cM_atan2s__Fff
/* 80C3A3D4  B0 7E 07 F6 */	sth r3, 0x7f6(r30)
/* 80C3A3D8  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C3A3DC  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C3A3E0  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80C3A3E4  48 00 00 10 */	b lbl_80C3A3F4
lbl_80C3A3E8:
/* 80C3A3E8  A8 7E 07 E0 */	lha r3, 0x7e0(r30)
/* 80C3A3EC  38 03 01 00 */	addi r0, r3, 0x100
/* 80C3A3F0  B0 1E 07 E0 */	sth r0, 0x7e0(r30)
lbl_80C3A3F4:
/* 80C3A3F4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C3A3F8  38 9E 07 C8 */	addi r4, r30, 0x7c8
/* 80C3A3FC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C3A400  4B 63 63 AC */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80C3A404  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C3A408  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80C3A40C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C3A410  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80C3A414  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C3A418  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80C3A41C  38 7E 07 EA */	addi r3, r30, 0x7ea
/* 80C3A420  A8 9E 07 C2 */	lha r4, 0x7c2(r30)
/* 80C3A424  38 A0 00 05 */	li r5, 5
/* 80C3A428  38 C0 02 00 */	li r6, 0x200
/* 80C3A42C  4B 63 61 DC */	b cLib_addCalcAngleS2__FPssss
/* 80C3A430  38 7E 07 EE */	addi r3, r30, 0x7ee
/* 80C3A434  A8 9E 07 C6 */	lha r4, 0x7c6(r30)
/* 80C3A438  38 A0 00 05 */	li r5, 5
/* 80C3A43C  38 C0 02 00 */	li r6, 0x200
/* 80C3A440  4B 63 61 C8 */	b cLib_addCalcAngleS2__FPssss
/* 80C3A444  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C3A448  A8 9E 07 E0 */	lha r4, 0x7e0(r30)
/* 80C3A44C  38 A0 00 10 */	li r5, 0x10
/* 80C3A450  38 C0 01 00 */	li r6, 0x100
/* 80C3A454  4B 63 61 B4 */	b cLib_addCalcAngleS2__FPssss
/* 80C3A458  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C3A45C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C3A460  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C3A464  38 80 FF FF */	li r4, -1
/* 80C3A468  4B 43 D8 74 */	b __dt__11dBgS_LinChkFv
/* 80C3A46C  38 61 01 38 */	addi r3, r1, 0x138
/* 80C3A470  38 80 FF FF */	li r4, -1
/* 80C3A474  4B 43 D8 68 */	b __dt__11dBgS_LinChkFv
/* 80C3A478  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 80C3A47C  4B 72 7D AC */	b _restgpr_29
/* 80C3A480  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 80C3A484  7C 08 03 A6 */	mtlr r0
/* 80C3A488  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 80C3A48C  4E 80 00 20 */	blr 
