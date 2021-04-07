lbl_80469EDC:
/* 80469EDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80469EE0  7C 08 02 A6 */	mflr r0
/* 80469EE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80469EE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80469EEC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80469EF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80469EF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80469EF8  7C 7E 1B 78 */	mr r30, r3
/* 80469EFC  3C 60 80 47 */	lis r3, lit_3681@ha /* 0x8046AFC4@ha */
/* 80469F00  3B E3 AF C4 */	addi r31, r3, lit_3681@l /* 0x8046AFC4@l */
/* 80469F04  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80469F08  28 00 00 00 */	cmplwi r0, 0
/* 80469F0C  41 82 01 64 */	beq lbl_8046A070
/* 80469F10  C3 FF 00 88 */	lfs f31, 0x88(r31)
/* 80469F14  88 1E 0A 5A */	lbz r0, 0xa5a(r30)
/* 80469F18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80469F1C  41 82 00 08 */	beq lbl_80469F24
/* 80469F20  C3 FF 00 B0 */	lfs f31, 0xb0(r31)
lbl_80469F24:
/* 80469F24  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80469F28  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80469F2C  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80469F30  38 60 00 00 */	li r3, 0
/* 80469F34  4B E0 6F 29 */	bl MtxTrans__FfffUc
/* 80469F38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80469F3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80469F40  80 63 00 00 */	lwz r3, 0(r3)
/* 80469F44  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80469F48  4B BA 24 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 80469F4C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80469F50  FC 40 F8 90 */	fmr f2, f31
/* 80469F54  FC 60 08 90 */	fmr f3, f1
/* 80469F58  38 60 00 01 */	li r3, 1
/* 80469F5C  4B E0 6F 01 */	bl MtxTrans__FfffUc
/* 80469F60  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80469F64  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80469F68  80 63 00 00 */	lwz r3, 0(r3)
/* 80469F6C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80469F70  4B BA 24 2D */	bl mDoMtx_XrotM__FPA4_fs
/* 80469F74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80469F78  FC 40 F8 50 */	fneg f2, f31
/* 80469F7C  FC 60 08 90 */	fmr f3, f1
/* 80469F80  38 60 00 01 */	li r3, 1
/* 80469F84  4B E0 6E D9 */	bl MtxTrans__FfffUc
/* 80469F88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80469F8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80469F90  80 63 00 00 */	lwz r3, 0(r3)
/* 80469F94  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80469F98  38 84 00 24 */	addi r4, r4, 0x24
/* 80469F9C  4B ED C5 15 */	bl PSMTXCopy
/* 80469FA0  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 80469FA4  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80469FA8  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80469FAC  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80469FB0  C0 1E 06 3C */	lfs f0, 0x63c(r30)
/* 80469FB4  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80469FB8  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80469FBC  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 80469FC0  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 80469FC4  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 80469FC8  C0 1E 05 F0 */	lfs f0, 0x5f0(r30)
/* 80469FCC  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 80469FD0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80469FD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80469FD8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80469FDC  88 1E 0A 5A */	lbz r0, 0xa5a(r30)
/* 80469FE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80469FE4  41 82 00 10 */	beq lbl_80469FF4
/* 80469FE8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80469FEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80469FF0  48 00 00 0C */	b lbl_80469FFC
lbl_80469FF4:
/* 80469FF4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80469FF8  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80469FFC:
/* 80469FFC  38 61 00 08 */	addi r3, r1, 8
/* 8046A000  38 9E 06 34 */	addi r4, r30, 0x634
/* 8046A004  4B E0 6E E9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8046A008  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 8046A00C  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8046A010  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 8046A014  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8046A018  C0 1E 06 3C */	lfs f0, 0x63c(r30)
/* 8046A01C  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8046A020  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 8046A024  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8046A028  EC 01 00 2A */	fadds f0, f1, f0
/* 8046A02C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8046A030  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8046A034  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8046A038  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8046A03C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8046A040  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8046A044  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8046A048  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8046A04C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8046A050  EC 01 00 2A */	fadds f0, f1, f0
/* 8046A054  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8046A058  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8046A05C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8046A060  38 61 00 08 */	addi r3, r1, 8
/* 8046A064  38 9E 05 E8 */	addi r4, r30, 0x5e8
/* 8046A068  4B E0 6E 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8046A06C  48 00 00 1C */	b lbl_8046A088
lbl_8046A070:
/* 8046A070  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8046A074  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 8046A078  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046A07C  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 8046A080  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8046A084  D0 1E 06 3C */	stfs f0, 0x63c(r30)
lbl_8046A088:
/* 8046A088  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8046A08C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8046A090  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046A094  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046A098  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046A09C  7C 08 03 A6 */	mtlr r0
/* 8046A0A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8046A0A4  4E 80 00 20 */	blr 
