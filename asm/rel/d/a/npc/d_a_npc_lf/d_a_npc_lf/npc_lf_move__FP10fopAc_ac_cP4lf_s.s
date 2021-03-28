lbl_80A69D90:
/* 80A69D90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A69D94  7C 08 02 A6 */	mflr r0
/* 80A69D98  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A69D9C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A69DA0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A69DA4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80A69DA8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80A69DAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80A69DB0  4B 8F 84 28 */	b _savegpr_28
/* 80A69DB4  7C 7C 1B 78 */	mr r28, r3
/* 80A69DB8  7C 9D 23 78 */	mr r29, r4
/* 80A69DBC  3C 80 80 A7 */	lis r4, lit_3769@ha
/* 80A69DC0  3B E4 A9 7C */	addi r31, r4, lit_3769@l
/* 80A69DC4  A8 1D 00 18 */	lha r0, 0x18(r29)
/* 80A69DC8  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 80A69DCC  40 82 00 18 */	bne lbl_80A69DE4
/* 80A69DD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A69DD4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A69DD8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A69DDC  4B 5B 0A 04 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A69DE0  D0 3D 00 34 */	stfs f1, 0x34(r29)
lbl_80A69DE4:
/* 80A69DE4  A8 1D 00 1C */	lha r0, 0x1c(r29)
/* 80A69DE8  2C 00 00 01 */	cmpwi r0, 1
/* 80A69DEC  41 82 01 D0 */	beq lbl_80A69FBC
/* 80A69DF0  40 80 02 18 */	bge lbl_80A6A008
/* 80A69DF4  2C 00 00 00 */	cmpwi r0, 0
/* 80A69DF8  40 80 00 08 */	bge lbl_80A69E00
/* 80A69DFC  48 00 02 0C */	b lbl_80A6A008
lbl_80A69E00:
/* 80A69E00  A8 1D 00 38 */	lha r0, 0x38(r29)
/* 80A69E04  2C 00 00 00 */	cmpwi r0, 0
/* 80A69E08  40 82 01 A0 */	bne lbl_80A69FA8
/* 80A69E0C  3B C0 00 00 */	li r30, 0
/* 80A69E10  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80A69E14  C3 DF 00 10 */	lfs f30, 0x10(r31)
lbl_80A69E18:
/* 80A69E18  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80A69E1C  4B 7F DB 70 */	b cM_rndFX__Ff
/* 80A69E20  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A69E24  EC 00 08 2A */	fadds f0, f0, f1
/* 80A69E28  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80A69E2C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80A69E30  4B 7F DB 5C */	b cM_rndFX__Ff
/* 80A69E34  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A69E38  EC 00 08 2A */	fadds f0, f0, f1
/* 80A69E3C  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80A69E40  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80A69E44  4B 7F DB 48 */	b cM_rndFX__Ff
/* 80A69E48  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A69E4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A69E50  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80A69E54  38 61 00 18 */	addi r3, r1, 0x18
/* 80A69E58  38 9D 00 20 */	addi r4, r29, 0x20
/* 80A69E5C  38 BD 00 04 */	addi r5, r29, 4
/* 80A69E60  4B 7F CC D4 */	b __mi__4cXyzCFRC3Vec
/* 80A69E64  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A69E68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A69E6C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A69E70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A69E74  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A69E78  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A69E7C  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80A69E80  38 61 00 24 */	addi r3, r1, 0x24
/* 80A69E84  4B 8D D2 B4 */	b PSVECSquareMag
/* 80A69E88  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A69E8C  40 81 00 58 */	ble lbl_80A69EE4
/* 80A69E90  FC 00 08 34 */	frsqrte f0, f1
/* 80A69E94  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80A69E98  FC 44 00 32 */	fmul f2, f4, f0
/* 80A69E9C  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80A69EA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A69EA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A69EA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A69EAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A69EB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A69EB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A69EB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A69EBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A69EC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A69EC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A69EC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A69ECC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A69ED0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A69ED4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A69ED8  FC 21 00 32 */	fmul f1, f1, f0
/* 80A69EDC  FC 20 08 18 */	frsp f1, f1
/* 80A69EE0  48 00 00 88 */	b lbl_80A69F68
lbl_80A69EE4:
/* 80A69EE4  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80A69EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A69EEC  40 80 00 10 */	bge lbl_80A69EFC
/* 80A69EF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A69EF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A69EF8  48 00 00 70 */	b lbl_80A69F68
lbl_80A69EFC:
/* 80A69EFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A69F00  80 81 00 08 */	lwz r4, 8(r1)
/* 80A69F04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A69F08  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A69F0C  7C 03 00 00 */	cmpw r3, r0
/* 80A69F10  41 82 00 14 */	beq lbl_80A69F24
/* 80A69F14  40 80 00 40 */	bge lbl_80A69F54
/* 80A69F18  2C 03 00 00 */	cmpwi r3, 0
/* 80A69F1C  41 82 00 20 */	beq lbl_80A69F3C
/* 80A69F20  48 00 00 34 */	b lbl_80A69F54
lbl_80A69F24:
/* 80A69F24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A69F28  41 82 00 0C */	beq lbl_80A69F34
/* 80A69F2C  38 00 00 01 */	li r0, 1
/* 80A69F30  48 00 00 28 */	b lbl_80A69F58
lbl_80A69F34:
/* 80A69F34  38 00 00 02 */	li r0, 2
/* 80A69F38  48 00 00 20 */	b lbl_80A69F58
lbl_80A69F3C:
/* 80A69F3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A69F40  41 82 00 0C */	beq lbl_80A69F4C
/* 80A69F44  38 00 00 05 */	li r0, 5
/* 80A69F48  48 00 00 10 */	b lbl_80A69F58
lbl_80A69F4C:
/* 80A69F4C  38 00 00 03 */	li r0, 3
/* 80A69F50  48 00 00 08 */	b lbl_80A69F58
lbl_80A69F54:
/* 80A69F54  38 00 00 04 */	li r0, 4
lbl_80A69F58:
/* 80A69F58  2C 00 00 01 */	cmpwi r0, 1
/* 80A69F5C  40 82 00 0C */	bne lbl_80A69F68
/* 80A69F60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A69F64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A69F68:
/* 80A69F68  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A69F6C  40 81 00 30 */	ble lbl_80A69F9C
/* 80A69F70  38 00 00 01 */	li r0, 1
/* 80A69F74  B0 1D 00 1C */	sth r0, 0x1c(r29)
/* 80A69F78  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80A69F7C  4B 7F D9 D8 */	b cM_rndF__Ff
/* 80A69F80  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80A69F84  EC 00 08 2A */	fadds f0, f0, f1
/* 80A69F88  FC 00 00 1E */	fctiwz f0, f0
/* 80A69F8C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A69F90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A69F94  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 80A69F98  48 00 00 10 */	b lbl_80A69FA8
lbl_80A69F9C:
/* 80A69F9C  3B DE 00 01 */	addi r30, r30, 1
/* 80A69FA0  2C 1E 00 64 */	cmpwi r30, 0x64
/* 80A69FA4  41 80 FE 74 */	blt lbl_80A69E18
lbl_80A69FA8:
/* 80A69FA8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80A69FAC  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80A69FB0  3B C0 00 00 */	li r30, 0
/* 80A69FB4  C3 FF 00 48 */	lfs f31, 0x48(r31)
/* 80A69FB8  48 00 00 50 */	b lbl_80A6A008
lbl_80A69FBC:
/* 80A69FBC  A8 1D 00 38 */	lha r0, 0x38(r29)
/* 80A69FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80A69FC4  40 82 00 2C */	bne lbl_80A69FF0
/* 80A69FC8  38 00 00 00 */	li r0, 0
/* 80A69FCC  B0 1D 00 1C */	sth r0, 0x1c(r29)
/* 80A69FD0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A69FD4  4B 7F D9 80 */	b cM_rndF__Ff
/* 80A69FD8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A69FDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A69FE0  FC 00 00 1E */	fctiwz f0, f0
/* 80A69FE4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A69FE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A69FEC  B0 1D 00 38 */	sth r0, 0x38(r29)
lbl_80A69FF0:
/* 80A69FF0  3C 60 80 A7 */	lis r3, l_HIO@ha
/* 80A69FF4  38 63 AA A0 */	addi r3, r3, l_HIO@l
/* 80A69FF8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A69FFC  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80A6A000  3B C0 04 00 */	li r30, 0x400
/* 80A6A004  C3 FF 00 50 */	lfs f31, 0x50(r31)
lbl_80A6A008:
/* 80A6A008  A8 1D 00 3A */	lha r0, 0x3a(r29)
/* 80A6A00C  2C 00 00 00 */	cmpwi r0, 0
/* 80A6A010  41 82 00 20 */	beq lbl_80A6A030
/* 80A6A014  C3 FF 00 50 */	lfs f31, 0x50(r31)
/* 80A6A018  3C 60 80 A7 */	lis r3, l_HIO@ha
/* 80A6A01C  38 63 AA A0 */	addi r3, r3, l_HIO@l
/* 80A6A020  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A6A024  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80A6A028  3B C0 06 00 */	li r30, 0x600
/* 80A6A02C  48 00 00 50 */	b lbl_80A6A07C
lbl_80A6A030:
/* 80A6A030  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80A6A034  3C 60 80 A7 */	lis r3, l_HIO@ha
/* 80A6A038  38 63 AA A0 */	addi r3, r3, l_HIO@l
/* 80A6A03C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A6A040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A6A044  40 80 00 38 */	bge lbl_80A6A07C
/* 80A6A048  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80A6A04C  4B 7F D9 08 */	b cM_rndF__Ff
/* 80A6A050  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80A6A054  EC 00 08 2A */	fadds f0, f0, f1
/* 80A6A058  FC 00 00 1E */	fctiwz f0, f0
/* 80A6A05C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A6A060  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6A064  B0 1D 00 3A */	sth r0, 0x3a(r29)
/* 80A6A068  A8 1D 00 1C */	lha r0, 0x1c(r29)
/* 80A6A06C  2C 00 00 01 */	cmpwi r0, 1
/* 80A6A070  40 82 00 0C */	bne lbl_80A6A07C
/* 80A6A074  38 00 00 00 */	li r0, 0
/* 80A6A078  B0 1D 00 1C */	sth r0, 0x1c(r29)
lbl_80A6A07C:
/* 80A6A07C  38 61 00 0C */	addi r3, r1, 0xc
/* 80A6A080  38 9D 00 20 */	addi r4, r29, 0x20
/* 80A6A084  38 BD 00 04 */	addi r5, r29, 4
/* 80A6A088  4B 7F CA AC */	b __mi__4cXyzCFRC3Vec
/* 80A6A08C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80A6A090  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A6A094  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A6A098  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A6A09C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80A6A0A0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A6A0A4  AB 9D 00 12 */	lha r28, 0x12(r29)
/* 80A6A0A8  4B 7F D5 CC */	b cM_atan2s__Fff
/* 80A6A0AC  7C 64 1B 78 */	mr r4, r3
/* 80A6A0B0  38 7D 00 12 */	addi r3, r29, 0x12
/* 80A6A0B4  38 A0 00 04 */	li r5, 4
/* 80A6A0B8  7F C6 F3 78 */	mr r6, r30
/* 80A6A0BC  4B 80 65 4C */	b cLib_addCalcAngleS2__FPssss
/* 80A6A0C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A6A0C4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A6A0C8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A6A0CC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A6A0D0  EC 41 00 2A */	fadds f2, f1, f0
/* 80A6A0D4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A6A0D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A6A0DC  40 81 00 0C */	ble lbl_80A6A0E8
/* 80A6A0E0  FC 00 10 34 */	frsqrte f0, f2
/* 80A6A0E4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A6A0E8:
/* 80A6A0E8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A6A0EC  4B 7F D5 88 */	b cM_atan2s__Fff
/* 80A6A0F0  7C 03 00 D0 */	neg r0, r3
/* 80A6A0F4  7C 04 07 34 */	extsh r4, r0
/* 80A6A0F8  38 7D 00 10 */	addi r3, r29, 0x10
/* 80A6A0FC  38 A0 00 04 */	li r5, 4
/* 80A6A100  7F C6 F3 78 */	mr r6, r30
/* 80A6A104  4B 80 65 04 */	b cLib_addCalcAngleS2__FPssss
/* 80A6A108  A8 1D 00 12 */	lha r0, 0x12(r29)
/* 80A6A10C  7F 80 E0 50 */	subf r28, r0, r28
/* 80A6A110  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80A6A114  7F 80 07 34 */	extsh r0, r28
/* 80A6A118  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80A6A11C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6A120  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6A124  3C 00 43 30 */	lis r0, 0x4330
/* 80A6A128  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A6A12C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A6A130  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A6A134  EC 22 00 32 */	fmuls f1, f2, f0
/* 80A6A138  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80A6A13C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A6A140  40 81 00 0C */	ble lbl_80A6A14C
/* 80A6A144  FC 20 00 90 */	fmr f1, f0
/* 80A6A148  48 00 00 14 */	b lbl_80A6A15C
lbl_80A6A14C:
/* 80A6A14C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80A6A150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A6A154  40 80 00 08 */	bge lbl_80A6A15C
/* 80A6A158  FC 20 00 90 */	fmr f1, f0
lbl_80A6A15C:
/* 80A6A15C  38 7D 00 58 */	addi r3, r29, 0x58
/* 80A6A160  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80A6A164  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80A6A168  4B 80 58 D4 */	b cLib_addCalc2__FPffff
/* 80A6A16C  38 7D 00 44 */	addi r3, r29, 0x44
/* 80A6A170  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 80A6A174  3C 80 80 A7 */	lis r4, l_HIO@ha
/* 80A6A178  38 84 AA A0 */	addi r4, r4, l_HIO@l
/* 80A6A17C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A6A180  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A6A184  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A6A188  FC 60 F8 90 */	fmr f3, f31
/* 80A6A18C  4B 80 58 B0 */	b cLib_addCalc2__FPffff
/* 80A6A190  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A6A194  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A6A198  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80A6A19C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80A6A1A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A6A1A4  4B 8F 80 80 */	b _restgpr_28
/* 80A6A1A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A6A1AC  7C 08 03 A6 */	mtlr r0
/* 80A6A1B0  38 21 00 70 */	addi r1, r1, 0x70
/* 80A6A1B4  4E 80 00 20 */	blr 
