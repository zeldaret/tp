lbl_8026AF20:
/* 8026AF20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026AF24  7C 08 02 A6 */	mflr r0
/* 8026AF28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026AF2C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026AF30  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8026AF34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026AF38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026AF3C  7C 7E 1B 78 */	mr r30, r3
/* 8026AF40  7C 9F 23 78 */	mr r31, r4
/* 8026AF44  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026AF48  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026AF4C  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8026AF50  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8026AF54  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 8026AF58  C0 83 00 24 */	lfs f4, 0x24(r3)
/* 8026AF5C  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 8026AF60  C0 C3 00 30 */	lfs f6, 0x30(r3)
/* 8026AF64  C0 E4 00 00 */	lfs f7, 0(r4)
/* 8026AF68  C1 04 00 04 */	lfs f8, 4(r4)
/* 8026AF6C  4B FF ED F9 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026AF70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026AF74  40 82 00 0C */	bne lbl_8026AF80
/* 8026AF78  38 60 00 00 */	li r3, 0
/* 8026AF7C  48 00 01 08 */	b lbl_8026B084
lbl_8026AF80:
/* 8026AF80  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8026AF84  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8026AF88  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8026AF8C  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8026AF90  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AF94  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AF98  4B FF D8 FD */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AF9C  FF E0 08 90 */	fmr f31, f1
/* 8026AFA0  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026AFA4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026AFA8  4C 40 13 82 */	cror 2, 0, 2
/* 8026AFAC  40 82 00 64 */	bne lbl_8026B010
/* 8026AFB0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8026AFB4  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8026AFB8  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 8026AFBC  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 8026AFC0  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AFC4  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AFC8  4B FF D8 CD */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AFCC  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026AFD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AFD4  4C 40 13 82 */	cror 2, 0, 2
/* 8026AFD8  40 82 00 38 */	bne lbl_8026B010
/* 8026AFDC  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8026AFE0  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8026AFE4  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8026AFE8  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 8026AFEC  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AFF0  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AFF4  4B FF D8 A1 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AFF8  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026AFFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B000  4C 40 13 82 */	cror 2, 0, 2
/* 8026B004  40 82 00 0C */	bne lbl_8026B010
/* 8026B008  38 60 00 01 */	li r3, 1
/* 8026B00C  48 00 00 78 */	b lbl_8026B084
lbl_8026B010:
/* 8026B010  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026B014  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026B018  4C 41 13 82 */	cror 2, 1, 2
/* 8026B01C  40 82 00 64 */	bne lbl_8026B080
/* 8026B020  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8026B024  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8026B028  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 8026B02C  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 8026B030  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026B034  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026B038  4B FF D8 5D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026B03C  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026B040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B044  4C 41 13 82 */	cror 2, 1, 2
/* 8026B048  40 82 00 38 */	bne lbl_8026B080
/* 8026B04C  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8026B050  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8026B054  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8026B058  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 8026B05C  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026B060  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026B064  4B FF D8 31 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026B068  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026B06C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B070  4C 41 13 82 */	cror 2, 1, 2
/* 8026B074  40 82 00 0C */	bne lbl_8026B080
/* 8026B078  38 60 00 01 */	li r3, 1
/* 8026B07C  48 00 00 08 */	b lbl_8026B084
lbl_8026B080:
/* 8026B080  38 60 00 00 */	li r3, 0
lbl_8026B084:
/* 8026B084  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026B088  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026B08C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026B090  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026B094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026B098  7C 08 03 A6 */	mtlr r0
/* 8026B09C  38 21 00 30 */	addi r1, r1, 0x30
/* 8026B0A0  4E 80 00 20 */	blr 
