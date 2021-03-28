lbl_8027CE64:
/* 8027CE64  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8027CE68  7C 08 02 A6 */	mflr r0
/* 8027CE6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8027CE70  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8027CE74  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8027CE78  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8027CE7C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8027CE80  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8027CE84  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8027CE88  7C 7E 1B 78 */	mr r30, r3
/* 8027CE8C  7C BF 2B 78 */	mr r31, r5
/* 8027CE90  38 64 00 A8 */	addi r3, r4, 0xa8
/* 8027CE94  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8027CE98  38 A1 00 08 */	addi r5, r1, 8
/* 8027CE9C  48 0C 9F B1 */	bl PSMTXMultVecSR
/* 8027CEA0  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027CEA4  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027CEA8  C3 C1 00 10 */	lfs f30, 0x10(r1)
/* 8027CEAC  10 9E 07 BA */	ps_madd f4, f30, f30, f0
/* 8027CEB0  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027CEB4  C0 22 B9 40 */	lfs f1, lit_2459(r2)
/* 8027CEB8  3C 60 80 45 */	lis r3, __float_epsilon@ha
/* 8027CEBC  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)
/* 8027CEC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027CEC4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027CEC8  4C 40 13 82 */	cror 2, 0, 2
/* 8027CECC  41 82 00 5C */	beq lbl_8027CF28
/* 8027CED0  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027CED4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027CED8  4C 40 13 82 */	cror 2, 0, 2
/* 8027CEDC  40 82 00 0C */	bne lbl_8027CEE8
/* 8027CEE0  FF E0 20 90 */	fmr f31, f4
/* 8027CEE4  48 00 00 2C */	b lbl_8027CF10
lbl_8027CEE8:
/* 8027CEE8  FC 60 20 34 */	frsqrte f3, f4
/* 8027CEEC  FC 60 18 18 */	frsp f3, f3
/* 8027CEF0  C0 02 B9 44 */	lfs f0, lit_2460(r2)
/* 8027CEF4  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027CEF8  C0 22 B9 48 */	lfs f1, lit_2461(r2)
/* 8027CEFC  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027CF00  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027CF04  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027CF08  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027CF0C  FF E0 00 90 */	fmr f31, f0
lbl_8027CF10:
/* 8027CF10  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027CF14  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 8027CF18  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027CF1C  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 8027CF20  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027CF24  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_8027CF28:
/* 8027CF28  38 61 00 14 */	addi r3, r1, 0x14
/* 8027CF2C  38 81 00 08 */	addi r4, r1, 8
/* 8027CF30  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8027CF34  48 0C 99 45 */	bl PSMTXRotAxisRad
/* 8027CF38  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8027CF3C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8027CF40  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8027CF44  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8027CF48  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 8027CF4C  D0 5E 00 18 */	stfs f2, 0x18(r30)
/* 8027CF50  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8027CF54  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8027CF58  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8027CF5C  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8027CF60  D0 3E 00 20 */	stfs f1, 0x20(r30)
/* 8027CF64  D0 5E 00 24 */	stfs f2, 0x24(r30)
/* 8027CF68  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8027CF6C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8027CF70  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8027CF74  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8027CF78  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 8027CF7C  D0 5E 00 30 */	stfs f2, 0x30(r30)
/* 8027CF80  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8027CF84  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8027CF88  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8027CF8C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8027CF90  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8027CF94  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8027CF98  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8027CF9C  7C 08 03 A6 */	mtlr r0
/* 8027CFA0  38 21 00 70 */	addi r1, r1, 0x70
/* 8027CFA4  4E 80 00 20 */	blr 
