lbl_80D42D2C:
/* 80D42D2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D42D30  7C 08 02 A6 */	mflr r0
/* 80D42D34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D42D38  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D42D3C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D42D40  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80D42D44  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80D42D48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D42D4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D42D50  7C 7E 1B 78 */	mr r30, r3
/* 80D42D54  3C 60 80 D4 */	lis r3, l_DATA@ha
/* 80D42D58  3B E3 3D 88 */	addi r31, r3, l_DATA@l
/* 80D42D5C  38 9F 00 88 */	addi r4, r31, 0x88
/* 80D42D60  88 1E 07 2D */	lbz r0, 0x72d(r30)
/* 80D42D64  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D42D68  7C 64 02 14 */	add r3, r4, r0
/* 80D42D6C  C0 43 00 08 */	lfs f2, 8(r3)
/* 80D42D70  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D42D74  7C 04 04 2E */	lfsx f0, r4, r0
/* 80D42D78  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D42D7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D42D80  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80D42D84  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D42D88  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D42D8C  28 00 00 FF */	cmplwi r0, 0xff
/* 80D42D90  40 82 00 08 */	bne lbl_80D42D98
/* 80D42D94  38 00 00 00 */	li r0, 0
lbl_80D42D98:
/* 80D42D98  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D42D9C  2C 00 00 01 */	cmpwi r0, 1
/* 80D42DA0  41 82 00 30 */	beq lbl_80D42DD0
/* 80D42DA4  40 80 00 10 */	bge lbl_80D42DB4
/* 80D42DA8  2C 00 00 00 */	cmpwi r0, 0
/* 80D42DAC  40 80 00 14 */	bge lbl_80D42DC0
/* 80D42DB0  48 00 00 74 */	b lbl_80D42E24
lbl_80D42DB4:
/* 80D42DB4  2C 00 00 03 */	cmpwi r0, 3
/* 80D42DB8  40 80 00 6C */	bge lbl_80D42E24
/* 80D42DBC  48 00 00 4C */	b lbl_80D42E08
lbl_80D42DC0:
/* 80D42DC0  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80D42DC4  38 7F 00 00 */	addi r3, r31, 0
/* 80D42DC8  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 80D42DCC  48 00 00 58 */	b lbl_80D42E24
lbl_80D42DD0:
/* 80D42DD0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80D42DD4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80D42DD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D42DDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D42DE0  38 7F 00 00 */	addi r3, r31, 0
/* 80D42DE4  C0 63 00 04 */	lfs f3, 4(r3)
/* 80D42DE8  FF E0 18 90 */	fmr f31, f3
/* 80D42DEC  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80D42DF0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D42DF4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D42DF8  EC 00 18 24 */	fdivs f0, f0, f3
/* 80D42DFC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D42E00  EF C2 00 2A */	fadds f30, f2, f0
/* 80D42E04  48 00 00 20 */	b lbl_80D42E24
lbl_80D42E08:
/* 80D42E08  38 7F 00 00 */	addi r3, r31, 0
/* 80D42E0C  C0 43 00 08 */	lfs f2, 8(r3)
/* 80D42E10  FF E0 10 90 */	fmr f31, f2
/* 80D42E14  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D42E18  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D42E1C  EC 00 10 24 */	fdivs f0, f0, f2
/* 80D42E20  EF C1 00 24 */	fdivs f30, f1, f0
lbl_80D42E24:
/* 80D42E24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D42E28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D42E2C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D42E30  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D42E34  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D42E38  4B 60 3A B0 */	b PSMTXTrans
/* 80D42E3C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D42E40  4B 2C A0 94 */	b XYZrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D42E44  FC 20 F8 90 */	fmr f1, f31
/* 80D42E48  FC 40 F8 90 */	fmr f2, f31
/* 80D42E4C  FC 60 F8 90 */	fmr f3, f31
/* 80D42E50  4B 2C 9F E8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D42E54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D42E58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D42E5C  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80D42E60  38 84 00 24 */	addi r4, r4, 0x24
/* 80D42E64  4B 60 36 4C */	b PSMTXCopy
/* 80D42E68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D42E6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D42E70  38 81 00 08 */	addi r4, r1, 8
/* 80D42E74  7C 85 23 78 */	mr r5, r4
/* 80D42E78  4B 60 3E F4 */	b PSMTXMultVec
/* 80D42E7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D42E80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D42E84  38 9E 05 74 */	addi r4, r30, 0x574
/* 80D42E88  4B 60 36 28 */	b PSMTXCopy
/* 80D42E8C  38 7E 07 04 */	addi r3, r30, 0x704
/* 80D42E90  38 81 00 08 */	addi r4, r1, 8
/* 80D42E94  4B 52 C3 48 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D42E98  38 7E 07 04 */	addi r3, r30, 0x704
/* 80D42E9C  FC 20 F0 90 */	fmr f1, f30
/* 80D42EA0  4B 52 C3 58 */	b SetH__8cM3dGCylFf
/* 80D42EA4  38 7E 07 04 */	addi r3, r30, 0x704
/* 80D42EA8  38 9F 00 00 */	addi r4, r31, 0
/* 80D42EAC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80D42EB0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80D42EB4  4B 52 C3 4C */	b SetR__8cM3dGCylFf
/* 80D42EB8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D42EBC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D42EC0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80D42EC4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80D42EC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D42ECC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D42ED0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D42ED4  7C 08 03 A6 */	mtlr r0
/* 80D42ED8  38 21 00 40 */	addi r1, r1, 0x40
/* 80D42EDC  4E 80 00 20 */	blr 
