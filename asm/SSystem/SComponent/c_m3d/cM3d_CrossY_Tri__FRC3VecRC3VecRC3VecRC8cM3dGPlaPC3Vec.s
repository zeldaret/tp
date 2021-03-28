lbl_8026A60C:
/* 8026A60C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026A610  7C 08 02 A6 */	mflr r0
/* 8026A614  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026A618  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026A61C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8026A620  39 61 00 20 */	addi r11, r1, 0x20
/* 8026A624  48 0F 7B B5 */	bl _savegpr_28
/* 8026A628  7C 7C 1B 78 */	mr r28, r3
/* 8026A62C  7C 9D 23 78 */	mr r29, r4
/* 8026A630  7C BE 2B 78 */	mr r30, r5
/* 8026A634  7C FF 3B 78 */	mr r31, r7
/* 8026A638  C0 06 00 04 */	lfs f0, 4(r6)
/* 8026A63C  FC 00 02 10 */	fabs f0, f0
/* 8026A640  FC 20 00 18 */	frsp f1, f0
/* 8026A644  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026A648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A64C  40 80 00 0C */	bge lbl_8026A658
/* 8026A650  38 60 00 00 */	li r3, 0
/* 8026A654  48 00 01 44 */	b lbl_8026A798
lbl_8026A658:
/* 8026A658  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026A65C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026A660  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8026A664  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8026A668  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8026A66C  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8026A670  C0 BE 00 08 */	lfs f5, 8(r30)
/* 8026A674  C0 DE 00 00 */	lfs f6, 0(r30)
/* 8026A678  C0 FF 00 08 */	lfs f7, 8(r31)
/* 8026A67C  C1 1F 00 00 */	lfs f8, 0(r31)
/* 8026A680  4B FF F6 E5 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026A684  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A688  40 82 00 0C */	bne lbl_8026A694
/* 8026A68C  38 60 00 00 */	li r3, 0
/* 8026A690  48 00 01 08 */	b lbl_8026A798
lbl_8026A694:
/* 8026A694  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8026A698  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8026A69C  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8026A6A0  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8026A6A4  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A6A8  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A6AC  4B FF E1 E9 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A6B0  FF E0 08 90 */	fmr f31, f1
/* 8026A6B4  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A6B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A6BC  4C 40 13 82 */	cror 2, 0, 2
/* 8026A6C0  40 82 00 64 */	bne lbl_8026A724
/* 8026A6C4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8026A6C8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8026A6CC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8026A6D0  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8026A6D4  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A6D8  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A6DC  4B FF E1 B9 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A6E0  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A6E8  4C 40 13 82 */	cror 2, 0, 2
/* 8026A6EC  40 82 00 38 */	bne lbl_8026A724
/* 8026A6F0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8026A6F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8026A6F8  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8026A6FC  C0 9C 00 00 */	lfs f4, 0(r28)
/* 8026A700  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A704  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A708  4B FF E1 8D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A70C  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026A710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A714  4C 40 13 82 */	cror 2, 0, 2
/* 8026A718  40 82 00 0C */	bne lbl_8026A724
/* 8026A71C  38 60 00 01 */	li r3, 1
/* 8026A720  48 00 00 78 */	b lbl_8026A798
lbl_8026A724:
/* 8026A724  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A728  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026A72C  4C 41 13 82 */	cror 2, 1, 2
/* 8026A730  40 82 00 64 */	bne lbl_8026A794
/* 8026A734  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8026A738  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8026A73C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8026A740  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8026A744  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A748  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A74C  4B FF E1 49 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A750  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A758  4C 41 13 82 */	cror 2, 1, 2
/* 8026A75C  40 82 00 38 */	bne lbl_8026A794
/* 8026A760  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8026A764  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8026A768  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8026A76C  C0 9C 00 00 */	lfs f4, 0(r28)
/* 8026A770  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A774  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A778  4B FF E1 1D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A77C  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A784  4C 41 13 82 */	cror 2, 1, 2
/* 8026A788  40 82 00 0C */	bne lbl_8026A794
/* 8026A78C  38 60 00 01 */	li r3, 1
/* 8026A790  48 00 00 08 */	b lbl_8026A798
lbl_8026A794:
/* 8026A794  38 60 00 00 */	li r3, 0
lbl_8026A798:
/* 8026A798  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026A79C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026A7A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8026A7A4  48 0F 7A 81 */	bl _restgpr_28
/* 8026A7A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026A7AC  7C 08 03 A6 */	mtlr r0
/* 8026A7B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8026A7B4  4E 80 00 20 */	blr 
