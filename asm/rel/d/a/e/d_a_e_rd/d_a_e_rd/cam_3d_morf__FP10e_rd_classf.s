lbl_80512F18:
/* 80512F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80512F1C  7C 08 02 A6 */	mflr r0
/* 80512F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80512F24  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80512F28  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80512F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80512F30  7C 7F 1B 78 */	mr r31, r3
/* 80512F34  FF E0 08 90 */	fmr f31, f1
/* 80512F38  38 7F 12 B4 */	addi r3, r31, 0x12b4
/* 80512F3C  C0 3F 12 CC */	lfs f1, 0x12cc(r31)
/* 80512F40  FC 40 F8 90 */	fmr f2, f31
/* 80512F44  C0 7F 12 E4 */	lfs f3, 0x12e4(r31)
/* 80512F48  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 80512F4C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80512F50  4B D5 CA ED */	bl cLib_addCalc2__FPffff
/* 80512F54  38 7F 12 B8 */	addi r3, r31, 0x12b8
/* 80512F58  C0 3F 12 D0 */	lfs f1, 0x12d0(r31)
/* 80512F5C  FC 40 F8 90 */	fmr f2, f31
/* 80512F60  C0 7F 12 E8 */	lfs f3, 0x12e8(r31)
/* 80512F64  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 80512F68  EC 63 00 32 */	fmuls f3, f3, f0
/* 80512F6C  4B D5 CA D1 */	bl cLib_addCalc2__FPffff
/* 80512F70  38 7F 12 BC */	addi r3, r31, 0x12bc
/* 80512F74  C0 3F 12 D4 */	lfs f1, 0x12d4(r31)
/* 80512F78  FC 40 F8 90 */	fmr f2, f31
/* 80512F7C  C0 7F 12 EC */	lfs f3, 0x12ec(r31)
/* 80512F80  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 80512F84  EC 63 00 32 */	fmuls f3, f3, f0
/* 80512F88  4B D5 CA B5 */	bl cLib_addCalc2__FPffff
/* 80512F8C  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 80512F90  C0 3F 12 C0 */	lfs f1, 0x12c0(r31)
/* 80512F94  FC 40 F8 90 */	fmr f2, f31
/* 80512F98  C0 7F 12 D8 */	lfs f3, 0x12d8(r31)
/* 80512F9C  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 80512FA0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80512FA4  4B D5 CA 99 */	bl cLib_addCalc2__FPffff
/* 80512FA8  38 7F 12 AC */	addi r3, r31, 0x12ac
/* 80512FAC  C0 3F 12 C4 */	lfs f1, 0x12c4(r31)
/* 80512FB0  FC 40 F8 90 */	fmr f2, f31
/* 80512FB4  C0 7F 12 DC */	lfs f3, 0x12dc(r31)
/* 80512FB8  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 80512FBC  EC 63 00 32 */	fmuls f3, f3, f0
/* 80512FC0  4B D5 CA 7D */	bl cLib_addCalc2__FPffff
/* 80512FC4  38 7F 12 B0 */	addi r3, r31, 0x12b0
/* 80512FC8  C0 3F 12 C8 */	lfs f1, 0x12c8(r31)
/* 80512FCC  FC 40 F8 90 */	fmr f2, f31
/* 80512FD0  C0 7F 12 E0 */	lfs f3, 0x12e0(r31)
/* 80512FD4  C0 1F 13 0C */	lfs f0, 0x130c(r31)
/* 80512FD8  EC 63 00 32 */	fmuls f3, f3, f0
/* 80512FDC  4B D5 CA 61 */	bl cLib_addCalc2__FPffff
/* 80512FE0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80512FE4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80512FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80512FEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80512FF0  7C 08 03 A6 */	mtlr r0
/* 80512FF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80512FF8  4E 80 00 20 */	blr 
