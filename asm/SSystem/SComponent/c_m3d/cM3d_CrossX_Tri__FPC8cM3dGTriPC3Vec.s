lbl_80269FBC:
/* 80269FBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80269FC0  7C 08 02 A6 */	mflr r0
/* 80269FC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80269FC8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80269FCC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80269FD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80269FD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80269FD8  7C 7E 1B 78 */	mr r30, r3
/* 80269FDC  7C 9F 23 78 */	mr r31, r4
/* 80269FE0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80269FE4  FC 00 02 10 */	fabs f0, f0
/* 80269FE8  FC 20 00 18 */	frsp f1, f0
/* 80269FEC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80269FF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80269FF4  40 80 00 0C */	bge lbl_8026A000
/* 80269FF8  38 60 00 00 */	li r3, 0
/* 80269FFC  48 00 01 44 */	b lbl_8026A140
lbl_8026A000:
/* 8026A000  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026A004  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026A008  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8026A00C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8026A010  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8026A014  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 8026A018  C0 BE 00 30 */	lfs f5, 0x30(r30)
/* 8026A01C  C0 DE 00 34 */	lfs f6, 0x34(r30)
/* 8026A020  C0 FF 00 04 */	lfs f7, 4(r31)
/* 8026A024  C1 1F 00 08 */	lfs f8, 8(r31)
/* 8026A028  4B FF FD 3D */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026A02C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A030  40 82 00 0C */	bne lbl_8026A03C
/* 8026A034  38 60 00 00 */	li r3, 0
/* 8026A038  48 00 01 08 */	b lbl_8026A140
lbl_8026A03C:
/* 8026A03C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8026A040  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8026A044  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8026A048  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 8026A04C  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A050  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A054  4B FF E8 41 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A058  FF E0 08 90 */	fmr f31, f1
/* 8026A05C  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A060  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A064  4C 40 13 82 */	cror 2, 0, 2
/* 8026A068  40 82 00 64 */	bne lbl_8026A0CC
/* 8026A06C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8026A070  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8026A074  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8026A078  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 8026A07C  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A080  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A084  4B FF E8 11 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A088  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A08C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A090  4C 40 13 82 */	cror 2, 0, 2
/* 8026A094  40 82 00 38 */	bne lbl_8026A0CC
/* 8026A098  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8026A09C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8026A0A0  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8026A0A4  C0 9E 00 1C */	lfs f4, 0x1c(r30)
/* 8026A0A8  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A0AC  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A0B0  4B FF E7 E5 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A0B4  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A0BC  4C 40 13 82 */	cror 2, 0, 2
/* 8026A0C0  40 82 00 0C */	bne lbl_8026A0CC
/* 8026A0C4  38 60 00 01 */	li r3, 1
/* 8026A0C8  48 00 00 78 */	b lbl_8026A140
lbl_8026A0CC:
/* 8026A0CC  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A0D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A0D4  4C 41 13 82 */	cror 2, 1, 2
/* 8026A0D8  40 82 00 64 */	bne lbl_8026A13C
/* 8026A0DC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8026A0E0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8026A0E4  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8026A0E8  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 8026A0EC  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A0F0  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A0F4  4B FF E7 A1 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A0F8  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A100  4C 41 13 82 */	cror 2, 1, 2
/* 8026A104  40 82 00 38 */	bne lbl_8026A13C
/* 8026A108  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8026A10C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8026A110  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8026A114  C0 9E 00 1C */	lfs f4, 0x1c(r30)
/* 8026A118  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8026A11C  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8026A120  4B FF E7 75 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A124  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A12C  4C 41 13 82 */	cror 2, 1, 2
/* 8026A130  40 82 00 0C */	bne lbl_8026A13C
/* 8026A134  38 60 00 01 */	li r3, 1
/* 8026A138  48 00 00 08 */	b lbl_8026A140
lbl_8026A13C:
/* 8026A13C  38 60 00 00 */	li r3, 0
lbl_8026A140:
/* 8026A140  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026A144  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026A148  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026A14C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026A150  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026A154  7C 08 03 A6 */	mtlr r0
/* 8026A158  38 21 00 30 */	addi r1, r1, 0x30
/* 8026A15C  4E 80 00 20 */	blr 
