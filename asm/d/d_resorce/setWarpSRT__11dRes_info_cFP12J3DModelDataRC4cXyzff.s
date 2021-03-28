lbl_8003AD08:
/* 8003AD08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003AD0C  7C 08 02 A6 */	mflr r0
/* 8003AD10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003AD14  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8003AD18  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8003AD1C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8003AD20  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8003AD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003AD28  93 C1 00 08 */	stw r30, 8(r1)
/* 8003AD2C  7C 9E 23 78 */	mr r30, r4
/* 8003AD30  FF C0 08 90 */	fmr f30, f1
/* 8003AD34  FF E0 10 90 */	fmr f31, f2
/* 8003AD38  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8003AD3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8003AD40  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 8003AD44  7F E3 FB 78 */	mr r3, r31
/* 8003AD48  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003AD4C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8003AD50  7D 89 03 A6 */	mtctr r12
/* 8003AD54  4E 80 04 21 */	bctrl 
/* 8003AD58  7C 64 1B 78 */	mr r4, r3
/* 8003AD5C  7F E3 FB 78 */	mr r3, r31
/* 8003AD60  38 84 FF FF */	addi r4, r4, -1
/* 8003AD64  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003AD68  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8003AD6C  7D 89 03 A6 */	mtctr r12
/* 8003AD70  4E 80 04 21 */	bctrl 
/* 8003AD74  7C 7F 1B 78 */	mr r31, r3
/* 8003AD78  D3 C3 00 1C */	stfs f30, 0x1c(r3)
/* 8003AD7C  D3 E3 00 20 */	stfs f31, 0x20(r3)
/* 8003AD80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8003AD84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8003AD88  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8003AD8C  FC 20 00 50 */	fneg f1, f0
/* 8003AD90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8003AD94  FC 40 00 50 */	fneg f2, f0
/* 8003AD98  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8003AD9C  FC 60 00 50 */	fneg f3, f0
/* 8003ADA0  48 30 BB 49 */	bl PSMTXTrans
/* 8003ADA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003ADA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003ADAC  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8003ADB0  7C 00 07 74 */	extsb r0, r0
/* 8003ADB4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8003ADB8  7C 63 02 14 */	add r3, r3, r0
/* 8003ADBC  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8003ADC0  A8 83 02 32 */	lha r4, 0x232(r3)
/* 8003ADC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8003ADC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8003ADCC  4B FD 16 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 8003ADD0  3C 60 80 38 */	lis r3, l_texMtxInfo@ha
/* 8003ADD4  38 63 98 40 */	addi r3, r3, l_texMtxInfo@l
/* 8003ADD8  38 63 00 24 */	addi r3, r3, 0x24
/* 8003ADDC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8003ADE0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8003ADE4  38 BF 00 24 */	addi r5, r31, 0x24
/* 8003ADE8  48 30 B6 FD */	bl PSMTXConcat
/* 8003ADEC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8003ADF0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8003ADF4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8003ADF8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8003ADFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003AE00  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003AE04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003AE08  7C 08 03 A6 */	mtlr r0
/* 8003AE0C  38 21 00 30 */	addi r1, r1, 0x30
/* 8003AE10  4E 80 00 20 */	blr 
