lbl_80C50F98:
/* 80C50F98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C50F9C  7C 08 02 A6 */	mflr r0
/* 80C50FA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C50FA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C50FA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C50FAC  7C 7E 1B 78 */	mr r30, r3
/* 80C50FB0  3C 80 80 C5 */	lis r4, M_attr__10daObjLdy_c@ha /* 0x80C52000@ha */
/* 80C50FB4  3B E4 20 00 */	addi r31, r4, M_attr__10daObjLdy_c@l /* 0x80C52000@l */
/* 80C50FB8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C50FBC  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80C50FC0  FC 60 08 90 */	fmr f3, f1
/* 80C50FC4  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80C50FC8  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 80C50FCC  FC C0 20 90 */	fmr f6, f4
/* 80C50FD0  4B 3C 95 79 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C50FD4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C50FD8  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 80C50FDC  38 BE 07 20 */	addi r5, r30, 0x720
/* 80C50FE0  38 C0 00 00 */	li r6, 0
/* 80C50FE4  38 9F 00 00 */	addi r4, r31, 0
/* 80C50FE8  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 80C50FEC  3C 60 43 30 */	lis r3, 0x4330
/* 80C50FF0  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80C50FF4  38 00 00 03 */	li r0, 3
/* 80C50FF8  7C 09 03 A6 */	mtctr r0
lbl_80C50FFC:
/* 80C50FFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C51000  D0 05 00 00 */	stfs f0, 0(r5)
/* 80C51004  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C51008  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C5100C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C51010  D0 05 00 08 */	stfs f0, 8(r5)
/* 80C51014  C0 65 00 04 */	lfs f3, 4(r5)
/* 80C51018  38 06 00 01 */	addi r0, r6, 1
/* 80C5101C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C51020  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C51024  90 61 00 08 */	stw r3, 8(r1)
/* 80C51028  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C5102C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C51030  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C51034  EC 03 00 2A */	fadds f0, f3, f0
/* 80C51038  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C5103C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C51040  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80C51044  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C51048  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80C5104C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C51050  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 80C51054  38 C6 00 01 */	addi r6, r6, 1
/* 80C51058  38 A5 00 38 */	addi r5, r5, 0x38
/* 80C5105C  42 00 FF A0 */	bdnz lbl_80C50FFC
/* 80C51060  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C51064  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C51068  7F C3 F3 78 */	mr r3, r30
/* 80C5106C  48 00 00 1D */	bl initBaseMtx__10daObjLdy_cFv
/* 80C51070  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C51074  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C51078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5107C  7C 08 03 A6 */	mtlr r0
/* 80C51080  38 21 00 20 */	addi r1, r1, 0x20
/* 80C51084  4E 80 00 20 */	blr 
