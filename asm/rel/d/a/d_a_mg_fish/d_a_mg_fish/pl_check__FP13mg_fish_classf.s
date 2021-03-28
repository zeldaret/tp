lbl_80529F68:
/* 80529F68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80529F6C  7C 08 02 A6 */	mflr r0
/* 80529F70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80529F74  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80529F78  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80529F7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80529F80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80529F84  7C 7E 1B 78 */	mr r30, r3
/* 80529F88  FF E0 08 90 */	fmr f31, f1
/* 80529F8C  3C 60 80 53 */	lis r3, lit_3679@ha
/* 80529F90  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 80529F94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80529F98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80529F9C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80529FA0  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80529FA4  FC 00 02 10 */	fabs f0, f0
/* 80529FA8  FC 40 00 18 */	frsp f2, f0
/* 80529FAC  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80529FB0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80529FB4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80529FB8  EC 1F 00 2A */	fadds f0, f31, f0
/* 80529FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80529FC0  40 80 00 0C */	bge lbl_80529FCC
/* 80529FC4  38 60 00 01 */	li r3, 1
/* 80529FC8  48 00 01 2C */	b lbl_8052A0F4
lbl_80529FCC:
/* 80529FCC  3C 60 80 53 */	lis r3, s_hitfish_sub__FPvPv@ha
/* 80529FD0  38 63 9F 10 */	addi r3, r3, s_hitfish_sub__FPvPv@l
/* 80529FD4  7F C4 F3 78 */	mr r4, r30
/* 80529FD8  4B AF 73 60 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80529FDC  7C 64 1B 79 */	or. r4, r3, r3
/* 80529FE0  41 82 01 10 */	beq lbl_8052A0F0
/* 80529FE4  38 61 00 0C */	addi r3, r1, 0xc
/* 80529FE8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80529FEC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80529FF0  4B D3 CB 44 */	b __mi__4cXyzCFRC3Vec
/* 80529FF4  38 61 00 0C */	addi r3, r1, 0xc
/* 80529FF8  4B E1 D1 40 */	b PSVECSquareMag
/* 80529FFC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052A000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A004  40 81 00 58 */	ble lbl_8052A05C
/* 8052A008  FC 00 08 34 */	frsqrte f0, f1
/* 8052A00C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052A010  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A014  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052A018  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A01C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A020  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A024  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A028  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A02C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A030  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A034  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A038  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A03C  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A040  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A044  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A048  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A04C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A050  FC 21 00 32 */	fmul f1, f1, f0
/* 8052A054  FC 20 08 18 */	frsp f1, f1
/* 8052A058  48 00 00 88 */	b lbl_8052A0E0
lbl_8052A05C:
/* 8052A05C  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052A060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A064  40 80 00 10 */	bge lbl_8052A074
/* 8052A068  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052A06C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052A070  48 00 00 70 */	b lbl_8052A0E0
lbl_8052A074:
/* 8052A074  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052A078  80 81 00 08 */	lwz r4, 8(r1)
/* 8052A07C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052A080  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052A084  7C 03 00 00 */	cmpw r3, r0
/* 8052A088  41 82 00 14 */	beq lbl_8052A09C
/* 8052A08C  40 80 00 40 */	bge lbl_8052A0CC
/* 8052A090  2C 03 00 00 */	cmpwi r3, 0
/* 8052A094  41 82 00 20 */	beq lbl_8052A0B4
/* 8052A098  48 00 00 34 */	b lbl_8052A0CC
lbl_8052A09C:
/* 8052A09C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052A0A0  41 82 00 0C */	beq lbl_8052A0AC
/* 8052A0A4  38 00 00 01 */	li r0, 1
/* 8052A0A8  48 00 00 28 */	b lbl_8052A0D0
lbl_8052A0AC:
/* 8052A0AC  38 00 00 02 */	li r0, 2
/* 8052A0B0  48 00 00 20 */	b lbl_8052A0D0
lbl_8052A0B4:
/* 8052A0B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052A0B8  41 82 00 0C */	beq lbl_8052A0C4
/* 8052A0BC  38 00 00 05 */	li r0, 5
/* 8052A0C0  48 00 00 10 */	b lbl_8052A0D0
lbl_8052A0C4:
/* 8052A0C4  38 00 00 03 */	li r0, 3
/* 8052A0C8  48 00 00 08 */	b lbl_8052A0D0
lbl_8052A0CC:
/* 8052A0CC  38 00 00 04 */	li r0, 4
lbl_8052A0D0:
/* 8052A0D0  2C 00 00 01 */	cmpwi r0, 1
/* 8052A0D4  40 82 00 0C */	bne lbl_8052A0E0
/* 8052A0D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052A0DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052A0E0:
/* 8052A0E0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8052A0E4  40 80 00 0C */	bge lbl_8052A0F0
/* 8052A0E8  38 60 00 03 */	li r3, 3
/* 8052A0EC  48 00 00 08 */	b lbl_8052A0F4
lbl_8052A0F0:
/* 8052A0F0  38 60 00 00 */	li r3, 0
lbl_8052A0F4:
/* 8052A0F4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8052A0F8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8052A0FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052A100  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052A104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052A108  7C 08 03 A6 */	mtlr r0
/* 8052A10C  38 21 00 30 */	addi r1, r1, 0x30
/* 8052A110  4E 80 00 20 */	blr 
