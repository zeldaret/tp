lbl_80559F00:
/* 80559F00  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80559F04  7C 08 02 A6 */	mflr r0
/* 80559F08  90 01 00 74 */	stw r0, 0x74(r1)
/* 80559F0C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80559F10  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80559F14  39 61 00 60 */	addi r11, r1, 0x60
/* 80559F18  4B E0 82 C4 */	b _savegpr_29
/* 80559F1C  7C 7F 1B 78 */	mr r31, r3
/* 80559F20  7C 80 23 78 */	mr r0, r4
/* 80559F24  FF E0 08 90 */	fmr f31, f1
/* 80559F28  7C BD 2B 78 */	mr r29, r5
/* 80559F2C  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 80559F30  3B C3 A5 B4 */	addi r30, r3, m__19daNpc_Kolin_Param_c@l
/* 80559F34  38 A0 00 00 */	li r5, 0
/* 80559F38  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80559F3C  28 04 00 00 */	cmplwi r4, 0
/* 80559F40  41 82 01 40 */	beq lbl_8055A080
/* 80559F44  38 61 00 18 */	addi r3, r1, 0x18
/* 80559F48  7C 05 03 78 */	mr r5, r0
/* 80559F4C  4B D0 CB E8 */	b __mi__4cXyzCFRC3Vec
/* 80559F50  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80559F54  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80559F58  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80559F5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80559F60  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80559F64  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80559F68  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80559F6C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80559F70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80559F74  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80559F78  38 61 00 0C */	addi r3, r1, 0xc
/* 80559F7C  4B DE D1 BC */	b PSVECSquareMag
/* 80559F80  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80559F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80559F88  40 81 00 58 */	ble lbl_80559FE0
/* 80559F8C  FC 00 08 34 */	frsqrte f0, f1
/* 80559F90  C8 9E 01 30 */	lfd f4, 0x130(r30)
/* 80559F94  FC 44 00 32 */	fmul f2, f4, f0
/* 80559F98  C8 7E 01 38 */	lfd f3, 0x138(r30)
/* 80559F9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80559FA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80559FA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80559FA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80559FAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80559FB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80559FB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80559FB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80559FBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80559FC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80559FC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80559FC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80559FCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80559FD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80559FD4  FC 41 00 32 */	fmul f2, f1, f0
/* 80559FD8  FC 40 10 18 */	frsp f2, f2
/* 80559FDC  48 00 00 90 */	b lbl_8055A06C
lbl_80559FE0:
/* 80559FE0  C8 1E 01 40 */	lfd f0, 0x140(r30)
/* 80559FE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80559FE8  40 80 00 10 */	bge lbl_80559FF8
/* 80559FEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80559FF0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80559FF4  48 00 00 78 */	b lbl_8055A06C
lbl_80559FF8:
/* 80559FF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80559FFC  80 81 00 08 */	lwz r4, 8(r1)
/* 8055A000  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8055A004  3C 00 7F 80 */	lis r0, 0x7f80
/* 8055A008  7C 03 00 00 */	cmpw r3, r0
/* 8055A00C  41 82 00 14 */	beq lbl_8055A020
/* 8055A010  40 80 00 40 */	bge lbl_8055A050
/* 8055A014  2C 03 00 00 */	cmpwi r3, 0
/* 8055A018  41 82 00 20 */	beq lbl_8055A038
/* 8055A01C  48 00 00 34 */	b lbl_8055A050
lbl_8055A020:
/* 8055A020  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8055A024  41 82 00 0C */	beq lbl_8055A030
/* 8055A028  38 00 00 01 */	li r0, 1
/* 8055A02C  48 00 00 28 */	b lbl_8055A054
lbl_8055A030:
/* 8055A030  38 00 00 02 */	li r0, 2
/* 8055A034  48 00 00 20 */	b lbl_8055A054
lbl_8055A038:
/* 8055A038  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8055A03C  41 82 00 0C */	beq lbl_8055A048
/* 8055A040  38 00 00 05 */	li r0, 5
/* 8055A044  48 00 00 10 */	b lbl_8055A054
lbl_8055A048:
/* 8055A048  38 00 00 03 */	li r0, 3
/* 8055A04C  48 00 00 08 */	b lbl_8055A054
lbl_8055A050:
/* 8055A050  38 00 00 04 */	li r0, 4
lbl_8055A054:
/* 8055A054  2C 00 00 01 */	cmpwi r0, 1
/* 8055A058  40 82 00 10 */	bne lbl_8055A068
/* 8055A05C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8055A060  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8055A064  48 00 00 08 */	b lbl_8055A06C
lbl_8055A068:
/* 8055A068  FC 40 08 90 */	fmr f2, f1
lbl_8055A06C:
/* 8055A06C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8055A070  4B D0 D6 04 */	b cM_atan2s__Fff
/* 8055A074  7C 03 00 D0 */	neg r0, r3
/* 8055A078  7C 05 07 34 */	extsh r5, r0
/* 8055A07C  7C A5 EA 14 */	add r5, r5, r29
lbl_8055A080:
/* 8055A080  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 8055A084  7C A5 02 14 */	add r5, r5, r0
/* 8055A088  C0 7E 00 FC */	lfs f3, 0xfc(r30)
/* 8055A08C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 8055A090  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 8055A094  C8 5E 01 28 */	lfd f2, 0x128(r30)
/* 8055A098  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8055A09C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055A0A0  3C 60 43 30 */	lis r3, 0x4330
/* 8055A0A4  90 61 00 30 */	stw r3, 0x30(r1)
/* 8055A0A8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8055A0AC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8055A0B0  EC 03 20 28 */	fsubs f0, f3, f4
/* 8055A0B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8055A0B8  7C A0 07 34 */	extsh r0, r5
/* 8055A0BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8055A0C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8055A0C4  90 61 00 38 */	stw r3, 0x38(r1)
/* 8055A0C8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8055A0CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8055A0D0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8055A0D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8055A0D8  FC 00 00 1E */	fctiwz f0, f0
/* 8055A0DC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8055A0E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055A0E4  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 8055A0E8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8055A0EC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8055A0F0  39 61 00 60 */	addi r11, r1, 0x60
/* 8055A0F4  4B E0 81 34 */	b _restgpr_29
/* 8055A0F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8055A0FC  7C 08 03 A6 */	mtlr r0
/* 8055A100  38 21 00 70 */	addi r1, r1, 0x70
/* 8055A104  4E 80 00 20 */	blr 
