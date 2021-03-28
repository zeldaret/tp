lbl_80269E18:
/* 80269E18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80269E1C  7C 08 02 A6 */	mflr r0
/* 80269E20  90 01 00 44 */	stw r0, 0x44(r1)
/* 80269E24  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80269E28  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80269E2C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80269E30  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80269E34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80269E38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80269E3C  7C 7E 1B 78 */	mr r30, r3
/* 80269E40  7C 9F 23 78 */	mr r31, r4
/* 80269E44  FF C0 08 90 */	fmr f30, f1
/* 80269E48  C0 03 00 00 */	lfs f0, 0(r3)
/* 80269E4C  FC 00 02 10 */	fabs f0, f0
/* 80269E50  FC 20 00 18 */	frsp f1, f0
/* 80269E54  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80269E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80269E5C  40 80 00 0C */	bge lbl_80269E68
/* 80269E60  38 60 00 00 */	li r3, 0
/* 80269E64  48 00 01 30 */	b lbl_80269F94
lbl_80269E68:
/* 80269E68  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 80269E6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80269E70  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80269E74  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80269E78  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80269E7C  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 80269E80  C0 BE 00 30 */	lfs f5, 0x30(r30)
/* 80269E84  C0 DE 00 34 */	lfs f6, 0x34(r30)
/* 80269E88  C0 FF 00 04 */	lfs f7, 4(r31)
/* 80269E8C  C1 1F 00 08 */	lfs f8, 8(r31)
/* 80269E90  4B FF FE D5 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 80269E94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80269E98  40 82 00 0C */	bne lbl_80269EA4
/* 80269E9C  38 60 00 00 */	li r3, 0
/* 80269EA0  48 00 00 F4 */	b lbl_80269F94
lbl_80269EA4:
/* 80269EA4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80269EA8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80269EAC  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80269EB0  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 80269EB4  C0 BF 00 04 */	lfs f5, 4(r31)
/* 80269EB8  C0 DF 00 08 */	lfs f6, 8(r31)
/* 80269EBC  4B FF E9 D9 */	bl cM3d_VectorProduct2d__Fffffff
/* 80269EC0  FF E0 08 90 */	fmr f31, f1
/* 80269EC4  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80269EC8  4C 40 13 82 */	cror 2, 0, 2
/* 80269ECC  40 82 00 5C */	bne lbl_80269F28
/* 80269ED0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80269ED4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80269ED8  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 80269EDC  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 80269EE0  C0 BF 00 04 */	lfs f5, 4(r31)
/* 80269EE4  C0 DF 00 08 */	lfs f6, 8(r31)
/* 80269EE8  4B FF E9 AD */	bl cM3d_VectorProduct2d__Fffffff
/* 80269EEC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80269EF0  4C 40 13 82 */	cror 2, 0, 2
/* 80269EF4  40 82 00 34 */	bne lbl_80269F28
/* 80269EF8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80269EFC  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80269F00  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80269F04  C0 9E 00 1C */	lfs f4, 0x1c(r30)
/* 80269F08  C0 BF 00 04 */	lfs f5, 4(r31)
/* 80269F0C  C0 DF 00 08 */	lfs f6, 8(r31)
/* 80269F10  4B FF E9 85 */	bl cM3d_VectorProduct2d__Fffffff
/* 80269F14  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80269F18  4C 40 13 82 */	cror 2, 0, 2
/* 80269F1C  40 82 00 0C */	bne lbl_80269F28
/* 80269F20  38 60 00 01 */	li r3, 1
/* 80269F24  48 00 00 70 */	b lbl_80269F94
lbl_80269F28:
/* 80269F28  FF C0 F0 50 */	fneg f30, f30
/* 80269F2C  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80269F30  4C 41 13 82 */	cror 2, 1, 2
/* 80269F34  40 82 00 5C */	bne lbl_80269F90
/* 80269F38  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80269F3C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80269F40  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 80269F44  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 80269F48  C0 BF 00 04 */	lfs f5, 4(r31)
/* 80269F4C  C0 DF 00 08 */	lfs f6, 8(r31)
/* 80269F50  4B FF E9 45 */	bl cM3d_VectorProduct2d__Fffffff
/* 80269F54  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80269F58  4C 41 13 82 */	cror 2, 1, 2
/* 80269F5C  40 82 00 34 */	bne lbl_80269F90
/* 80269F60  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80269F64  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80269F68  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80269F6C  C0 9E 00 1C */	lfs f4, 0x1c(r30)
/* 80269F70  C0 BF 00 04 */	lfs f5, 4(r31)
/* 80269F74  C0 DF 00 08 */	lfs f6, 8(r31)
/* 80269F78  4B FF E9 1D */	bl cM3d_VectorProduct2d__Fffffff
/* 80269F7C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80269F80  4C 41 13 82 */	cror 2, 1, 2
/* 80269F84  40 82 00 0C */	bne lbl_80269F90
/* 80269F88  38 60 00 01 */	li r3, 1
/* 80269F8C  48 00 00 08 */	b lbl_80269F94
lbl_80269F90:
/* 80269F90  38 60 00 00 */	li r3, 0
lbl_80269F94:
/* 80269F94  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80269F98  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80269F9C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80269FA0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80269FA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80269FA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80269FAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80269FB0  7C 08 03 A6 */	mtlr r0
/* 80269FB4  38 21 00 40 */	addi r1, r1, 0x40
/* 80269FB8  4E 80 00 20 */	blr 
