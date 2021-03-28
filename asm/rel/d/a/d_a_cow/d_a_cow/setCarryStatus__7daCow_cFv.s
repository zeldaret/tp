lbl_80658B10:
/* 80658B10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80658B14  7C 08 02 A6 */	mflr r0
/* 80658B18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80658B1C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80658B20  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80658B24  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80658B28  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80658B2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80658B30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80658B34  7C 7E 1B 78 */	mr r30, r3
/* 80658B38  3C 60 80 66 */	lis r3, lit_3987@ha
/* 80658B3C  3B E3 2D B0 */	addi r31, r3, lit_3987@l
/* 80658B40  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 80658B44  C3 DF 00 34 */	lfs f30, 0x34(r31)
/* 80658B48  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80658B4C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80658B50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80658B54  4C 41 13 82 */	cror 2, 1, 2
/* 80658B58  40 82 00 0C */	bne lbl_80658B64
/* 80658B5C  C3 FF 00 38 */	lfs f31, 0x38(r31)
/* 80658B60  C3 DF 00 3C */	lfs f30, 0x3c(r31)
lbl_80658B64:
/* 80658B64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80658B68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80658B6C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80658B70  7C 00 00 D0 */	neg r0, r0
/* 80658B74  7C 04 07 34 */	extsh r4, r0
/* 80658B78  4B 9B 38 64 */	b mDoMtx_YrotS__FPA4_fs
/* 80658B7C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80658B80  FC 20 00 50 */	fneg f1, f0
/* 80658B84  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80658B88  FC 40 00 50 */	fneg f2, f0
/* 80658B8C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80658B90  FC 60 00 50 */	fneg f3, f0
/* 80658B94  4B 9B 42 08 */	b transM__14mDoMtx_stack_cFfff
/* 80658B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80658B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80658BA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80658BA4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80658BA8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80658BAC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80658BB0  38 A1 00 08 */	addi r5, r1, 8
/* 80658BB4  4B CE E1 B8 */	b PSMTXMultVec
/* 80658BB8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80658BBC  FC 00 02 10 */	fabs f0, f0
/* 80658BC0  FC 00 00 18 */	frsp f0, f0
/* 80658BC4  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80658BC8  40 80 00 28 */	bge lbl_80658BF0
/* 80658BCC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80658BD0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80658BD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80658BD8  40 81 00 18 */	ble lbl_80658BF0
/* 80658BDC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80658BE0  40 80 00 10 */	bge lbl_80658BF0
/* 80658BE4  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80658BE8  60 00 00 10 */	ori r0, r0, 0x10
/* 80658BEC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80658BF0:
/* 80658BF0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80658BF4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80658BF8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80658BFC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80658C00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80658C04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80658C08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80658C0C  7C 08 03 A6 */	mtlr r0
/* 80658C10  38 21 00 40 */	addi r1, r1, 0x40
/* 80658C14  4E 80 00 20 */	blr 
