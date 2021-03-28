lbl_805CBED0:
/* 805CBED0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805CBED4  7C 08 02 A6 */	mflr r0
/* 805CBED8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805CBEDC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805CBEE0  4B D9 62 E4 */	b _savegpr_23
/* 805CBEE4  7C 7B 1B 78 */	mr r27, r3
/* 805CBEE8  7C 9C 23 78 */	mr r28, r4
/* 805CBEEC  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805CBEF0  3B E3 CA 54 */	addi r31, r3, lit_3932@l
/* 805CBEF4  38 61 00 70 */	addi r3, r1, 0x70
/* 805CBEF8  4B AA B6 84 */	b __ct__11dBgS_GndChkFv
/* 805CBEFC  1F 1C 00 0C */	mulli r24, r28, 0xc
/* 805CBF00  7F 3B C2 14 */	add r25, r27, r24
/* 805CBF04  C0 19 07 78 */	lfs f0, 0x778(r25)
/* 805CBF08  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805CBF0C  C0 39 07 7C */	lfs f1, 0x77c(r25)
/* 805CBF10  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 805CBF14  C0 19 07 80 */	lfs f0, 0x780(r25)
/* 805CBF18  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805CBF1C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805CBF20  EC 01 00 2A */	fadds f0, f1, f0
/* 805CBF24  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805CBF28  38 61 00 70 */	addi r3, r1, 0x70
/* 805CBF2C  38 81 00 64 */	addi r4, r1, 0x64
/* 805CBF30  4B C9 BD F8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805CBF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CBF38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CBF3C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 805CBF40  7F C3 F3 78 */	mr r3, r30
/* 805CBF44  38 81 00 70 */	addi r4, r1, 0x70
/* 805CBF48  4B AA 85 58 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805CBF4C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 805CBF50  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 805CBF54  FC 00 08 18 */	frsp f0, f1
/* 805CBF58  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805CBF5C  40 82 00 0C */	bne lbl_805CBF68
/* 805CBF60  C0 19 07 7C */	lfs f0, 0x77c(r25)
/* 805CBF64  D0 01 00 68 */	stfs f0, 0x68(r1)
lbl_805CBF68:
/* 805CBF68  38 61 00 40 */	addi r3, r1, 0x40
/* 805CBF6C  38 81 00 64 */	addi r4, r1, 0x64
/* 805CBF70  3B 38 07 60 */	addi r25, r24, 0x760
/* 805CBF74  7F 3B CA 14 */	add r25, r27, r25
/* 805CBF78  7F 25 CB 78 */	mr r5, r25
/* 805CBF7C  4B C9 AB B8 */	b __mi__4cXyzCFRC3Vec
/* 805CBF80  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805CBF84  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805CBF88  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805CBF8C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805CBF90  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805CBF94  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805CBF98  38 61 00 58 */	addi r3, r1, 0x58
/* 805CBF9C  4B C9 B1 8C */	b atan2sX_Z__4cXyzCFv
/* 805CBFA0  7C 64 07 34 */	extsh r4, r3
/* 805CBFA4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805CBFA8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805CBFAC  80 63 00 00 */	lwz r3, 0(r3)
/* 805CBFB0  4B A4 04 2C */	b mDoMtx_YrotS__FPA4_fs
/* 805CBFB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805CBFB8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805CBFBC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 805CBFC0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805CBFC4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805CBFC8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805CBFCC  38 61 00 64 */	addi r3, r1, 0x64
/* 805CBFD0  38 81 00 58 */	addi r4, r1, 0x58
/* 805CBFD4  4B CA 4F 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 805CBFD8  38 61 00 58 */	addi r3, r1, 0x58
/* 805CBFDC  7F 24 CB 78 */	mr r4, r25
/* 805CBFE0  7C 65 1B 78 */	mr r5, r3
/* 805CBFE4  4B D7 B0 AC */	b PSVECAdd
/* 805CBFE8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 805CBFEC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805CBFF0  EC 01 00 2A */	fadds f0, f1, f0
/* 805CBFF4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805CBFF8  38 61 00 70 */	addi r3, r1, 0x70
/* 805CBFFC  38 81 00 58 */	addi r4, r1, 0x58
/* 805CC000  4B C9 BD 28 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805CC004  7F C3 F3 78 */	mr r3, r30
/* 805CC008  38 81 00 70 */	addi r4, r1, 0x70
/* 805CC00C  4B AA 84 94 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805CC010  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805CC014  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 805CC018  FC 00 08 18 */	frsp f0, f1
/* 805CC01C  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805CC020  40 82 00 10 */	bne lbl_805CC030
/* 805CC024  7C 7B C2 14 */	add r3, r27, r24
/* 805CC028  C0 03 07 64 */	lfs f0, 0x764(r3)
/* 805CC02C  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_805CC030:
/* 805CC030  38 61 00 34 */	addi r3, r1, 0x34
/* 805CC034  38 81 00 58 */	addi r4, r1, 0x58
/* 805CC038  7F 25 CB 78 */	mr r5, r25
/* 805CC03C  4B C9 AA F8 */	b __mi__4cXyzCFRC3Vec
/* 805CC040  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805CC044  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805CC048  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805CC04C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805CC050  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805CC054  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805CC058  38 61 00 64 */	addi r3, r1, 0x64
/* 805CC05C  4B C9 B0 F4 */	b atan2sY_XZ__4cXyzCFv
/* 805CC060  B0 61 00 20 */	sth r3, 0x20(r1)
/* 805CC064  38 61 00 58 */	addi r3, r1, 0x58
/* 805CC068  4B C9 B0 C0 */	b atan2sX_Z__4cXyzCFv
/* 805CC06C  B0 61 00 22 */	sth r3, 0x22(r1)
/* 805CC070  3B 20 00 00 */	li r25, 0
/* 805CC074  B3 21 00 24 */	sth r25, 0x24(r1)
/* 805CC078  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805CC07C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805CC080  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805CC084  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805CC088  3B A0 00 00 */	li r29, 0
/* 805CC08C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CC090  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 805CC094  57 98 08 3C */	slwi r24, r28, 1
/* 805CC098  3C 60 80 5E */	lis r3, eff_smoke_id@ha
/* 805CC09C  3B 83 D4 70 */	addi r28, r3, eff_smoke_id@l
lbl_805CC0A0:
/* 805CC0A0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805CC0A4  38 00 00 FF */	li r0, 0xff
/* 805CC0A8  90 01 00 08 */	stw r0, 8(r1)
/* 805CC0AC  38 80 00 00 */	li r4, 0
/* 805CC0B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 805CC0B4  38 00 FF FF */	li r0, -1
/* 805CC0B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CC0BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805CC0C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805CC0C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805CC0C8  7C 18 EA 14 */	add r0, r24, r29
/* 805CC0CC  54 04 10 3A */	slwi r4, r0, 2
/* 805CC0D0  3A E4 2D DC */	addi r23, r4, 0x2ddc
/* 805CC0D4  7C 9B B8 2E */	lwzx r4, r27, r23
/* 805CC0D8  38 A0 00 00 */	li r5, 0
/* 805CC0DC  7C DC CA 2E */	lhzx r6, r28, r25
/* 805CC0E0  38 E1 00 58 */	addi r7, r1, 0x58
/* 805CC0E4  39 00 00 00 */	li r8, 0
/* 805CC0E8  39 21 00 20 */	addi r9, r1, 0x20
/* 805CC0EC  39 41 00 4C */	addi r10, r1, 0x4c
/* 805CC0F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805CC0F4  4B A8 13 D8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805CC0F8  7C 7B B9 2E */	stwx r3, r27, r23
/* 805CC0FC  3B BD 00 01 */	addi r29, r29, 1
/* 805CC100  2C 1D 00 02 */	cmpwi r29, 2
/* 805CC104  3B 39 00 02 */	addi r25, r25, 2
/* 805CC108  41 80 FF 98 */	blt lbl_805CC0A0
/* 805CC10C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805CC110  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805CC114  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805CC118  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805CC11C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805CC120  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 805CC124  38 80 00 02 */	li r4, 2
/* 805CC128  38 A0 00 4F */	li r5, 0x4f
/* 805CC12C  38 C1 00 28 */	addi r6, r1, 0x28
/* 805CC130  4B AA 38 F4 */	b StartShock__12dVibration_cFii4cXyz
/* 805CC134  38 61 00 70 */	addi r3, r1, 0x70
/* 805CC138  38 80 FF FF */	li r4, -1
/* 805CC13C  4B AA B4 B4 */	b __dt__11dBgS_GndChkFv
/* 805CC140  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805CC144  4B D9 60 CC */	b _restgpr_23
/* 805CC148  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805CC14C  7C 08 03 A6 */	mtlr r0
/* 805CC150  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805CC154  4E 80 00 20 */	blr 
