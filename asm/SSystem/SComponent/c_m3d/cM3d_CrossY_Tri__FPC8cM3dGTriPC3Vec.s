lbl_8026A2E4:
/* 8026A2E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026A2E8  7C 08 02 A6 */	mflr r0
/* 8026A2EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026A2F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026A2F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8026A2F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026A2FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026A300  7C 7E 1B 78 */	mr r30, r3
/* 8026A304  7C 9F 23 78 */	mr r31, r4
/* 8026A308  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026A30C  FC 00 02 10 */	fabs f0, f0
/* 8026A310  FC 20 00 18 */	frsp f1, f0
/* 8026A314  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026A318  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A31C  40 80 00 0C */	bge lbl_8026A328
/* 8026A320  38 60 00 00 */	li r3, 0
/* 8026A324  48 00 01 44 */	b lbl_8026A468
lbl_8026A328:
/* 8026A328  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026A32C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026A330  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8026A334  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8026A338  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8026A33C  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 8026A340  C0 BE 00 34 */	lfs f5, 0x34(r30)
/* 8026A344  C0 DE 00 2C */	lfs f6, 0x2c(r30)
/* 8026A348  C0 FF 00 08 */	lfs f7, 8(r31)
/* 8026A34C  C1 1F 00 00 */	lfs f8, 0(r31)
/* 8026A350  4B FF FA 15 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026A354  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A358  40 82 00 0C */	bne lbl_8026A364
/* 8026A35C  38 60 00 00 */	li r3, 0
/* 8026A360  48 00 01 08 */	b lbl_8026A468
lbl_8026A364:
/* 8026A364  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8026A368  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8026A36C  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 8026A370  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 8026A374  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A378  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A37C  4B FF E5 19 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A380  FF E0 08 90 */	fmr f31, f1
/* 8026A384  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A388  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A38C  4C 40 13 82 */	cror 2, 0, 2
/* 8026A390  40 82 00 64 */	bne lbl_8026A3F4
/* 8026A394  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8026A398  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8026A39C  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 8026A3A0  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8026A3A4  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A3A8  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A3AC  4B FF E4 E9 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A3B0  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A3B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A3B8  4C 40 13 82 */	cror 2, 0, 2
/* 8026A3BC  40 82 00 38 */	bne lbl_8026A3F4
/* 8026A3C0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8026A3C4  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8026A3C8  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8026A3CC  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 8026A3D0  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A3D4  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A3D8  4B FF E4 BD */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A3DC  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A3E4  4C 40 13 82 */	cror 2, 0, 2
/* 8026A3E8  40 82 00 0C */	bne lbl_8026A3F4
/* 8026A3EC  38 60 00 01 */	li r3, 1
/* 8026A3F0  48 00 00 78 */	b lbl_8026A468
lbl_8026A3F4:
/* 8026A3F4  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A3F8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A3FC  4C 41 13 82 */	cror 2, 1, 2
/* 8026A400  40 82 00 64 */	bne lbl_8026A464
/* 8026A404  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8026A408  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8026A40C  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 8026A410  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 8026A414  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A418  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A41C  4B FF E4 79 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A420  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A428  4C 41 13 82 */	cror 2, 1, 2
/* 8026A42C  40 82 00 38 */	bne lbl_8026A464
/* 8026A430  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8026A434  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8026A438  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8026A43C  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 8026A440  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A444  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A448  4B FF E4 4D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A44C  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A450  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A454  4C 41 13 82 */	cror 2, 1, 2
/* 8026A458  40 82 00 0C */	bne lbl_8026A464
/* 8026A45C  38 60 00 01 */	li r3, 1
/* 8026A460  48 00 00 08 */	b lbl_8026A468
lbl_8026A464:
/* 8026A464  38 60 00 00 */	li r3, 0
lbl_8026A468:
/* 8026A468  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026A46C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026A470  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026A474  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026A478  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026A47C  7C 08 03 A6 */	mtlr r0
/* 8026A480  38 21 00 30 */	addi r1, r1, 0x30
/* 8026A484  4E 80 00 20 */	blr 
